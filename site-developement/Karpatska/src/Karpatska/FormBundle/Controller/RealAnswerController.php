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

        $entity = $em->getRepository('KarpatskaFormBundle:RealAnswer')->find($id);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find RealAnswer entity.');
        }

        $deleteForm = $this->createDeleteForm($id);

        return array(
            'entity'      => $entity,
            'delete_form' => $deleteForm->createView(),
        );
    }

}
