<?php

namespace Its\Example\Dashboard\Core\Domain\Repository;

use Its\Example\Dashboard\Core\Domain\Model\Hotel;

interface HotelRepositoryInterface {
    public function findHotel($data);
    public function findHotelById($id);
}

?>