<?php

namespace Its\Example\Dashboard\Core\Application\Service\AddUser;

use Exception;
use Its\Example\Dashboard\Core\Domain\Repository\UserRepositoryInterface;

class AddUserService{
    protected $repository;

    public function __construct(UserRepositoryInterface $repository){
        $this->repository = $repository;
        
    }

    public function execute($data){
        try {

            $result = $this->repository->addUser($data);
            if(!$result){
                throw new Exception('tidak dapat menambah user');
            }
        } catch (\Exception $exception){
            throw new \Exception();
        }

        return $result;
    }
}