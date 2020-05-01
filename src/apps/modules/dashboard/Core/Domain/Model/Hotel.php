<?php

namespace Its\Example\Dashboard\Core\Domain\Model;

class Hotel {
    protected $id_hotel;
    protected $nama_hotel;
    protected $alamat_hotel;
    protected $kota_hotel;
    protected $deskripsi;
    protected $total_kamar;
    protected $kamar_terpakai;
    protected $harga_hotel;
    protected $foto_hotel;

    public function __construct($id_hotel, $nama_hotel, $alamat_hotel
    ,$kota_hotel, $deskripsi, $total_kamar, $kamar_terpakai, $harga_hotel, $foto_hotel)
    {
        $this->$id_hotel = $id_hotel;
        $this->$nama_hotel = $nama_hotel;
        $this->$alamat_hotel = $alamat_hotel;
        $this->$kota_hotel = $kota_hotel;
        $this->$deskripsi = $deskripsi;
        $this->$total_kamar = $total_kamar;
        $this->$kamar_terpakai = $kamar_terpakai;
        $this->$harga_hotel = $harga_hotel;
        $this->$foto_hotel = $foto_hotel;
    }

    public function isExist()
    {
        return isset($this->id_hotel);
    }

    public function getNama()
    {
        return $this->nama_hotel;
    }

    public function getId()
    {
        return $this->id_hotel;
    }

    public function getAlamat()
    {
        return $this->alamat_hotel;
    }

    public function getKota()
    {
        return $this->kota_hotel;
    }

    public function getDeskripsi()
    {
        return $this->deskripsi;
    }

    public function getTotalKamar()
    {
        return $this->total_kamar;
    }

    public function getKamarTerpakai()
    {
        return $this->kamar_terpakai;
    }

    public function getHarga()
    {
        return $this->harga_hotel;
    }

    public function getFoto()
    {
        return $this->foto_hotel;
    }

}

?>