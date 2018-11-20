<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use AppBundle\Entity\Usuario;


class GestionProgramasController extends Controller
{
    /**
     * @Route("/admin/programas/maestria/", name="maestria")
     */
    public function programasMaestriaAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('/admin/programasMaestria.html.twig');
    }

    /**
     * @Route("/admin/programas/doctorado/", name="doctorado")
     */
    public function programasDoctoradoAction(Request $request)
    {
        // replace this example code with whatever you need
        return $this->render('/admin/programasDoctorado.html.twig');
    }
}