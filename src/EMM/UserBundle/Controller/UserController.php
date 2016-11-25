<?php

namespace EMM\UserBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

class UserController extends Controller
{
    public function indexAction()
    {
        return new Response('Bienvenido al modulo de usuario');
    }
    
    public function articlesAction($page)
    {
        return new Response('Este es mi articulo ' . $page);
    }
}