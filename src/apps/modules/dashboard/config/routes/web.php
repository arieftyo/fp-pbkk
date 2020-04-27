<?php

$router->add(
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