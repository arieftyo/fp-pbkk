<?php

namespace Its\Example\Dashboard\Core\Domain\Repository;

use Its\Example\Dashboard\Core\Domain\Model\User;

interface UserRepositoryInterface {
    public function findById($id) : User;
    public function updateUser(User $user) : User;
    
}

?>