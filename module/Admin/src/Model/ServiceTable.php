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

class ServiceTable extends BaseTable
{

    protected $tableGateway;
    protected $tableName;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
        $this->tableName = array("s" => "service");

    }

    public function addServiceBanner($data)
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
     
      public function getServiceBanner(){
        try
        {
            $sql = $this->getSql();         
            $query = $sql->select()
                    ->from(array("s"=>"service"))
                    ->order("service_id DESC")                   
                    ->where(array("status" => 1,"type" =>1));
                   
            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
//            echo $sql->getSqlStringForSqlObject($query);exit;
            foreach ($resultSet as $row){
                $data[] = $row;
            }
            return $data;
                    
        } catch (\Exception $ex) {
            return array();
        }
    }
     public function addServiceHeading($data)
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
    public function getServiceHeading(){
        try
        {
            $sql = $this->getSql();         
            $query = $sql->select()
                    ->from(array("s"=>"service"))
                    ->order("service_id DESC")                   
                    ->where(array("status" => 1,"type" =>2));
                   
            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
//            echo $sql->getSqlStringForSqlObject($query);exit;
            foreach ($resultSet as $row){
                $data[] = $row;
            }
            return $data;
                    
        } catch (\Exception $ex) {
            return array();
        }
    }
    public function addService($data)
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
    public function getAllServices(){
        try
        {
            $sql = $this->getSql();         
            $query = $sql->select()
                    ->from(array("s"=>"service"))
                    ->order("service_id DESC")                   
                    ->where(array("status" => 1,"type" =>3));
                   
            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
//            echo $sql->getSqlStringForSqlObject($query);exit;
            foreach ($resultSet as $row){
                $data[] = $row;
            }
            return $data;
                    
        } catch (\Exception $ex) {
            return array();
        }
    }
    public function updateServices($data, $where){
        try {
           
            $query = $this->update($data, $where);
            if ($query) {
                return array("success"=> true);
            } else {
                return array("success"=>false);
            }
        } catch (\Exception $e) {
            print_r($e->getMessage());exit;
            return false;
        } 
        }
        
    public function serviceById($serviceId) {
        try {
            $sql = $this->getSql();
           $query = $sql->select()
                    ->from(array("s" => "service"))
                    ->where(array("service_id" => $serviceId));
            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $data = $row;
            }
            return $data;
        } catch (\Exception $ex) {
            return array();
        }
    }
}