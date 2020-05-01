<?php

namespace Its\Example\Dashboard\Core\Application\Service\LoginUser;

use Exception;
use Its\Example\Dashboard\Core\Domain\Repository\UserRepositoryInterface;

class LoginUserService{
    protected $repository;

    public function __construct(UserRepositoryInterface $repository){
        $this->repository = $repository;

    }

    public function execute($data){
        try {

            $result = $this->repository->login($data);
            if(!$result->isExist()){
                throw new Exception('tidak dapat melakukan login');
            }
        } catch (\Exception $exception){
            throw new \Exception();
        }

        return $result;
    }
}