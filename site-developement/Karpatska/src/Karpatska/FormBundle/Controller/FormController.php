<?php

namespace Karpatska\FormBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Request;

class FormController extends Controller
{
    /**
     * @Route("/form/{formId}", name="_form")
     * @Template()
     */
    public function formAction($formId, Request $request)
    {
        /*
        $em = $this->getDoctrine()->getManager();
        */
        if($_POST)
        {
            foreach($_POST as $questionId => $questionText) {
                $answer = new RealAnswer();
                $answer->setFormId($formId);
                $answer->setQuestionId($questionId);
                $answer->setQuestionText($questionText);
                //$answer->setComapnyId(); TODO vyber id prave lognuteho usera

                $em->persist($answer);
                $em->flush();
            }
        }

        $form = $this->getDoctrine()->getRepository('KarpatskaFormBundle:Form')->find($formId);

        return array(
            'form' => $form
        );
    }

}
