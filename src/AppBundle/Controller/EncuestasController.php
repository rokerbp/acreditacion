<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use AppBundle\Entity\EncuestaProfesoresAutoevaluacionDoctorado;


class EncuestasController extends Controller
{
    /**
     * @Route("/admin/encuestas/", name="encuestas")
     */
    public function encuestasAction(Request $request)
    {
        $encuestaRepository = $this->getDoctrine()->getRepository(EncuestaProfesoresAutoevaluacionDoctorado::class);
        $encuestas = $encuestaRepository->findAll();
        return $this->render('admin/encuestas.html.twig',array('encuestas'=>$encuestas));
    }
}