<?php

namespace Its\Example\Dashboard\Core\Application\Service\FindHotelById;

use Its\Example\Dashboard\Core\Domain\Repository\HotelRepositoryInterface;

class FindHotelByIdService{
    protected $repository;

    public function __construct(HotelRepositoryInterface $repository){
        $this->repository = $repository;
    }

    public function execute($data){
        try {
            $hotel = $this->repository->findHotelById($data);
        } catch (\Exception $exception){
            throw new \Exception();
        }

        return $hotel;
    }
}