<?php

namespace Its\Example\Dashboard\Core\Application\Service\DeletePemesanan;

use Exception;
use Its\Example\Dashboard\Core\Domain\Repository\PemesananRepositoryInterface;

class DeletePemesananService{
    protected $repository;

    public function __construct(PemesananRepositoryInterface $repository){
        $this->repository = $repository;
        
    }

    public function execute($data){
        try {

            $result = $this->repository->deletePemesanan($data);
            if(!$result){
                throw new Exception('tidak dapat menambah user');
            }
        } catch (\Exception $exception){
            throw new \Exception();
        }

        return $result;
    }
}