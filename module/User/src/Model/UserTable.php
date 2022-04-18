<?php

namespace User\Model;

use Admin\Model\Constants;
use Zend\Db\Sql\Where;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Sql\Sql;
use Zend\Log\Logger;
use Zend\Db\Sql\Predicate;
use Zend\Db\Sql\Expression;
use Zend\Db\Sql\Select;
use Application\Model\BaseTable;
use Zend\Crypt\BlockCipher;

class UserTable extends BaseTable
{
    protected $tableGateway;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
        $this->tableName = array("u" => "user");
    }

    public function fetchAll()
    {
        $resultSet = $this->tableGateway->select();
        return $resultSet;
    }

    public function addStaff($data)
    {
        try {
            $insert = $this->insert($data);
            return array("success" => true, "id" => $this->tableGateway->lastInsertValue);
        } catch (\Exception $e) {
            return array("success" => false);
        }
    }

    public function getHospitalStaffCount($data)
    {
        try {
            $where = new where();
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->columns(array("count" => new \Zend\Db\Sql\Expression("COUNT(u.user_id)")))
                ->where(array($where->equalTo("u.status",Constants::STATUS_ACTIVE)->and->notEqualTo("role", 1)));

            if(array_key_exists("hospital_id",$data)){
                $query->where($where->equalTo("u.hospital_id",$data['hospital_id']));
            }
            if(array_key_exists("designation_id",$data)){
                $query->where($where->equalTo("u.designation_id",$data['designation_id']));
            }
            $count = 0;
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $count = $row["count"];
            }
            return $count;
        } catch (\Exception $e) {
            return 0;
        }
    }

    public function getHospitalStaffOnId($userId)
    {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->columns(array("user_id", "name", "email", "mobile", "designation_id"))
                ->where(array("user_id" => $userId));

            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $data = $row;
            }
            return $data;
        } catch (\Exception $e) {
            return array();
        }
    }

    public function updateUser($data, $where)
    {
        try {
            $query = $this->update($data, $where);
            if ($query) {
                return array("success" => true);
            } else {
                return array("success" => false);
            }
        } catch (\Exception $e) {
            return array("success" => false);
        }
    }

    public function getEmployeeDesignation($id,$designation){
        try{
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->columns(array("user_id","designation_id","count" => new \Zend\Db\Sql\Expression("COUNT(user_id)")))
                ->where(array("u.user_id" => $id, "u.designation_id" => $designation,"u.status" => Constants::STATUS_ACTIVE));
            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach($resultSet as $row){
                $data = $row;
            }
            return $data;
        }catch(\Exception $e){
            return array();
        }
    }

    public function getUserById($userId){
        try{
            $where = new where();
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->columns(array("user_id","name","email","password","hash"))
                ->where(array("u.status" => Constants::STATUS_ACTIVE,"u.user_id" => $userId ));

            
            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach($resultSet as $row){
                $data = $row;
            }
            return $data;
        }catch(\Exception $e){
            return array();
        }
    }
    public function showStaffDetails($data)
    {
        try {
            $where = new Where();
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->columns(array("user_id", "name", "email", "mobile", "role","status"))
                ->join(array("h" => "hospital"), "h.id = u.hospital_id", array("hospital_name"))
                ->where(array($where->equalTo("u.status",Constants::STATUS_ACTIVE)->and->notEqualTo("role", 1)));

            if(array_key_exists("hospital_id",$data)){
                $query->where($where->equalTo("u.hospital_id",$data['hospital_id']));
            }
            if(array_key_exists("iDisplayLength",$data)){
                $query->limit($data['iDisplayLength']);

            }
            if(array_key_exists("iDisplayStart",$data)){
                $query->offset($data['iDisplayStart']);
            }
            if(array_key_exists("designation_id",$data)){
                $query->where($where->equalTo("u.designation_id",$data['designation_id']));
            }
            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $data[] = $row;
            }
            return $data;
        } catch (\Exception $e) {
            return array();
        }
    }

    public function isStaffExists($email,$mobile)
    {
        try {
            $where = new Where();
            $sql = $this->getsql();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->columns(array("email","mobile","count" => new \Zend\Db\Sql\Expression("COUNT(email)")))
                ->where($where->equalTo("u.email",$email)->or->equalTo("u.mobile",$mobile));
            $data =  array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $data = $row;
            }
            return $data;
        } catch (\Exception $e) {
            return false;
        }

    }

    public function isStaffExistsEdit($email, $staffId)
    {
        try {
            $where = new where();
            $sql = $this->getsql();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->columns(array("count" => new \Zend\Db\Sql\Expression("COUNT(email)")))
                ->where($where->equalTo("email", $email)->and->notEqualTo("user_id", $staffId));
            $count = 0;
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $count = $row["count"];
            }
            return $count ? true : false;
        } catch (\Exception $e) {
            return false;
        }
    }

    public function validateEmployeeOnHospitalId($hospitalId)
    {
        try {
            $where = new where();
            $sql = $this->getsql();
            $query = $sql->select()
                ->from(array("h" => "hospital"))
                ->columns(array("package_id",
                    "frontOfficeCount" => new \Zend\Db\Sql\Expression("(select count(user_id) from user where hospital_id = " . $hospitalId . " and status = " . Constants::STATUS_ACTIVE . " and role = " . Constants::ROLE_FRONT_END_LOGIN . ")"),
                    "dataUploaderCount" => new \Zend\Db\Sql\Expression("(select count(user_id) from user where hospital_id = " . $hospitalId . " and status = " . Constants::STATUS_ACTIVE . " and role = " . Constants::ROLE_DATA_UPLOADER_LOGIN . ")")))
                ->join(array("u" => "user"), "h.id = u.hospital_id", array("totalEmployees" => new \Zend\Db\Sql\Expression("COUNT(u.user_id)")), Select::JOIN_LEFT)
                ->join(array("p" => "package"), "p.id = h.package_id", array("executive_login", "uploader_login"), Select::JOIN_LEFT)
                ->where($where->equalTo("h.id", $hospitalId)->and->equalTo("u.status", Constants::STATUS_ACTIVE)->and->notEqualTo("u.role", Constants::ROLE_HOSPITAL_ADMIN));

            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();

            $data = array();
            foreach ($resultSet as $row) {
                $data = $row;
            }
            return $data;
        } catch (\Exception $e) {
            return array();
        }
    }

    public function getUser()
    {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->columns(array("name", "email", "mobile", "role"))
                ->where(array("u.status" => \Admin\Model\Package:: STATUS_ACTIVE));

            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $data[] = $row;
            }
            return $data;
        } catch (\Exception $e) {
            return array();
        }
    }

    public function authenticateUser($email, $password)
    {
        try {
           
            $sql = $this->getSql();
            $user = array();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->where(array('email' => $email));
            
            $result = $sql->prepareStatementForSqlObject($query)->execute();
           // echo $sql->getSqlStringForSqlObject($result);exit;
            foreach ($result as $row) {
                $user = $row;
                
            }
            if (count($user)) {
                $cipher = BlockCipher::factory('openssl', array('algorithm' => 'aes'));
                if ($user['hash'] == "") {
                    return array("success" => false,"user" => array());
                }
               
                $cipher->setKey($user['hash']);
                $decryptedPassword = $cipher->decrypt($user['password']);
               
                if ($decryptedPassword == $password) {
                    
                    
                   
                    return array("success" => true, "user" => $user);
                } else {
                    return array("success" => false,"user" => array());
                }
            } else {
                return array("success" => false,"user" => array());
            }
        } catch (\Exception $e) {
            return array("success" => false,"user" => array());
        }
    }

    public function authenticateUserApi($email, $password)
    {
        try {
            $sql = $this->getSql();
            $user = array();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->where(array('email' => $email));

            $result = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($result as $row) {
                $user = $row;
            }
            if (count($user)) {
                $cipher = BlockCipher::factory('mcrypt', array('algorithm' => 'aes'));
                if ($user['hash'] == "") {
                    return array("success" => false);
                }
                $cipher->setKey($user['hash']);
                $decryptedPassword = $cipher->decrypt($user['password']);
                if ($decryptedPassword == $password) {
                    return array("success" => true, "user" => $user);
                } else {
                    return array("success" => false);
                }
            } else {
                return array("success" => false);
            }
        } catch (\Exception $e) {
            return array("success" => false);
        }
    }

    public function checkActiveUser($authColumn)
    {
        try {
            
            $sql = $this->getSql();
            $user = array();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->where($authColumn);

            $result = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($result as $row) {
                $user = $row;
            }
            
            
            
            if (count($user)) {
                
            return array("success" => true, "user" => $user);
          } else {            
              
              return array("success" => false,"user" => array());
           }
            
            
            
        } catch (\Exception $e) {
            return array("success" => false,"user" => array());
        }
    }

    public function getUserHospitalVerified($hospitalId)
    {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("h" => "hospital"))
                ->columns(array("is_approved"))
                ->where(array("h.id" => $hospitalId, "h.is_approved" => \Admin\Model\Constants::STATUS_ACTIVE));

            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $data = $row;
            }
            if (count($data)) {
                return true;
            } else {
                return false;
            }
        } catch (\Exception $e) {
            return false;
        }
    }

    public function verifyOtp($data)
    {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->columns(array("user_id"))
                ->where(array("u.user_id" => $data['user_id'], "u.otp" => $data['otp']));

            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $data = $row;
            }
            if (count($data)) {
                return true;

            } else {
                return false;
            }
        } catch (\Exception $e) {
            return false;
        }
    }

    public function isHospitalRequestExists($email, $contact)
    {
        try {
            $sql = $this->getsql();
            $query = $sql->select()
                ->from(array("u" => "user"))
                ->columns(array("count" => new \Zend\Db\Sql\Expression("COUNT(email)")))
                ->where(array("email" => $email, "contact" => $contact));

            $count = 0;
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $count = $row["count"];
            }
            return $count ? true : false;
        } catch (\Exception $e) {
            return false;
        }
    }
}
