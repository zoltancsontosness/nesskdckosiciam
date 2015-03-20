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
use Symfony\Component\Validator\EmailValidator;

class FormController extends Controller
{
    /**
     * @Route("company/form/{formId}", name="_form")
     * @Template()
     */
    public function formAction($formId, Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $companyIco = $this->get('security.context')->getToken()->getUsername();
        $company = $this->getDoctrine()->getRepository("KarpatskaFormBundle:Company")->findOneByIco($companyIco);
        $questions = $this->getDoctrine()->getRepository("KarpatskaFormBundle:Question")->findByForm($formId);

        if($_POST)
        {
            var_dump($questions);
            die();
            foreach($_POST as $questionId => $answerText)
            {
                $answer = new RealAnswer();
                $answer->setFormId($formId);
                $answer->setQuestionId($questionId);
                $answer->setAnswerText($answerText);
                $answer->setCompanyId($company->getId());
                $em->persist($answer);
            }
            $em->flush();

            return new Response("Formulár bol odoslaný");
        }

        $form = $this->getDoctrine()->getRepository('KarpatskaFormBundle:Form')->find($formId);

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
