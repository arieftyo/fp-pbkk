<?php

$router->add(
    '/register/coba',
    [
        'namespace' => 'Its\Example\Dashboard\Presentation\Web\Controller',
        'module' => 'dashboard',
        'controller' => 'register',
        'action'     => 'coba',
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