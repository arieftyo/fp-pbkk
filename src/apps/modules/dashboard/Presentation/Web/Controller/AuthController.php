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
        
    }

    public function registerSubmitAction()
    {
        $user['nama'] = $this->request->getPost('name');
		$user['email'] = $this->request->getPost('email');
        $user['password'] = $this->request->getPost('password');
        $this->addUserService->execute($user);
        $this->response->redirect('/');
    }

    public function cobaAction(){
        $this->view->pick('base-view');
    }

    public function loginAction(){
        if($this->session->get('auth') !== null)
        {
            $this->response->redirect('/');
        }
        $this->view->pick('login');
    }

    public function loginSubmitAction(){
        $user['email'] = $this->request->getPost('email');
        $user['password'] = $this->request->getPost('password');
        try{
            $result = $this->loginUserService->execute($user);
            $this->session->set('auth', array(
                'email' => $result->getEmail(),
                'nama' =>$result->getNama(),
                'password' =>$result->getPassword(),
                'id' => $result->getId(),
            ));
            $this->response->redirect('/');
        }
        catch(\Exception $exception){
            $this->flashSession->error("Invalid Username / Password");
			return $this->response->redirect('login');
        }
         
    }

    public function logOutAction(){
        $this->session->destroy();
        $this->response->redirect('/');
    }

    public function formPesanAction(){
        $this->view->pick('form-pesan');
    }
}