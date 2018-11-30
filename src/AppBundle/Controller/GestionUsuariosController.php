<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use AppBundle\Form\UsuarioType;
use AppBundle\Entity\Usuario;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;


class GestionUsuariosController extends Controller
{

    /**
     * @Route("/admin/registro/", name="registro")
     */
    public function registroAction(Request $request, UserPasswordEncoderInterface $passwordEncoder, $id=null)
    {
        if($id)
        {
            $usuarioRepository = $this->getDoctrine()->getRepository(Usuario::class);
            $usuario = $usuarioRepository->find($id);
        }
        else
        {
            $usuario = new Usuario();
        }
        
        //Construyendo el formulario
        $form = $this->createForm(UsuarioType::class, $usuario);
        if($id)
        {
            $form->add('salvar', SubmitType::class, array('label' => 'Actualizar Usuario'));
        }

        //Reogemos la informacion
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            // 3) Encode the password (you could also do this via Doctrine listener)
            $password = $passwordEncoder->encodePassword($usuario, $usuario->getPlainPassword());
            $usuario->setPassword($password);

            //3b) $username = $email
            $usuario->setUsername($usuario->getEmail());

            // 4) save the User!
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($usuario);
            $entityManager->flush();
            return $this->redirectToRoute('verusuarios');
        }

        return $this->render('admin/registro.html.twig',array('form'=>$form->createView()));
    }


    /**
     * @Route("/admin/nuevoUsuario/{id}", name="usuarios")
     */
    public function nuevoUsuarioAction(Request $request,$id=null)
    {
        if($id)
        {
            $usuarioRepository = $this->getDoctrine()->getRepository(Usuario::class);
            $usuario = $usuarioRepository->find($id);
        }
        else
        {
            $usuario = new Usuario();
        }
        //Construyendo el formulario
        $form = $this->createForm(UsuarioType::class, $usuario);
        if($id)
        {
            $form->add('salvar', SubmitType::class, array('label' => 'Actualizar Usuario'));
        }

        //Recogemos la información del formulario
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            //Rellenamos el entity Estudiante
            $usuario = $form->getData();
            //Almacenar nuevo Estudiante
            $em = $this->getDoctrine()->getManager();
            $em->persist($usuario);
            $em->flush();
            return $this->redirectToRoute('verusuarios');
        }
        //Renderizamos el formulario
        return $this->render('admin/registro.html.twig', array('form' => $form->createView()));
    }

    /**
     * @Route("/admin/verUsuario/", name="verusuarios")
     */
    public function verUsuarioAction(Request $request)
    {
        $usuarioRepository = $this->getDoctrine()->getRepository(Usuario::class);
        $usuarios = $usuarioRepository->findAll();

        return $this->render('admin/verusuarios.html.twig',array('usuarios'=>$usuarios));
    }

    /**
     * @Route("/admin/borrarUsuario/{id}", name="borrarUsuario")
     */
    public function borrarUsuarioAction(Request $request,$id=null)
    {
        if($id)
        {
            //Busqueda de registro en la entidad
            $usuarioRepository = $this->getDoctrine()->getRepository(Usuario::class);
            $usuario = $usuarioRepository->find($id);
            //Borrado
            $em = $this->getDoctrine()->getManager();
            $em->remove($usuario);
            $em->flush();
        }
        return $this->redirectToRoute('verusuarios');
    }
}
