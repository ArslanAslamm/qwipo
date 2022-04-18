<?php

namespace Admin\Model;

use Zend\Db\Sql\Where;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Sql\Predicate;
use Zend\Db\Sql\Expression;
use Zend\Db\Sql\Select;
use Application\Model\BaseTable;
use Zend\Crypt\BlockCipher;
use Zend\Db\Sql\Predicate\Expression as Exp;

class ContactusTable extends BaseTable
{

    protected $tableGateway;
    protected $tableName;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
        $this->tableName = array("c" => "contactus");

    }

    public function addContactus($data)
    {         
        try{               
            $save = $this->insert($data);
            if($save){
                return array("success" =>true,"id" => $this->tableGateway->lastInsertValue);
            }else{
                return array("success" => false,"id" => 0);
            }
        }catch(\Exception $e){
           print_r($e->getMessage());exit;
            return array("success" => false,"id" => 0);
        }
    }
    public function addContactBanner($data)
    {         
        try{               
            $save = $this->insert($data);
            if($save){
                return array("success" =>true,"id" => $this->tableGateway->lastInsertValue);
            }else{
                return array("success" => false,"id" => 0);
            }
        }catch(\Exception $e){
           print_r($e->getMessage());exit;
            return array("success" => false,"id" => 0);
        }
    }
     
      public function getAddressData(){
        try
        {
            $sql = $this->getSql();         
            $query = $sql->select()
                    ->from(array("c"=>"contactus"))
                    ->order("contact_id DESC")                   
                    ->where(array("status" => 1,"type" => 2));
                   
            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row){
                $data[] = $row;
            }
            return $data;
                    
        } catch (\Exception $ex) {
            return array();
        }
    }
    public function getContactBanner(){
        try
        {
            $sql = $this->getSql();         
            $query = $sql->select()
                    ->from(array("c"=>"contactus"))
                    ->order("contact_id DESC")                   
                    ->where(array("status" => 1,"type" => 1));
                   
            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row){
                $data[] = $row;
            }
            return $data;
                    
        } catch (\Exception $ex) {
            return array();
        }
    }
    public function getContactQuery(){
        try
        {
            $sql = $this->getSql();         
            $query = $sql->select()
                    ->from(array("c"=>"contactus"))
                    ->order("contact_id DESC")                   
                    ->where(array("status" => 1,"type" => 3));
                   
            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row){
                $data[] = $row;
            }
            return $data;
                    
        } catch (\Exception $ex) {
            return array();
        }
    }
    
    
    
}