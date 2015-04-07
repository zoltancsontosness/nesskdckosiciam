<?php

namespace Karpatska\FormBundle\Controller;

use Karpatska\FormBundle\Entity\Company;
use Karpatska\FormBundle\Form\CompanyRegisterType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class CompanyController extends Controller
{
    /**
     * @Route("/register", name="_company_register")
     * @Template()
     */
    public function registerAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $company = new Company();
        $form = $this->createForm(new CompanyRegisterType(), $company);
        $form->handleRequest($request);

        if($form->isValid())
        {
            $em->persist($company);
            $em->flush();

            $this->sendEmail($company->getReprEmail(), $company->getIco());
            return $this->redirect($this->generateUrl('_company_login'));
        }

        return array(
            'form' => $form->createView()
        );
    }

   /**
    * @Route("/company", name="company/index")
    * @Template()
    */
    public function indexAction(Request $request)
    {
        $companyIco = $this->get('security.context')->getToken()->getUsername();
        $files = $this->getCompanyFiles($companyIco);
        $company = $this->getDoctrine()->getRepository("KarpatskaFormBundle:Company")->findOneByIco($companyIco);
        $isFilled = false;
        $filledForm = $this->getDoctrine()->getRepository("KarpatskaFormBundle:RealAnswer")->findBy(array('company' => $company->getId(), 'form' => 2));

        if($filledForm != null){
            $isFilled = true;
        }
        return array(
            'ico' => $companyIco,
            'files' => $files,
            'isFilled' => $isFilled
        );
    }

    /**
     * @param $recipient
     * @param $ico
     *
     * Send email for successfully registered organization
     */
    public function sendEmail($recipient, $ico){
        $email = \Swift_Message::newInstance()
            ->setSubject('Registrácia bola úspešná - Karpatská nadácia')
            ->setFrom('frank238238@gmail.com')
            ->setTo($recipient)
            ->setBody(
                $this->renderView(
                    'KarpatskaFormBundle:Email:registration.html.twig',
                    array('ico' => $ico)
                )
            );
        $this->get('mailer')->send($email);

    }


    /**
     * @param $ico
     *
     * @return array
     *
     * Get all company forms in pdf documents
     */
    public function getCompanyFiles($ico)
    {
        $cwd = getcwd();
        if(!file_exists($cwd . "\\files\\" . $ico)){
            mkdir($cwd . "\\files\\" . $ico ,0700);
        }
        $route = $cwd . "\\files" . "\\" . $ico . "\\";
        $files = array_diff(scandir($route), array('..', '.'));

        return $files;
    }
}
