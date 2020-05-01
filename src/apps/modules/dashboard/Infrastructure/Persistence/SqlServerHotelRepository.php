<?php
namespace Its\Example\Dashboard\Infrastructure\Persistence;

use Its\Example\Dashboard\Core\Domain\Model\Hotel;
use Its\Example\Dashboard\Core\Domain\Repository\HotelRepositoryInterface;

class SqlServerHotelRepository implements HotelRepositoryInterface{
    protected $db;
    
    public function __construct($db){
        $this->db = $db;
    }

    public function findHotel($data)
    {
        $sql = "SELECT * from [hotel] WHERE total_kamar-kamar_terpakai > :kamar and kota_hotel=:kota";
        $param = 
        ['kamar' => $data['room'],
        'kota' => $data['kota']
        ];
        $results = $this->db->fetchAll($sql, \Phalcon\Db\Enum::FETCH_ASSOC, $param);

        return $results;
    }

    public function findHotelById($id)
    {
        $sql = "SELECT * from [hotel] WHERE id_hotel= :id";
        $param =
        ['id' => $id];
        $result = $this->db->fetchOne($sql, \Phalcon\Db\Enum::FETCH_ASSOC, $param);

        return $result;
    }

}