<?php
namespace Its\Example\Dashboard\Infrastructure\Persistence;

use Its\Example\Dashboard\Core\Domain\Model\User;
use Its\Example\Dashboard\Core\Domain\Repository\UserRepositoryInterface;

class SqlServerUserRepository implements UserRepositoryInterface{
    protected $db;
    
    public function __construct($db){
        $this->db = $db;
    }

    public function findById($id) : User{
        $sql = "SELECT * from [user] WHERE id=:id";
        
        $param = ['id' => $id];

        $userResult = $this->db->fetchOne($sql, \Phalcon\Db\Enum::FETCH_ASSOC, $param);

        $user = new User(
            $userResult['id'],
            $userResult['nama'],
            $userResult['email'],
            $userResult['password']
        );
        return $user;
    }

    public function updateUser(User $user) : User{
        // return new User()
    }

}