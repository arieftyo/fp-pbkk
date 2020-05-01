<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;

use Phalcon\Mvc\Controller;

class PemesananController extends Controller
{
    protected $addPemesananService;
    protected $authSession;
    protected $getPemesananByIdUserService;
    protected $findHotelByIdService;
    protected $updateStatusBayarService;
    protected $deletePemesananService;
    protected $getPemesananByIdPemesananService;
    protected $updatePemesananDataService;
    
    public function initialize()
    {
        $this->authSession = $this->session->get('auth');
        $this->view->setVar('auth',  $this->authSession);
        $this->addPemesananService = $this->getDI()->get('addPemesananService');
        $this->getPemesananByIdUserService = $this->getDI()->get('getPemesananByIdUserService');
        $this->findHotelByIdService = $this->getDI()->get('findHotelByIdService');
        $this->updateStatusBayarService = $this->getDI()->get('updateStatusBayarService');
        $this->deletePemesananService = $this->getDI()->get('deletePemesananService');
        $this->getPemesananByIdPemesananService = $this->getDI()->get('getPemesananByIdPemesananService');
        $this->updatePemesananDataService=$this->getDI()->get('updatePemesananDataService');
    }

    public function konfirmasiAction($id_user, $id_hotel)
    {
        $data['nama_pemesan'] = $this->request->getPost('nama');
		$data['email'] = $this->request->getPost('email');
        $data['nama_tamu'] = $this->request->getPost('tamu');
        $data['telepon'] = $this->request->getPost('telepon');
        $pesanan = $this->session->get('pesanan');
        $hotel = $this->session->get('hotel');
        $tgl_checkin = explode ("/", $pesanan['checkin']);
        $tgl_checkout = explode ("/", $pesanan['checkout']);
        if($tgl_checkin[0] != $tgl_checkout[0])
        {
            $nDaysInMonth = cal_days_in_month(CAL_GREGORIAN, (int)$tgl_checkin[0],(int)$tgl_checkin[2]);
            $data['malam'] = ($nDaysInMonth + (int)$tgl_checkout[1]) - (int)$tgl_checkin[1];
            
        }
        else{
            $data['malam'] = (int)$tgl_checkout[1] - (int)$tgl_checkin[1];
        }
        $data['totalHarga'] = $data['malam']*(int)$hotel['harga']*(int)$pesanan['room'];
        $this->view->setVar('hotel',  $this->session->get('hotel'));
        $this->view->setVar('pesanan',  $this->session->get('pesanan'));
        $this->view->setVar('data', $data);
        $this->view->pick('pesanan-konfirmasi');
    }

    public function inputAction($id_user, $id_hotel)
    {
        $data['nama_pemesan'] = $this->request->getPost('nama');
		$data['email'] = $this->request->getPost('email');
        $data['nama_tamu'] = $this->request->getPost('tamu');
        $data['telepon'] = $this->request->getPost('telepon');
        $pesanan = $this->session->get('pesanan');
        $hotel = $this->session->get('hotel');
        $tgl_checkin = explode ("/", $pesanan['checkin']);
        $tgl_checkout = explode ("/", $pesanan['checkout']);
        if($tgl_checkin[0] != $tgl_checkout[0])
        {
            $nDaysInMonth = cal_days_in_month(CAL_GREGORIAN, (int)$tgl_checkin[0],(int)$tgl_checkin[2]);
            $data['malam'] = ($nDaysInMonth + (int)$tgl_checkout[1]) - (int)$tgl_checkin[1];
            
        }
        else{
            $data['malam'] = (int)$tgl_checkout[1] - (int)$tgl_checkin[1];
        }
        $data['totalHarga'] = strval($data['malam']*(int)$hotel['harga']*(int)$pesanan['room']);
        $data['id_user'] = $id_user;
        $data['id_hotel'] =  $id_hotel;
        $data['tgl_checkin'] = $pesanan['checkin'];
        $data['tgl_checkout'] = $pesanan['checkout'];
        $data['jumlah_kamar'] = $pesanan['room'];
        $data['status_bayar'] = 0;
        $result = $this->addPemesananService->execute($data);
        // if($result){
        //     die();
        // }
        $this->view->setVar('hotel',  $this->session->get('hotel'));
        $this->view->setVar('pesanan',  $this->session->get('pesanan'));
        $this->view->setVar('data', $data);
        $this->view->pick('pesanan-bayar');
    }

    public function pesananSayaAction($id_user)
    {
        $results = $this->getPemesananByIdUserService->execute($id_user);
        var_dump($results);
        $hotel = [];
        foreach($results as $key => $result){
            // var_dump($result['id_hotel']);
            $dataHotel = $this->findHotelByIdService->execute($result['id_hotel']);
            $results[$key]['foto_hotel'] = $dataHotel['foto_hotel'];
            $results[$key]['nama_hotel'] = $dataHotel['nama_hotel'];
            $results[$key]['kota_hotel'] = $dataHotel['kota_hotel'];
        }
        var_dump($results);
        // die();
        $this->view->setVar('pesanans', $results);
        $this->view->pick('pesanan-saya');
    }

    public function bayarAction($id_user, $id_pemesanan)
    {
        $result = $this->updateStatusBayarService->execute($id_pemesanan);
        $this->response->redirect('/pemesanan/pesananSaya/'.$id_user);
    }

    public function batalkanAction($id_user, $id_pemesanan)
    {
        
        $result = $this->deletePemesananService->execute($id_pemesanan);
        $this->response->redirect('/pemesanan/pesananSaya/'.$id_user);
    }

    public function editPesananAction($id_user, $id_pemesanan)
    {
        $result = $this->getPemesananByIdPemesananService->execute($id_pemesanan);
        $this->view->setVar('pesanan', $result);
        $this->view->pick('pesanan-edit');
    }

    public function updatePemesananAction($id_user, $id_pemesanan)
    {
        $data['nama_pemesan'] = $this->request->getPost('nama');
		$data['email'] = $this->request->getPost('email');
        $data['nama_tamu'] = $this->request->getPost('tamu');
        $data['telepon'] = $this->request->getPost('telepon');
        $result = $this->updatePemesananDataService->execute($id_pemesanan, $data);
        $this->response->redirect('/pemesanan/pesananSaya/'.$id_user);

    }

}