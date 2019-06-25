<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Factor;
use AppBundle\Entity\Caracteristica;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Caracteristica controller.
 *
 * @Route("admin/caracteristica")
 */
class CaracteristicaController extends Controller
{
    /**
     * Lists all caracteristica entities.
     *
     * @Route("/{factor}", name="caracteristica_index")
     * @Method("GET")
     */
    public function indexAction(Request $request, Factor $factor)
    {
        $em = $this->getDoctrine()->getManager();

        /*$caracteristicas = $em->getRepository('AppBundle:Caracteristica')->find($factor);
        var_dump($factor);

        return $this->render('caracteristica/index.html.twig', array(
            'caracteristicas' => $caracteristicas,
        )); */
        $caracteristicas=$em->getRepository('AppBundle:Caracteristica')->findby(array(
            "factor"=>$factor));
        return $this->render('caracteristica/index.html.twig', array(
            'caracteristicas' => $caracteristicas,
        ));

        
    }

    /**
     * Finds and displays a caracteristica entity.
     *
     * @Route("/{id}/", name="caracteristica_show")
     * @Method("GET")
     */
    public function showAction(Caracteristica $caracteristica)
    {

        return $this->render('caracteristica/show.html.twig', array(
            'caracteristica' => $caracteristica,
        ));
    }

    /**
     * Displays a form to edit an existing caracteristica entity.
     *
     * @Route("/{id}/edit", name="caracteristica_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Caracteristica $caracteristica)
    {
        $deleteForm = $this->createDeleteForm($caracteristica);
        $editForm = $this->createForm('AppBundle\Form\CaracteristicaType', $caracteristica);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            //return $this->redirectToRoute('caracteristica_edit', array('id' => $caracteristica->getId()));
            return $this->redirectToRoute('caracteristica_show', array('id' => $caracteristica->getId()));
            //return $this->redirectToRoute('caracteristica_index');
        }

        return $this->render('caracteristica/edit.html.twig', array(
            'caracteristica' => $caracteristica,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a caracteristica entity.
     *
     * @Route("/delete/{id}", name="caracteristica_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Caracteristica $caracteristica)
    {
        $form = $this->createDeleteForm($caracteristica);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($caracteristica);
            $em->flush();
        }

        return $this->redirectToRoute('caracteristica_index');
    }

    /**
     * Creates a form to delete a caracteristica entity.
     *
     * @param Caracteristica $caracteristica The caracteristica entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Caracteristica $caracteristica)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('caracteristica_delete', array('id' => $caracteristica->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
