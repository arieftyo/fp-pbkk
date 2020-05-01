<?php

$router->addGet(
    '/register',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'auth',
        'action'     => 'coba',
    ]
);

$router->addPost('/register/submit', [
    'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
    'module' => 'dashboard',
    'controller' => 'auth',
    'action' => 'registerSubmit'
]);

$router->add(
    '/login',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'auth',
        'action'     => 'login',
    ]
);

$router->addPost(
    '/login/submit',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'auth',
        'action'     => 'loginSubmit',
    ]
);

$router->add(
    '/getUser/:params',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'index',
        'action'     => 'getUser',
        'params' =>1,
    ]
);

$router->add(
    '/logout',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'auth',
        'action'     => 'logOut',
    ]
);

$router->add(
    '/pesanForm',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'auth',
        'action'     => 'formPesan', 
    ]
);

$router->addPost(
    '/searchHotel',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'hotel',
        'action'     => 'searchHotel', 
    ]
);

$router->add(
    '/hotel/detailHotel/:params',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'hotel',
        'action'     => 'detailHotel', 
        'params' =>1,
    ]
);

$router->add(
    '/hotel/pesanHotel/:params',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'hotel',
        'action'     => 'pesanHotel', 
        'params' =>1,
    ]
);

$router->addPost(
    '/pemesanan/konfirmasi/:int/:int',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'pemesanan',
        'action'     => 'konfirmasi', 
        'id_user' => 1,
        'id_hotel' => 2,
    ]
);

$router->addPost(
    '/pemesanan/input/:int/:int',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'pemesanan',
        'action'     => 'input', 
        'id_user' => 1,
        'id_hotel' => 2,
    ]
);

$router->add(
    '/pemesanan/pesananSaya/:params',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'pemesanan',
        'action'     => 'pesananSaya', 
        'params' => 1
    ]
);

$router->add(
    '/bayar/:int/:int',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'pemesanan',
        'action'     => 'bayar', 
        'id_user' => 1,
        'id_pemesanan'=>2
    ]
);

$router->add(
    '/batalkan/:int/:int',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'pemesanan',
        'action'     => 'batalkan', 
        'id_user' => 1,
        'id_pemesanan'=>2
    ]
);

$router->add(
    '/editPesanan/:int/:int',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'pemesanan',
        'action'     => 'editPesanan', 
        'id_user' => 1,
        'id_pemesanan'=>2
    ]
);

$router->addPost(
    '/updatePemesanan/:int/:int',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'pemesanan',
        'action'     => 'updatePemesanan', 
        'id_user' => 1,
        'id_pemesanan'=>2
    ]
);

