<?php

namespace Karpatska\FormBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Karpatska\FormBundle\Entity\RealAnswer;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Serializer\Serializer;
use Symfony\Component\Serializer\Encoder\XmlEncoder;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Normalizer\GetSetMethodNormalizer;
use Symfony\Component\Validator\Constraints;
use Symfony\Component\Validator\Constraint;
//use Ps\PdfBundle\Annotation\Pdf;

class FormController extends Controller
{
    /**
     * @Route("company/form/{formId}", name="_form")
     * @Template("KarpatskaFormBundle:Form:form.html.twig")
     *
     *
     */
    public function formAction($formId, Request $request)
    {
        $validForm = true;
        $em = $this->getDoctrine()->getManager();
        $companyIco = $this->get('security.context')->getToken()->getUsername();
        $company = $this->getDoctrine()->getRepository("KarpatskaFormBundle:Company")->findOneByIco($companyIco);
        $form = $this->getDoctrine()->getRepository('KarpatskaFormBundle:Form')->find($formId);
        $questions = $this->getDoctrine()->getRepository("KarpatskaFormBundle:Question")->findBy(array('form' => $form));
        $answersArray = array();
        foreach($_POST as $questionId => $answer) {
            $answersArray[] = array('qid' => $questionId, 'answerText' => $answer);
        }

        if($_POST){
            $errors = array();
            $validatorLength = array();
            foreach($questions as $question) {
                $qId = $question->getId();
                foreach($answersArray as $answerPair) {
                    if($qId === $answerPair['qid']) {
                        $currQuestion = $this->getDoctrine()->getRepository("KarpatskaFormBundle:Question")->find($qId);
                        $validators = $question->getValidators();
                            foreach($validators as $validator) {
                                if($validator !== NULL) {
                                    $validatorName = "\\Symfony\\Component\\Validator\\Constraints\\";
                                    $validatorName .= $validator->getName();
                                    $validatorLength = array('min' => $validator->getMinLength(), 'max' => $validator->getMaxLength());
                                    if($validatorLength['min'] !== NULL || $validatorLength['max'] !== NULL){
                                        $validator = new $validatorName($validatorLength);
                                    }
                                    else{
                                        $validator = new $validatorName();
                                    }
                                    if($validator instanceof Constraint) {
                                        $errors[] = array(
                                            'message' => $this->get('validator')->validateValue(
                                                $answerPair['answerText'],
                                                $validator
                                            ),
                                            'question' => $currQuestion->getQuestionText()
                                        );
                                    }
                                }
                            }
                        foreach($errors as $error) {
                            if(strlen($error['message']) > 0) {
                                $validForm = false;
                            }
                        }
                        if($validForm) {
                            $answer = new RealAnswer();
                            $answer->setForm($form);
                            $answer->setQuestion($question);
                            $answer->setAnswerText($answerPair["answerText"]);
                            $answer->setCompany($company);
                            if($question->getJson() === "true"){
                                $answer->setJson("true");
                            }
                            $em->persist($answer);
                        }
                    }

                }
            }
            if($validForm === true){
                $em->flush();

               return $this->redirectToRoute("_build_pdf", array('formId' => $formId));
            }
            return array(
                'form' => $form,
                'errors' => $errors
            );
        }

        return array(
            'form' => $form
        );

    }

    /**
     * @Route("company/get", name="_company_get")
     * @Template()
     */
    public function getCompanyAction()
    {
        $companyIco = $this->get('security.context')->getToken()->getUsername();
        $company = $this->getDoctrine()->getRepository("KarpatskaFormBundle:Company")->findOneByIco($companyIco);

        $encoders = array(new XmlEncoder(), new JsonEncoder());
        $normalizers = array(new GetSetMethodNormalizer());
        $serializer = new Serializer($normalizers, $encoders);

        $jsonCompany = $serializer->serialize($company, 'json');

        return new Response($jsonCompany);
    }

    /**
     * @Route("company/build/pdf/{formId}", name="_build_pdf")
     * @Template()
     */
    public function buildPdfAction($formId)
    {
        $form = $this->getDoctrine()->getRepository('KarpatskaFormBundle:Form')->find($formId);
        $companyIco = $this->get('security.context')->getToken()->getUsername();
        $company = $this->getDoctrine()->getRepository("KarpatskaFormBundle:Company")->findOneByIco($companyIco);
        $realAnswers = $this->getDoctrine()->getRepository("KarpatskaFormBundle:RealAnswer")->findBy(array(
                'formId' => $formId,
                'companyId' => $company->getId()
        ));

        if($form){
            $file = $this->createPdf($form, $realAnswers);
            $this->saveFile($file,$company->getIco(),$formId);
        }

            return array(
                'form' => $form,
                'answers' => $realAnswers
            );
    }



    public function createPdf($form, $answers){
        $view = $this->renderView('KarpatskaFormBundle:Form:buildPdf.html.twig', array('form' => $form, 'answers' => $answers));
        $mpdfService = $this->get('tfox.mpdfport');

        return new Response($mpdfService->generatePdf($view),
            200,
            array(
                'Content-Type' => 'application/pdf',
                'Content-Disposition' => 'attachment; filename="form.pdf"'
            )
        );
    }

    /**
     * @param $file
     * @param $ico
     * @param $formId
     *
     * @return string
     *
     * This action save file and return path where the file is stored
     */
    public function saveFile($file, $ico, $formId)
    {
        $cwd = getcwd();
        if(!file_exists($cwd . "\\files\\" . $ico)){
            mkdir($cwd . "\\files\\" . $ico ,0700);
        }
        $route = $cwd . "\\files" . "\\" . $ico . "\\";
        $fileName = $ico . "_" . $formId . ".pdf";
        $openFile = fopen($route . $fileName, "w+");
        fwrite($openFile, $file);
        fclose($openFile);

        return $route . $fileName;
    }

}
