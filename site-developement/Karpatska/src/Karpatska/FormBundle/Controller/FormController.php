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

class FormController extends Controller
{
    /**
     * @Route("company/form/{formId}", name="_form")
     * @Template()
     */
    public function formAction($formId, Request $request)
    {
        $i = 0;
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
            foreach($questions as $question) {
                $qId = $question->getId();
                foreach($answersArray as $answerPair) {
                    if($qId === $answerPair['qid']) {
                        $validators = $question->getValidator();
                        $validators = explode(",",$validators);
                            foreach($validators as $validator) {
                                $i++;
                                if($validator !== "") {
                                    $validator = new $validator();
                                    if($validator instanceof Constraint) {
                                        $validator->message = "Chyba";
                                        $errors = $this->get('validator')->validateValue(
                                            $answerPair['answerText'],
                                            $validator
                                        );
                                        echo $i.$errors . "<br>";
                                    }
                                }
                            }
                    }

                }
            }
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


}
