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

    public function addUser($data): User{
        $sql = "INSERT INTO [user] (nama, email, password) VALUES(:nama, :email, :password)";
        $params = ['nama' => $data['nama'],
                'email' => $data['email'],
                'password' => $data['password']
                ];
        $result = $this->db->execute($sql, $params);
        $user = new User(
            2,
            $data['nama'],
            $data['email'],
            $data['password']
        );
        return $user;
    }

    public function login($data){
        $sql = "SELECT * from [user] WHERE email=:email and password=:password";
        $params = ['email' => $data['email'],
                'password' => $data['password']
        ];

        $result= $this->db->execute($sql, $params);
        return $result;
    }

}