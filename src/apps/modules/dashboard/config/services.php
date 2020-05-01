<?php

use Its\Example\Dashboard\Core\Application\Service\AddPemesanan\AddPemesananService;
use Phalcon\Session\Manager as Session;
use Phalcon\Session\Adapter\Stream;
use Its\Example\Dashboard\Core\Application\Service\AddUser\AddUserService;
use Its\Example\Dashboard\Core\Application\Service\DeletePemesanan\DeletePemesananService;
use Phalcon\Mvc\View;
use Its\Example\Dashboard\Infrastructure\Persistence\SqlServerUserRepository;
use Its\Example\Dashboard\Infrastructure\Persistence\SqlServerHotelRepository;
use Its\Example\Dashboard\Core\Application\Service\FindUserById\FindUserByIdService;
use Its\Example\Dashboard\Core\Application\Service\LoginUser\LoginUserService;
use Its\Example\Dashboard\Core\Application\Service\FindHotel\FindHotelService;
use Its\Example\Dashboard\Core\Application\Service\FindHotelById\FindHotelByIdService;
use Its\Example\Dashboard\Core\Application\Service\GetPemesananByIdPemesanan\GetPemesananByIdPemesananService;
use Its\Example\Dashboard\Core\Application\Service\GetPemesananByIdUser\GetPemesananByIdUserService;
use Its\Example\Dashboard\Core\Application\Service\UpdatePemesananData\UpdatePemesananDataService;
use Its\Example\Dashboard\Core\Application\Service\UpdateStatusBayar\UpdateStatusBayarService;
use Its\Example\Dashboard\Infrastructure\Persistence\SqlServerPemesananRepository;

$di['view'] = function () {
    $view = new View();
    $view->setViewsDir(__DIR__ . '/../Presentation/Web/views/');

    $view->registerEngines(
        [
            ".volt" => "voltService",
        ]
        );

    return $view;
};

$di['db'] = function () use ($di) {
    $config = $di->get('config');

    $dbAdapter = $config->database->adapter;

    return new \Phalcon\Db\Adapter\Pdo\Sqlsrv([
        'host' => $config->database->host,
        'username' => $config->database->username,
        'password' => $config->database->password,
        'dbname' => $config->database->dbname,
        'port' => $config->database->port
    ]);
};

//Set sql Repository
$di->set('sqlServerUserRepository', function () use ($di){
    return new SqlServerUserRepository($di->get('db'));
});

$di->set('sqlServerHotelRepository', function () use ($di){
    return new SqlServerHotelRepository($di->get('db'));
});

$di->set('sqlServerPemesananRepository', function () use ($di){
    return new SqlServerPemesananRepository($di->get('db'));
});


//Set User Service
$di->setShared('findUserByIdService', function () use ($di){
    return new FindUserByIdService($di->get('sqlServerUserRepository'));
});

$di->setShared('addUserService', function () use ($di){
    return new AddUserService($di->get('sqlServerUserRepository'));
});

$di->setShared('loginUserService', function () use ($di){
    return new LoginUserService($di->get('sqlServerUserRepository'));
});

//Set Hotel Service
$di->setShared('findHotelService', function () use ($di){
    return new FindHotelService($di->get('sqlServerHotelRepository'));
});

$di->setShared('findHotelByIdService', function () use ($di){
    return new FindHotelByIdService($di->get('sqlServerHotelRepository'));
});

//Set Pemesanan Service
$di->setShared('addPemesananService', function () use ($di){
    return new AddPemesananService($di->get('sqlServerPemesananRepository'));
});

$di->setShared('getPemesananByIdUserService', function () use ($di){
    return new GetPemesananByIdUserService($di->get('sqlServerPemesananRepository'));
});

$di->setShared('updateStatusBayarService', function () use ($di){
    return new UpdateStatusBayarService($di->get('sqlServerPemesananRepository'));
});

$di->setShared('deletePemesananService', function () use ($di){
    return new DeletePemesananService($di->get('sqlServerPemesananRepository'));
});

$di->setShared('getPemesananByIdPemesananService', function () use ($di){
    return new GetPemesananByIdPemesananService($di->get('sqlServerPemesananRepository'));
});

$di->setShared('updatePemesananDataService', function () use ($di){
    return new UpdatePemesananDataService($di->get('sqlServerPemesananRepository'));
});