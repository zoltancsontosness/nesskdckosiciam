<?php

namespace Karpatska\FormBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Karpatska\FormBundle\Form\FileUploadType;

class FileController extends Controller
{
    /**
     * @Route("company/file/upload")
     * @Template()
     */
    public function fileUploadAction(Request $request)
    {
        $companyIco = $this->get('security.context')->getToken()->getUsername();

        $form = $this->createForm(new FileUploadType());
        $form->handleRequest($request);

        return array(
                'form' => $form->createView(),
                'ico' => $companyIco
            );
    }

}
