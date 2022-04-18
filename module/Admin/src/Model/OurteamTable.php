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

class OurteamTable extends BaseTable
{

    protected $tableGateway;
    protected $tableName;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
        $this->tableName = array("o" => "ourteam");

    }

    public function addOurTeam($data)
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
     
      public function getOurTeamData(){
        try
        {
            $sql = $this->getSql();         
            $query = $sql->select()
                    ->from(array("o"=>"ourteam"))
                    ->order("position_order ASC")                   
                    ->where(array("status" => 1));
                   
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
    public function updateOurTeam($data, $where){
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
        
    public function teamById($teamId) {
        try {
            $sql = $this->getSql();
           $query = $sql->select()
                    ->from(array("o" => "ourteam"))
                    ->where(array("team_id" => $teamId));
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
