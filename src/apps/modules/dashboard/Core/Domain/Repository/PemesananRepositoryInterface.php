<?php

namespace Its\Example\Dashboard\Core\Domain\Repository;

use Its\Example\Dashboard\Core\Domain\Model\Pemesanan;

interface PemesananRepositoryInterface {
    public function addPemesanan($data);
    public function getPemesananByIdUser($id);
    public function updateStatusBayar($id_pemesanan);
    public function deletePemesanan($id_pemesanan);
    public function getPemesananByIdPemesanan($id_pemesanan);
    public function updatePemesananData($id_pemesanan, $data);
}

?>