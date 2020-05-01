<?php

namespace Its\Example\Dashboard\Core\Application\Service\FindHotel;

use Its\Example\Dashboard\Core\Domain\Repository\HotelRepositoryInterface;

class FindHotelService{
    protected $repository;

    public function __construct(HotelRepositoryInterface $repository){
        $this->repository = $repository;
    }

    public function execute($data){
        try {
            $hotel = $this->repository->findHotel($data);
        } catch (\Exception $exception){
            throw new \Exception();
        }

        return $hotel;
    }
}