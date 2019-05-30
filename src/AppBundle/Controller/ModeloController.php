<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Factor;
use AppBundle\Entity\Factor_model;
use AppBundle\Entity\Modelo;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Modelo controller.
 *
 * @Route("modelo")
 */
class ModeloController extends Controller
{
    /**
     * Lists all modelo entities.
     *
     * @Route("/", name="modelo_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $modelos = $em->getRepository('AppBundle:Modelo')->findAll();

        return $this->render('modelo/index.html.twig', array(
            'modelos' => $modelos,
        ));
    }

    /**
     * Creates a new modelo entity.
     *
     * @Route("/new", name="modelo_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $modelo = new Modelo();
        $form = $this->createForm('AppBundle\Form\ModeloType', $modelo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();

            /** @var Factor $factor */
            foreach ($modelo->getFacts() as $factor) {
                $factor->setModelo($modelo);
                $em->persist($factor);
            }

            $em->persist($modelo);
            $em->flush();

            return $this->redirectToRoute('modelo_show', array('id' => $modelo->getId()));
        }

        return $this->render('modelo/new.html.twig', array(
            'modelo' => $modelo,
            'form' => $form->createView(),
        ));
    }

    // ****INICIO PRUEBA INSTANCIACION

    /**
     * Creates un nuevo modelo instanciando 10 factores.
     *
     * @Route("/nuevo", name="modelo_nuevo")
     * @Method({"GET", "POST"})
     */
    public function nuevoAction(Request $request)
    {
        $modelo = new Modelo();
        $f_m = new Factor();
        $em = $this->getDoctrine()->getManager();
        $factor_model = $em->getRepository('AppBundle:Factor_model')->findAll();
        //var_dump($factor_model);

        $form = $this->createForm('AppBundle\Form\ModeloType', $modelo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            //$factor->setNombre("factor 44");
            //$factor->setPonderacion(0);
            //$factor->setJustificacion("justificacion 44");

            $em->persist($modelo);
            $em->flush();

            $model=$f_m->getModelo();
            $model=$modelo;
            foreach ($factor_model as $factor_m)
            {
                $factor = new Factor();
                $factor->setNombre($factor_m->getNombre());
                $factor->setPonderacion($factor_m->getPonderacion());
                $factor->setJustificacion($factor_m->getjustificacion());
                $factor->setValor($factor_m->getvalor());
                $factor->setPorcentaje($factor_m->getporcentaje());
                $factor->setModelo($model);
                $em->persist($factor);
                $em->flush();
            }

            return $this->redirectToRoute('modelo_show', array('id' => $modelo->getId()));
        }

        return $this->render('modelo/new.html.twig', array(
            'modelo' => $modelo,
            'form' => $form->createView(),
        ));
    }

    // ****FIN PRUEBA INSTANCIACION


    /**
     * Finds and displays a modelo entity.
     *
     * @Route("/{id}", name="modelo_show")
     * @Method("GET")
     */
    public function showAction(Modelo $modelo)
    {
        $deleteForm = $this->createDeleteForm($modelo);

        return $this->render('modelo/show.html.twig', array(
            'modelo' => $modelo,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing modelo entity.
     *
     * @Route("/{id}/edit", name="modelo_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Modelo $modelo)
    {
        $deleteForm = $this->createDeleteForm($modelo);
        $editForm = $this->createForm('AppBundle\Form\ModeloType', $modelo);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {

            $em = $this->getDoctrine()->getManager();

            $oldfacts=$em->getRepository('AppBundle:Factor')->findBy(array(
                "modelo"=>$modelo
            ));

            /** @var Factor $oldfact */
            foreach($oldfacts as $oldfact){
                $oldfact->setModelo(null);
                $em->persist($oldfact);
            }
            /** @var Factor $factor */
            foreach ($modelo->getFacts() as $factor){
                $factor->setModelo($modelo);
                $em->persist($factor);
            }
            $em->persist($modelo);
            $em->flush();

            return $this->redirectToRoute('modelo_edit', array('id' => $modelo->getId()));
        }

        return $this->render('modelo/edit.html.twig', array(
            'modelo' => $modelo,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a modelo entity.
     *
     * @Route("/delete/{id}", name="modelo_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Modelo $modelo)
    {
        $form = $this->createDeleteForm($modelo);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($modelo);
            $em->flush();
        }

        return $this->redirectToRoute('modelo_index');
    }

    /**
     * Creates a form to delete a modelo entity.
     *
     * @param Modelo $modelo The modelo entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Modelo $modelo)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('modelo_delete', array('id' => $modelo->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
