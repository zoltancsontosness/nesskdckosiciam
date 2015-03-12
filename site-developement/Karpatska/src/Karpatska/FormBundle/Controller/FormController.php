<?php

namespace Karpatska\FormBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Karpatska\FormBundle\Entity\RealAnswer;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;

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

        if($_POST)
        {
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

}
