<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Indicador;
use AppBundle\Entity\Recurso;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Recurso controller.
 *
 * @Route("admin/recurso")
 */
class RecursoController extends Controller
{

    /**
     * Lists all indicador entities.
     *
     * @Route("/", name="recurso_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $recursos = $em->getRepository('AppBundle:Recurso')->findAll();
        return $this->render('recurso/index.html.twig', array(
            'recursos' => $recursos,
        ));
    }

    /**
     * Finds and displays a indicador entity.
     *
     * @Route("/{id}", name="recurso_show")
     * @Method("GET")
     */
    public function showAction(Recurso $recurso)
    {

        return $this->render('recurso/show.html.twig', array(
            'recurso' => $recurso,
        ));
    }

    /**
     * Creates a new recurso entity.
     *
     * @Route("/new/{idIndicador}", name="recurso_nuevo")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request, $idIndicador)
    {
        $em = $this->getDoctrine()->getManager();
        $indicador = $em->getRepository('AppBundle:Indicador')->find($idIndicador);

        $recurso = new Recurso();
        $edit_form = $this->createForm('AppBundle\Form\RecursoType', $recurso);
        $edit_form->handleRequest($request);

        if ($edit_form->isSubmitted() && $edit_form->isValid()) {

            /** @var UploadedFile $enlace */
            $enlace = $edit_form['enlace']->getData();

            if ($enlace) {
                $originalFilename = pathinfo($enlace->getClientOriginalName(), PATHINFO_FILENAME);
                // this is needed to safely include the file name as part of the URL
                //$safeFilename = transliterator_transliterate('Any-Latin; Latin-ASCII; [^A-Za-z0-9_] remove; Lower()', $originalFilename);
                $newFilename = $originalFilename.'-'.uniqid().'.'.$enlace->guessExtension();

                // Move the file to the directory where enlaces (Archivos) are stored
                try {
                    $enlace->move(
                        $this->getParameter('directorio_archivos'),
                        $newFilename
                    );
                } catch (FileException $e) {
                   
                }
                $recurso->setEnlace($newFilename);
            }
                $recurso->getIndicadores();
                $indicador->addRecurso($recurso);
                $em->persist($indicador);

            $em->persist($recurso);
            $em->flush();

            return $this->redirectToRoute('indicador_show', array('id' => $idIndicador));
        }

        return $this->render('indicador/new.html.twig', array(
            'recurso' => $recurso,
            'edit_form' => $edit_form->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Recurso entity.
     *
     * @Route("/{id}/{action}/edit", name="recurso_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, $action, Recurso $recurso)
    {
        $deleteForm = $this->createDeleteForm($recurso);
        $editForm = $this->createForm('AppBundle\Form\RecursoEditType', $recurso);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            if ($action == "del")
            {
                /** @var Ind $oldind */
                foreach ($recurso->getIndicadores() as $oldind) 
                {   
                    $oldind->removeRecurso($recurso);
                    $em->persist($oldind);
                }
            }
            else if ($action == "add")
            {
                /** @var Ind $oldind */
                foreach ($recurso->getIndicadores() as $oldind) 
                {   
                    $oldind->removeRecurso($recurso);
                    $em->persist($oldind);
                }
                /** @var Ind $indicador */
                foreach ($recurso->getIndicadores() as $indicador) 
                {   
                    $indicador->addRecurso($recurso);
                    $em->persist($indicador);
                }
            }
            $em->persist($recurso);
            $em->flush();
            //$this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('recurso_show', array('id' => $recurso->getId()));
        }

        return $this->render('recurso/edit.html.twig', array(
            'action' => $action,
            'recurso' => $recurso,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Recurso entity.
     *
     * @Route("/delete/{id}", name="recurso_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Recurso $recurso)
    {
        $form = $this->createDeleteForm($recurso);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($recurso);
            $em->flush();
        }

        return $this->redirectToRoute('recurso_index');
    }

     /**
     * Creates a form to delete a recurso entity.
     *
     * @param Recurso $recurso The recurso entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Recurso $recurso)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('recurso_delete', array('id' => $recurso->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }

}
