<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Indicador_model;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Indicador_model controller.
 *
 * @Route("admin/indicador_model")
 */
class Indicador_modelController extends Controller
{
    /**
     * Lists all indicador_model entities.
     *
     * @Route("/", name="indicador_model_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $indicador_models = $em->getRepository('AppBundle:Indicador_model')->findAll();

        return $this->render('indicador_model/index.html.twig', array(
            'indicador_models' => $indicador_models,
        ));
    }

    /**
     * Creates a new indicador_model entity.
     *
     * @Route("/new", name="indicador_model_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $indicador_model = new Indicador_model();
        $form = $this->createForm('AppBundle\Form\Indicador_modelType', $indicador_model);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($indicador_model);
            $em->flush();

            //return $this->redirectToRoute('indicador_model_show', array('id' => $indicador_model->getId()));
            return $this->redirectToRoute('indicador_model_index');
        }

        return $this->render('indicador_model/new.html.twig', array(
            'indicador_model' => $indicador_model,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a indicador_model entity.
     *
     * @Route("/{id}", name="indicador_model_show")
     * @Method("GET")
     */
    public function showAction(Indicador_model $indicador_model)
    {
        $deleteForm = $this->createDeleteForm($indicador_model);

        return $this->render('indicador_model/show.html.twig', array(
            'indicador_model' => $indicador_model,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing indicador_model entity.
     *
     * @Route("/{id}/edit", name="indicador_model_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Indicador_model $indicador_model)
    {
        $deleteForm = $this->createDeleteForm($indicador_model);
        $editForm = $this->createForm('AppBundle\Form\Indicador_modelType', $indicador_model);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('indicador_model_edit', array('id' => $indicador_model->getId()));
        }

        return $this->render('indicador_model/edit.html.twig', array(
            'indicador_model' => $indicador_model,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a indicador_model entity.
     *
     * @Route("/{id}", name="indicador_model_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Indicador_model $indicador_model)
    {
        $form = $this->createDeleteForm($indicador_model);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($indicador_model);
            $em->flush();
        }

        return $this->redirectToRoute('indicador_model_index');
    }

    /**
     * Creates a form to delete a indicador_model entity.
     *
     * @param Indicador_model $indicador_model The indicador_model entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Indicador_model $indicador_model)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('indicador_model_delete', array('id' => $indicador_model->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
