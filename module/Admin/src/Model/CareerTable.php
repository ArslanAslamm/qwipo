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

class CareerTable extends BaseTable
{

    protected $tableGateway;
    protected $tableName;

    public function __construct(TableGateway $tableGateway)
    {
        $this->tableGateway = $tableGateway;
        $this->tableName = array("c" => "career");
    }

    public function addCareerBanner($data)
    {
        try {
            $save = $this->insert($data);
            if ($save) {
                return array("success" => true, "id" => $this->tableGateway->lastInsertValue);
            } else {
                return array("success" => false, "id" => 0);
            }
        } catch (\Exception $e) {
            print_r($e->getMessage());
            exit;
            return array("success" => false, "id" => 0);
        }
    }
    public function addCareerApply($data)
    {
        try {
            $save = $this->insert($data);
            if ($save) {
                return array("success" => true, "id" => $this->tableGateway->lastInsertValue);
            } else {
                return array("success" => false, "id" => 0);
            }
        } catch (\Exception $e) {
            print_r($e->getMessage());
            exit;
            return array("success" => false, "id" => 0);
        }
    }

    public function getCareerBanner()
    {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("c" => "career"))
                ->order("career_id DESC")
                ->where(array("status" => 1, "type" => 1));

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
    public function updateHomeBanner($data, $where)
    {
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
    public function addCareerData($data)
    {
        try {
            $save = $this->insert($data);
            if ($save) {
                return array("success" => true, "id" => $this->tableGateway->lastInsertValue);
            } else {
                return array("success" => false, "id" => 0);
            }
        } catch (\Exception $e) {
            print_r($e->getMessage());
            exit;
            return array("success" => false, "id" => 0);
        }
    }
    public function getCareer()
    {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("c" => "career"))
                ->order("position_order ASC")
                ->where(array("status" => 1, "type" => 2));

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
    public function careerById($careerId)
    {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("c" => "career"))
                ->where(array("career_id" => $careerId));
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
    public function updateCareer($data, $where)
    {
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
    public function getCareerApplication()
    {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("c" => "career"))
                ->order("career_id DESC")
                ->where(array("status" => 1, "type" => 3));

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
}
