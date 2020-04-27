<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;

use Its\Example\Dashboard\Core\Domain\Model\User;
use Phalcon\Mvc\Controller;
use Phalcon\Http\Request;

class AuthController extends Controller
{

    protected $addUserService;
    protected $loginUserService;

    public function initialize()
    {
        $this->addUserService = $this->getDI()->get('addUserService');
        $this->loginUserService = $this->getDI()->get('loginUserService');
    }

    public function indexAction()
    {
        // $db = $this->getDI()->get('db');

        // $sql = "";

        // $result = $db->fetchOne($sql, \Phalcon\Db\Enum::FETCH_ASSOC);

        // echo var_dump($result);
        echo 'yeyeye';
    }

    public function registerSubmitAction()
    {
        $user['nama'] = $this->request->getPost('name');
		$user['email'] = $this->request->getPost('email');
        $user['password'] = $this->request->getPost('password');
        $this->addUserService->execute($user);
        echo 'lala';
    }

    public function cobaAction(){
        $this->view->pick('base-view');
    }

    public function loginAction(){
        $this->view->pick('login');
    }

    public function loginSubmitAction(){
        $user['email'] = $this->request->getPost('email');
        $user['password'] = $this->request->getPost('password');
        $result = $this->loginUserService->execute($user);
        if($result){
            $this->session->set('auth', array(
				'email' => $user['email'],
            ));
            var_dump($this->session);
            die();

        }

    }
}