<?php

namespace Karpatska\FormBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Karpatska\FormBundle\Entity\File;

class FileController extends Controller
{
    /**
     * @Route("company/file/upload")
     * @Template()
     */
    public function fileUploadAction(Request $request)
    {
        $companyIco = $this->get('security.context')->getToken()->getUsername();
        $file = new File();

        $form = $this->createForm(new FileUploadType(), $file);
        $form->handleRequest($request);

        if($form->isValid()){
            $em = $this->getDoctrine()->getManager();

            $em->persist($file);
            $em->flush();

            return $this->redirectToRoute("company/index");
        }

        return array(
                'form' => $form->createView(),
                'ico' => $companyIco
            );
    }

}
