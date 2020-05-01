<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;

use Phalcon\Mvc\Controller;

class IndexController extends Controller
{
    protected $findUserByIdService;
    protected $authSession;
    
    public function initialize()
    {
        $this->authSession = $this->session->get('auth');
        $this->view->setVar('auth',  $this->authSession);
    }

    public function indexAction()
    {
        $this->view->pick('front');
    }

   

}