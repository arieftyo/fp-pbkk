<?php

namespace Its\Example\Dashboard\Core\Application\Service\GetPemesananByIdPemesanan;

use Exception;
use Its\Example\Dashboard\Core\Domain\Repository\PemesananRepositoryInterface;

class GetPemesananByIdPemesananService{
    protected $repository;

    public function __construct(PemesananRepositoryInterface $repository){
        $this->repository = $repository;
        
    }

    public function execute($data){
        try {

            $result = $this->repository->getPemesananByIdPemesanan($data);
            if(!$result){
                throw new Exception('tidak dapat menambah user');
            }
        } catch (\Exception $exception){
            throw new \Exception();
        }

        return $result;
    }
}