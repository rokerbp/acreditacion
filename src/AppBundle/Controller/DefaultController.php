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
