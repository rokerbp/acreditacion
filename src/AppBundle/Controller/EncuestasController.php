<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use AppBundle\Entity\Encuesta;


class EncuestasController extends Controller
{
    /**
     * @Route("/admin/encuestas/", name="encuestas")
     */
    public function encuestasAction(Request $request)
    {
        $encuestaRepository = $this->getDoctrine()->getRepository(Encuesta::class);
        $encuestas = $encuestaRepository->findAll();
        var_dump($encuestas);
        return $this->render('admin/encuestas.html.twig',array('encuestas'=>$encuestas));
    }
}