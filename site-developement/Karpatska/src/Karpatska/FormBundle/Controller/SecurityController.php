<?php
namespace Karpatska\FormBundle\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\Security\Core\SecurityContext;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;

class SecurityController extends Controller
{
    /**
     * @Route("/user/security-check", name="_user_security_check")
     * @Template()
     */
    /*
    public function userSecurityCheckAction()
    {
        //Security layer will handle this
    }
    */

    /**
     * @Route("/login/user", name="_user_login")
     * @Template()
     */
    /*
    public function userLoginAction()
    {
        if ($this->get('request')->attributes->has(SecurityContext::AUTHENTICATION_ERROR)) {
            $error = $this->get('request')->attributes->get(SecurityContext::AUTHENTICATION_ERROR);
        } else {
            $error = $this->get('request')->getSession()->get(SecurityContext::AUTHENTICATION_ERROR);
        }
        return array(
            'last_username' => $this->get('request')->getSession()->get(SecurityContext::LAST_USERNAME),
            'error'         => $error,
        );
    }
    */

    /**
     * @Route("/user/logout", name="_user_logout")
     * @Template()
     */
     /*
    public function userLogoutAction()
    {
        return $this->redirect($this->generateUrl('_parent_login'));
    }
    */

    /**
     * @Route("/company/security-check", name="_company_security_check")
     * @Template()
     */
    public function companySecurityCheckAction()
    {
        //Security layer will handle this
    }

    /**
     * @Route("/", name="_company_login")
     * @Template()
     */
    public function companyLoginAction()
    {
        if ($this->get('request')->attributes->has(SecurityContext::AUTHENTICATION_ERROR)) {
            $error = $this->get('request')->attributes->get(SecurityContext::AUTHENTICATION_ERROR);
        } else {
            $error = $this->get('request')->getSession()->get(SecurityContext::AUTHENTICATION_ERROR);
        }
        return array(
            'last_username' => $this->get('request')->getSession()->get(SecurityContext::LAST_USERNAME),
            'error'         => $error,
        );
    }

    /**
     * @Route("/company/logout", name="_company_logout")
     * @Template()
     */
    public function companyLogoutAction()
    {
        return $this->redirect($this->generateUrl('_company_login'));
    }

    /**
         * @Route("/admin/security-check", name="_admin_security_check")
         * @Template()
         */
        public function adminSecurityCheckAction()
        {
            //Security layer will handle this
        }

        /**
         * @Route("/login/admin", name="_admin_login")
         * @Template()
         */
        public function adminLoginAction()
        {
            if ($this->get('request')->attributes->has(SecurityContext::AUTHENTICATION_ERROR)) {
                $error = $this->get('request')->attributes->get(SecurityContext::AUTHENTICATION_ERROR);
            } else {
                $error = $this->get('request')->getSession()->get(SecurityContext::AUTHENTICATION_ERROR);
            }
            return array(
                'last_username' => $this->get('request')->getSession()->get(SecurityContext::LAST_USERNAME),
                'error'         => $error,
            );
        }

        /**
         * @Route("/admin/logout", name="_admin_logout")
         * @Template()
         */
        public function adminLogoutAction()
        {
            return $this->redirect($this->generateUrl('_company_login'));
        }
}