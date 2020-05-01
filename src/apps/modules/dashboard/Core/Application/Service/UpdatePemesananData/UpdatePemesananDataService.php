<?php

namespace Its\Example\Dashboard\Core\Application\Service\UpdatePemesananData;

use Exception;
use Its\Example\Dashboard\Core\Domain\Repository\PemesananRepositoryInterface;

class UpdatePemesananDataService{
    protected $repository;

    public function __construct(PemesananRepositoryInterface $repository){
        $this->repository = $repository;
        
    }

    public function execute($id_pemesanan, $data){
        try {

            $result = $this->repository->updatePemesananData($id_pemesanan, $data);
            if(!$result){
                throw new Exception('tidak dapat menambah user');
            }
        } catch (\Exception $exception){
            throw new \Exception();
        }

        return $result;
    }
}