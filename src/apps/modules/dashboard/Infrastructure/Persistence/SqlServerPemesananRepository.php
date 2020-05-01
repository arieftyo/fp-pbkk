<?php
namespace Its\Example\Dashboard\Infrastructure\Persistence;

use Its\Example\Dashboard\Core\Domain\Model\Pemesanan;
use Its\Example\Dashboard\Core\Domain\Repository\PemesananRepositoryInterface;

class SqlServerPemesananRepository implements PemesananRepositoryInterface{
    protected $db;
    
    public function __construct($db){
        $this->db = $db;
    }

    public function addPemesanan($data)
    {
        $sql = "INSERT INTO [pemesanan] (id_user, id_hotel, tgl_checkin, tgl_checkout, jumlah_kamar, total_harga, 
        status_bayar, nama_pemesan, email, telepon, nama_tamu) VALUES(:id_user, :id_hotel, :tgl_checkin, :tgl_checkout,
        :jumlah_kamar, :total_harga, :status_bayar, :nama_pemesan, :email, :telepon, :nama_tamu)";
        $params = 
        ['id_user' => $data['id_user'],
        'id_hotel' => $data['id_hotel'],
        'tgl_checkin' => $data['tgl_checkin'],
        'tgl_checkout' => $data['tgl_checkout'],
        'jumlah_kamar' => $data['jumlah_kamar'],
        'total_harga' => $data['totalHarga'],
        'status_bayar' => $data['status_bayar'],
        'nama_pemesan' => $data['nama_pemesan'],
        'email' => $data['email'],
        'telepon' => $data['telepon'],
        'nama_tamu' => $data['nama_tamu'],
        ];

        $result = $this->db->execute($sql, $params);
        return $result;
    }

   public function getPemesananByIdUser($id)
   {
    $sql = "SELECT * from [pemesanan] WHERE id_user = :id_user";
    $param = 
    ['id_user' => $id];
    $results = $this->db->fetchAll($sql, \Phalcon\Db\Enum::FETCH_ASSOC, $param);

    return $results;
   }

   public function updateStatusBayar($id_pemesanan)
   {
       $sql = "UPDATE [pemesanan] SET status_bayar = 1 WHERE id_pemesanan=:id_pemesanan";
       $param = 
       ['id_pemesanan' => $id_pemesanan];
       $result = $this->db->execute($sql, $param);
       return $result;
   }

   public function deletePemesanan($id_pemesanan)
   {
        $sql = "DELETE FROM [pemesanan] WHERE id_pemesanan=:id_pemesanan";
        $param = 
        ['id_pemesanan' => $id_pemesanan];
        $result = $this->db->execute($sql, $param);
        return $result;
   }

   public function getPemesananByIdPemesanan($id_pemesanan)
   {
       $sql = "SELECT * FROM [pemesanan] WHERE id_pemesanan=:id_pemesanan";
       $param=['id_pemesanan'=> $id_pemesanan];
       $result = $this->db->fetchOne($sql, \Phalcon\Db\Enum::FETCH_ASSOC, $param);
       return $result;
   }

   public function updatePemesananData($id_pemesanan, $data)
   {
    $sql = "UPDATE [pemesanan] SET nama_pemesan = :nama_pemesan, telepon = :telepon, email = :email, nama_tamu = :nama_tamu
     WHERE id_pemesanan=:id_pemesanan";
    $param=['id_pemesanan'=> $id_pemesanan,
            'nama_pemesan' => $data['nama_pemesan'],
            'telepon' => $data['telepon'],
            'email' => $data['email'],
            'nama_tamu' => $data['nama_tamu']
        ];
    $result = $this->db->execute($sql, $param);
    return $result;
   }

}