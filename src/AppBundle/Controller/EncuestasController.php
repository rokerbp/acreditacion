<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use AppBundle\Entity\EncuestaDoctorado;


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
        $encuestaRepository = $this->getDoctrine()->getRepository(EncuestaDoctorado::class);
        $encuestas = $encuestaRepository->findAll();
        var_dump($encuestas);
        return $this->render('admin/encuestas.html.twig',array('encuestas'=>$encuestas));
        */
    }

    /**
     * @Route("/admin/encuestas/{relprograma}", name="perfil")
     */
    public function perfilAction(Request $request,$relprograma=null)
    {
        if($relprograma!=null){
            /*$encuestaRepository = $this->getDoctrine()->getRepository(EncuestaDoctorado::class);
            $encuestas = $encuestaRepository->findBy(['relprograma'=>$relprograma], ['nombre'=>'DESC']);
            var_dump($encuestas);*/

            $em = $this->getDoctrine()->getManager();
            $data = $em->getRepository(EncuestaDoctorado::class)->findAll();

            $query = $em->createQuery(
                '   SELECT
                        e
                    FROM
                        AppBundle\Entity\EncuestaDoctorado e
                    WHERE
                        e.relprograma LIKE :relprograma
                '
            )->setParameter('relprograma','%'.$relprograma.'%');
            $encuestas = $query->execute();
            
            return $this->render('admin/encuestas.html.twig',array("encuestas"=>$encuestas, "relprograma"=>$relprograma));
        }else{
            return $this->redirectToRoute('homepage');
        }
    }
}