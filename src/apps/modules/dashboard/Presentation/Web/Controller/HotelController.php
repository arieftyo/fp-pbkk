<?php

namespace Its\Example\Dashboard\Presentation\Web\Controller;

use Phalcon\Mvc\Controller;

class HotelController extends Controller
{
    protected $findHotelService;
    protected $findHotelByIdService;
    protected $authSession;

    public function initialize(){
        $this->findHotelService = $this->getDI()->get('findHotelService');
        $this->findHotelByIdService = $this->getDI()->get('findHotelByIdService');
        $this->authSession = $this->session->get('auth');
        $this->view->setVar('auth',  $this->authSession);
    }

    public function searchHotelAction(){
        $data['kota'] =$this->request->getPost('kota');
        $data['checkin'] = $this->request->getPost('checkin');
        $data['checkout'] = $this->request->getPost('checkout');
        $data['room'] = $this->request->getPost('room');
        $data['person'] = $this->request->getPost('person');
        
        $result = $this->findHotelService->execute($data);
        
        if($result !== null)
        {
            $this->session->set('pesanan', array(
                'kota' =>  $data['kota'],
                'checkin' => $data['checkin'],
                'checkout' => $data['checkout'],
                'room' =>  $data['room'],
                'person'=>  $data['person']
            ));

            $this->view->setVar('hotels',  $result);
            $this->view->pick('hotel-search');    
        }
        else{
            $this->response->redirect('/');
        }
        
    }

    public function detailHotelAction($id_hotel){
        $result = $this->findHotelByIdService->execute($id_hotel);
        $this->view->setVar('hotel',  $result);
        $this->session->set('hotel', array(
            'id_hotel' =>  $result['id_hotel'],
            'nama' => $result['nama_hotel'],
            'harga' => $result['harga_hotel'],
            'foto' =>  $result['foto_hotel'],
            'alamat' => $result['alamat_hotel']
        ));
        $this->view->pick('hotel-detail'); 
    }

    public function pesanHotelAction($id_hotel){
        
        // $result = $this->findHotelByIdService->execute($id_hotel);
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
        $this->view->setVar('data',  $data);
        $this->view->pick('hotel-pesan'); 
    }

}
