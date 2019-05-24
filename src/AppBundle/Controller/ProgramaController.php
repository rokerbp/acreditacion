<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Programa;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Programa controller.
 *
 * @Route("programa")
 */
class ProgramaController extends Controller
{
    /**
     * Lists all programa entities.
     *
     * @Route("/", name="programa_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $programas = $em->getRepository('AppBundle:Programa')->findAll();

        return $this->render('programa/index.html.twig', array(
            'programas' => $programas,
        ));
    }

    /**
     * Creates a new programa entity.
     *
     * @Route("/new", name="programa_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $programa = new Programa();
        $form = $this->createForm('AppBundle\Form\ProgramaType', $programa);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($programa);
            $em->flush();

            return $this->redirectToRoute('programa_show', array('id' => $programa->getId()));
        }

        return $this->render('programa/new.html.twig', array(
            'programa' => $programa,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a programa entity.
     *
     * @Route("/{id}", name="programa_show")
     * @Method("GET")
     */
    public function showAction(Programa $programa)
    {
        $deleteForm = $this->createDeleteForm($programa);

        return $this->render('programa/show.html.twig', array(
            'programa' => $programa,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing programa entity.
     *
     * @Route("/{id}/edit", name="programa_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Programa $programa)
    {
        $deleteForm = $this->createDeleteForm($programa);
        $editForm = $this->createForm('AppBundle\Form\ProgramaType', $programa);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('programa_edit', array('id' => $programa->getId()));
        }

        return $this->render('programa/edit.html.twig', array(
            'programa' => $programa,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a programa entity.
     *
     * @Route("/{id}", name="programa_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Programa $programa)
    {
        $form = $this->createDeleteForm($programa);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($programa);
            $em->flush();
        }

        return $this->redirectToRoute('programa_index');
    }

    /**
     * Creates a form to delete a programa entity.
     *
     * @param Programa $programa The programa entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Programa $programa)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('programa_delete', array('id' => $programa->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
