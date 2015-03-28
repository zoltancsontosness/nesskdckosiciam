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
        return array();
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
}
