<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;

use Phalcon\Mvc\Controller;

class IndexController extends Controller
{
    protected $findUserByIdService;

    public function initialize()
    {
        // print_r('lala');
        // die();
        $this->findUserByIdService = $this->getDI()->get('findUserByIdService');
    }

    public function indexAction()
    {
       
    }

    public function getUserAction($userId)
    {
        $user = $this->findUserByIdService->execute($userId);
        print_r($user);
        die();
    }
}