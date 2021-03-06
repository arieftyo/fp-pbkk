<?php

namespace Its\Example\Dashboard\Core\Domain\Model;

class User {
    protected $id;
    protected $nama;
    protected $email;
    protected $password;

    public function __construct($id, $nama, $email, $password)
    {
        $this->id = $id;
        $this->nama = $nama;
        $this->email = $email;
        $this->password = $password;
    }

    public function isExist()
    {
        return isset($this->id);
    }

    public function getNama()
    {
        return $this->nama;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getEmail()
    {
        return $this->email;
    }

    public function getPassword()
    {
        return $this->password;
    }

}

?>