<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Factor;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Factor controller.
 *
 * @Route("admin/factor")
 */
class FactorController extends Controller
{
    /**
     * Lists all factor entities.
     *
     * @Route("/", name="factor_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $factors = $em->getRepository('AppBundle:Factor')->findAll();

        return $this->render('factor/index.html.twig', array(
            'factors' => $factors,
        ));
    }

    /**
     * Creates a new factor entity.
     *
     * @Route("/new", name="factor_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $factor = new Factor();
        $form = $this->createForm('AppBundle\Form\FactorType', $factor);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($factor);
            $em->flush();

            return $this->redirectToRoute('factor_show', array('id' => $factor->getId()));
        }

        return $this->render('factor/new.html.twig', array(
            'factor' => $factor,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a factor entity.
     *
     * @Route("/{id}", name="factor_show")
     * @Method("GET")
     */
    public function showAction(Factor $factor)
    {
        $deleteForm = $this->createDeleteForm($factor);

        return $this->render('factor/show.html.twig', array(
            'factor' => $factor,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing factor entity.
     *
     * @Route("/{id}/edit", name="factor_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Factor $factor)
    {
        $em = $this->getDoctrine()->getManager();
        $query = $em->createQuery(
            'SELECT SUM(f.ponderacion)
            FROM AppBundle:Factor f
            WHERE f.modelo = 1'
        );//->setParameter('m', $factor->getModelo()->getId());
        
        $variable = $query->getResult()[0][1];
        //var_dump($variable);

        $deleteForm = $this->createDeleteForm($factor);
        $editForm = $this->createForm('AppBundle\Form\FactorType', $factor);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('factor_show', array('id' => $factor->getId()));
        }
        return $this->render('factor/edit.html.twig', array(
            'pond'=>$variable,
            'factor' => $factor,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a factor entity.
     *
     * @Route("/del/{id}", name="factor_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Factor $factor)
    {
        $form = $this->createDeleteForm($factor);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($factor);
            $em->flush();
        }

        return $this->redirectToRoute('factor_index');
    }

    /**
     * Creates a form to delete a factor entity.
     *
     * @param Factor $factor The factor entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Factor $factor)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('factor_delete', array('id' => $factor->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
