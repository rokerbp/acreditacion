<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

use AppBundle\Entity\Usuario;

use AppBundle\Form\UsuarioType;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request,  AuthenticationUtils $authenticationUtils)
    {
        return $this->redirectToRoute('login');
    }

    /**
     * @Route("/admin/", name="admin")
     */
    public function adminAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('/admin/index.html.twig');
    }

    /**
     * @Route("/admin/registro/", name="registro")
     */
    public function registroAction(Request $request, UserPasswordEncoderInterface $passwordEncoder)
    {
        $usuario = new Usuario();
        //Construyendo el formulario
        $form = $this->createForm(UsuarioType::class, $usuario);

        //Reogemos la informacion
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            // 3) Encode the password (you could also do this via Doctrine listener)
            $password = $passwordEncoder->encodePassword($usuario, $usuario->getPlainPassword());
            $usuario->setPassword($password);

            //3b) $username = $email
            $usuario->setUsername($usuario->getEmail());

            //3c) $roles
            //$usuario->setRoles(array('ROLE_USER'));

            // 4) save the User!
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($usuario);
            $entityManager->flush();
  
            return $this->redirectToRoute('login');
        }

        return $this->render('frontal/registro.html.twig',array('form'=>$form->createView()));
    }


    /**
     * @Route("/tablas", name="tablas")
     */
    public function tablasAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('/admin/index.html.twig');
    }

    /**
     * @Route("/admin/programas/", name="programas")
     */
    public function programasAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('/admin/index.html.twig');
    }
}
