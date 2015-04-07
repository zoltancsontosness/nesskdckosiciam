<?php

namespace Karpatska\FormBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Karpatska\FormBundle\Entity\RealAnswer;
use Karpatska\FormBundle\Form\RealAnswerType;

/**
 * RealAnswer controller.
 *
 * @Route("/admin/records")
 */
class RealAnswerController extends Controller
{

    /**
     * Lists all RealAnswer entities.
     *
     * @Route("/", name="admin_records")
     * @Method("GET")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $entities = $em->getRepository('KarpatskaFormBundle:Company')->findAll();

        return array(
            'entities' => $entities,
        );
    }

    /**
     * Finds and displays a RealAnswer entity.
     *
     * @Route("/{id}", name="admin_records_show")
     * @Method("GET")
     * @Template()
     */
    public function showAction($id)
    {
        $em = $this->getDoctrine()->getManager();

        $company = $this->getDoctrine()->getRepository("KarpatskaFormBundle:Company")->find($id);
        $ico = $company->getIco();

        $files = $this->getCompanyFiles($ico);
        $entity = $em->getRepository('KarpatskaFormBundle:Company')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Spoločnosť s daným ID neexistuje.');
        }

        return array(
            'entity' => $entity,
            'files' => $files,
            'ico' => $ico
        );
    }

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
