<?php
namespace User\Model;



class User
{
    public $id;
    public $name;
    public $email;
    public $mobile;
    public $password;
    public $role;
    public $status;
    public $created_at;
    public $updated_at;

    public function exchangeArray($data)
    {
        $this->id = (!empty($data['id'])) ? $data['id'] : null;
        $this->name    = (!empty($data['name'])) ? $data['name'] : null;
        $this->email  = (!empty($data['email'])) ? $data['email'] : null;
        $this->mobile  = (!empty($data['mobile'])) ? $data['mobile'] : null;
        $this->password  = (!empty($data['password'])) ? $data['password'] : null;
        $this->role  = (!empty($data['role'])) ? $data['role'] : null;
        $this->status  = (!empty($data['status'])) ? $data['status'] : null;

    }
    public function getArrayCopy()
    {
        return get_object_vars($this);
    }

}