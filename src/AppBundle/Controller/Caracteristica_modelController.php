<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Caracteristica_model;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Caracteristica_model controller.
 *
 * @Route("caracteristica_model")
 */
class Caracteristica_modelController extends Controller
{
    /**
     * Lists all caracteristica_model entities.
     *
     * @Route("/", name="caracteristica_model_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $caracteristica_models = $em->getRepository('AppBundle:Caracteristica_model')->findAll();

        return $this->render('caracteristica_model/index.html.twig', array(
            'caracteristica_models' => $caracteristica_models,
        ));
    }

    /**
     * Creates a new caracteristica_model entity.
     *
     * @Route("/new", name="caracteristica_model_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $caracteristica_model = new Caracteristica_model();
        $form = $this->createForm('AppBundle\Form\Caracteristica_modelType', $caracteristica_model);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($caracteristica_model);
            $em->flush();

            return $this->redirectToRoute('caracteristica_model_show', array('id' => $caracteristica_model->getId()));
        }

        return $this->render('caracteristica_model/new.html.twig', array(
            'caracteristica_model' => $caracteristica_model,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a caracteristica_model entity.
     *
     * @Route("/{id}", name="caracteristica_model_show")
     * @Method("GET")
     */
    public function showAction(Caracteristica_model $caracteristica_model)
    {
        $deleteForm = $this->createDeleteForm($caracteristica_model);

        return $this->render('caracteristica_model/show.html.twig', array(
            'caracteristica_model' => $caracteristica_model,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing caracteristica_model entity.
     *
     * @Route("/{id}/edit", name="caracteristica_model_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Caracteristica_model $caracteristica_model)
    {
        $deleteForm = $this->createDeleteForm($caracteristica_model);
        $editForm = $this->createForm('AppBundle\Form\Caracteristica_modelType', $caracteristica_model);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('caracteristica_model_edit', array('id' => $caracteristica_model->getId()));
        }

        return $this->render('caracteristica_model/edit.html.twig', array(
            'caracteristica_model' => $caracteristica_model,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a caracteristica_model entity.
     *
     * @Route("/{id}", name="caracteristica_model_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Caracteristica_model $caracteristica_model)
    {
        $form = $this->createDeleteForm($caracteristica_model);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($caracteristica_model);
            $em->flush();
        }

        return $this->redirectToRoute('caracteristica_model_index');
    }

    /**
     * Creates a form to delete a caracteristica_model entity.
     *
     * @param Caracteristica_model $caracteristica_model The caracteristica_model entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Caracteristica_model $caracteristica_model)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('caracteristica_model_delete', array('id' => $caracteristica_model->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
