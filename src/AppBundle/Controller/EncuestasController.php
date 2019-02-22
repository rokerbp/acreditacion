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
        return $this->render('admin/encuesta.html.twig');
        /*
        Codigo Original del index
        $encuestaRepository = $this->getDoctrine()->getRepository(Encuesta::class);
        $encuestas = $encuestaRepository->findAll();
        var_dump($encuestas);
        return $this->render('admin/encuestas.html.twig',array('encuestas'=>$encuestas));
        */
    }

    /**
     * @Route("/admin/encuestas/{score}", name="perfil")
     */
    public function perfilAction(Request $request,$score=null)
    {
        if($score!=null){
            $encuestaRepository = $this->getDoctrine()->getRepository(Encuesta::class);
            $encuestas = $encuestaRepository->findBy(['score'=>$score], ['nombre'=>'DESC']);
            //var_dump($encuestas);
            return $this->render('admin/encuestas.html.twig',array("encuestas"=>$encuestas));
        }else{
            return $this->redirectToRoute('homepage');
        }
    }
}