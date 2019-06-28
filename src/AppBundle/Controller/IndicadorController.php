<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Indicador;
use AppBundle\Entity\Recurso;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

/**
 * Indicador controller.
 *
 * @Route("admin/indicador")
 */
class IndicadorController extends Controller
{
    /**
     * Lists all indicador entities.
     *
     * @Route("/", name="indicador_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $indicadors = $em->getRepository('AppBundle:Indicador')->findAll();

        return $this->render('indicador/index.html.twig', array(
            'indicadors' => $indicadors,
        ));
    }

    /**
     * Finds and displays a indicador entity.
     *
     * @Route("/{id}", name="indicador_show")
     * @Method("GET")
     */
    public function showAction(Indicador $indicador)
    {

        return $this->render('indicador/show.html.twig', array(
            'indicador' => $indicador,
        ));
    }

}
