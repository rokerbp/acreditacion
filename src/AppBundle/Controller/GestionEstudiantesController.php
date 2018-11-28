<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use AppBundle\Form\EstudianteType;
use AppBundle\Entity\Estudiante;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;


class GestionEstudiantesController extends Controller
{
    /**
     * @Route("/admin/acreditacion/nuevoEstudiante/{id}", name="estudiantes")
     */
    public function nuevoEstudianteAction(Request $request,$id=null)
    {
        if($id)
        {
            $estudianteRepository = $this->getDoctrine()->getRepository(Estudiante::class);
            $estudiante = $estudianteRepository->find($id);
        }
        else
        {
            $estudiante = new Estudiante();
        }
        //Construyendo el formulario
        $form = $this->createForm(EstudianteType::class, $estudiante);
        if($id)
        {
            $form->add('salvar', SubmitType::class, array('label' => 'Actualizar Estudiante'));
        }

        //Recogemos la información del formulario
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            //Rellenamos el entity Estudiante
            $estudiante = $form->getData();
            //Almacenar nuevo Estudiante
            $em = $this->getDoctrine()->getManager();
            $em->persist($estudiante);
            $em->flush();
            return $this->redirectToRoute('verestudiantes');
        }
        //Renderizamos el formulario
        return $this->render('admin/estudiantes.html.twig', array('form' => $form->createView()));
    }

    /**
     * @Route("/admin/acreditacion/verEstudiante/", name="verestudiantes")
     */
    public function verEstudianteAction(Request $request)
    {
        $estudianteRepository = $this->getDoctrine()->getRepository(Estudiante::class);
        $estudiantes = $estudianteRepository->findAll();

        return $this->render('admin/verestudiantes.html.twig',array('estudiantes'=>$estudiantes));
    }

    /**
     * @Route("/admin/acreditacion/borrarEstudiante/{id}", name="borrarEstudiante")
     */
    public function borrarEstudianteAction(Request $request,$id=null)
    {
        if($id)
        {
            //Busqueda de registro en la entidad
            $estudianteRepository = $this->getDoctrine()->getRepository(Estudiante::class);
            $estudiante = $estudianteRepository->find($id);
            //Borrado
            $em = $this->getDoctrine()->getManager();
            $em->remove($estudiante);
            $em->flush();
        }
        return $this->redirectToRoute('verestudiantes');
    }
}
