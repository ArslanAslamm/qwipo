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

class StatisticsTable extends BaseTable {

    protected $tableGateway;
    protected $tableName;

    public function __construct(TableGateway $tableGateway) {
        $this->tableGateway = $tableGateway;
        $this->tableName = array("h" => "statistics");
    }

   
    public function getAllNumberStatistics() {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                    ->from(array("h" => "statistics"))
                    ->order("id DESC");

            $data = array();
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $data[] = $row;
            }
            return $data;
        } catch (\Exception $ex) {
            return array();
        }
    }
    public function statisticsById($statisticsId) {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                    ->from(array("h" => "statistics"));
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
    public function updateStatistics($data, $where) {
        try {

            $query = $this->update($data, $where);
            if ($query) {
                return array("success" => true);
            } else {
                return array("success" => false);
            }
        } catch (\Exception $e) {
            print_r($e->getMessage());
            exit;
            return false;
        }
    }

}
