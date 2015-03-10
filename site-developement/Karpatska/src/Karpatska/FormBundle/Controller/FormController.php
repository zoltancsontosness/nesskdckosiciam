<?php

namespace Karpatska\FormBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class FormController extends Controller
{
    /**
     * @Route("/company/form/{formId}")
     * @Template()
     */
    public function formAction($formId)
    {

        $form = $this->getDoctrine()->getRepository('KarpatskaFormBundle:Form')->find($formId);
        return array(
                'form' => $form,
            );    }

}
