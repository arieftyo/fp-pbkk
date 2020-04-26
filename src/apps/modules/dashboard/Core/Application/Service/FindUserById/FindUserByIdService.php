<?php

namespace Its\Example\Dashboard\Core\Application\Service\FindUserById;

use Its\Example\Dashboard\Core\Domain\Repository\UserRepositoryInterface;

class FindUserByIdService{
    protected $repository;

    public function __construct(UserRepositoryInterface $repository){
        $this->repository = $repository;
    }

    public function execute($id){
        try {
            $user = $this->repository->findById($id);
            if(!$user->isExist()){
                // throw new \Exeption('User not found');
            }
        } catch (\Exception $exception){
            throw new \Exception();
        }

        return $user;
    }
}