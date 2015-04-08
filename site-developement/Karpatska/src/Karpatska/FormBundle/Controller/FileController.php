<?php

namespace Karpatska\FormBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Karpatska\FormBundle\Entity\File;
use Karpatska\FormBundle\Form\FileUploadType;
use Symfony\Component\HttpFoundation\File\UploadedFile;

class FileController extends Controller
{
    /**
     * @Route("company/file/upload/{formId}", name="_file_upload")
     * @Template()
     */
    public function fileUploadAction(Request $request, $formId)
    {
        $i = 0;
        $companyIco = $this->get('security.context')->getToken()->getUsername();
        $company = $this->getDoctrine()->getRepository("KarpatskaFormBundle:Company")->findOneByIco($companyIco);
        $formObj = $this->getDoctrine()->getRepository('KarpatskaFormBundle:Form')->find($formId);

        $form = $this->createForm(new FileUploadType());
        $form->handleRequest($request);
        //$fileAttr = array();

        if($form->isValid()){
            $em = $this->getDoctrine()->getManager();

            foreach($_FILES['karpatska_form_bundle_file_upload'] as $tmp_name){
                $file = new File();
                $i++;
                $fileAttr = array(
                    'name' => $_FILES['karpatska_form_bundle_file_upload']['name']['file_'.$i],
                    'type' => $_FILES['karpatska_form_bundle_file_upload']['type']['file_'.$i],
                    'tmp_name' => $_FILES['karpatska_form_bundle_file_upload']['tmp_name']['file_'.$i],
                    'error' => $_FILES['karpatska_form_bundle_file_upload']['error']['file_'.$i],
                    'size' => $_FILES['karpatska_form_bundle_file_upload']['size']['file_'.$i]
                );

                $uploadedFile = new UploadedFile($fileAttr['tmp_name'], $fileAttr['name'].$this->generateRandomName($fileAttr['name']), $fileAttr['type'], $fileAttr['size'], $fileAttr['error'] = null, $test = null);
                $file->setFile($uploadedFile);
                $file->setCompany($company);
                $file->setName($fileAttr['name']);
                $file->setForm($formObj);
                $em->persist($file);
                $file->upload($companyIco);
            }
            $em->flush();
            $recipient = $company->getReprEmail();
            $this->sendEmail($recipient);

            return $this->redirectToRoute("company/index");

        }

        return array(
                'form' => $form->createView(),
                'ico' => $companyIco
            );
    }

    /**
     * @param $filename
     * @return string
     */
    public function generateRandomName($filename){
        $name = md5(microtime()).'.'.pathinfo($filename, PATHINFO_EXTENSION);
        return $name;
    }

    public function sendEmail($recipient){
        $email = \Swift_Message::newInstance()
            ->setSubject('Žiadosť o grant - Karpatská nadácia')
            ->setFrom('granty@karpatskanadacia.sk')
            ->setTo($recipient)
            ->setBody("Žiadosť o grant ste úspešne podali na spracovanie.");
        $this->get('mailer')->send($email);

    }

}
