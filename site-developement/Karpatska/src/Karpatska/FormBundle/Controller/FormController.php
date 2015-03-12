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
        var_dump($_POST);

        $form = $this->getDoctrine()->getRepository('KarpatskaFormBundle:Form')->find($formId);

        return array(
            'form' => $form
        );
    }

}
