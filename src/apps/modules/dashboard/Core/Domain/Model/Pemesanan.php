<?php

namespace Its\Example\Dashboard\Core\Domain\Model;

class Pemesanan {
    protected $id_pemesanan;
    protected $id_user;
    protected $id_hotel;
    protected $tgl_checkin;
    protected $tgl_checkout;
    protected $jumlah_kamar;
    protected $total_harga;
    protected $status_bayar;
    protected $nama_pemesan;
    protected $email;
    protected $telepon;
    protected $nama_tamu;

    public function __construct($id_pemesanan
    , $id_user, $id_hotel, $tgl_checkin, $tgl_checkout
    , $jumlah_kamar, $total_harga, $status_bayar,
    $nama_pemesan, $email, $telepon, $nama_tamu)
    {
         $this->id_pemesanan = $id_pemesanan;
         $this->id_user = $id_user;
         $this->id_hotel = $id_hotel;
         $this->tgl_checkin = $tgl_checkin;
         $this->tgl_checkout = $tgl_checkout;
         $this->jumlah_kamar = $jumlah_kamar;
         $this->total_harga = $total_harga;
         $this->status_bayar = $status_bayar;
         $this->nama_pemesan = $nama_pemesan;
         $this->email = $email;
         $this->telepon = $telepon;
         $this->nama_tamu = $nama_tamu;
    }

    public function isExist()
    {
        return isset($this->id_pemesanan);
    }

    public function getNamaPemesan()
    {
        return $this->nama_pemesan;
    }

    public function getEmail()
    {
        return $this->email;
    }

    public function getTelepon()
    {
        return $this->telepon;
    }

    public function getNamaTamu()
    {
        return $this->nama_tamu;
    }

    public function getTotalHarga()
    {
        return $this->total_harga;
    }

    public function getJumlahKamar()
    {
        return $this->jumlah_kamar;
    }

    public function getTglCheckin()
    {
        return $this->tgl_checkin;
    }

    public function getTglCheckout()
    {
        return $this->tgl_checkout;
    }

}

?>