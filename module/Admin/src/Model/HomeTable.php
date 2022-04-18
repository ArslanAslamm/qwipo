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

class HomeTable extends BaseTable {

    protected $tableGateway;
    protected $tableName;

    public function __construct(TableGateway $tableGateway) {
        $this->tableGateway = $tableGateway;
        $this->tableName = array("h" => "home");
    }

    public function addHomeBanner($data) {
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

    public function addHowItWorks($data) {
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

    public function addFeatureHeading($data) {
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

    public function addFeaturesData($data) {
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

    public function getHomeBannerData() {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                    ->from(array("h" => "home"))
                    ->order("id DESC")
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

    public function updateHomeBanner($data, $where) {
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

    public function homeBannerById($bannerId) {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                    ->from(array("h" => "home"))
                    ->where(array("id" => $bannerId));
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

    public function getHowItWorksData() {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                    ->from(array("h" => "home"))
                    ->order("id DESC")
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

    public function getFeaturesHeading() {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                    ->from(array("h" => "home"))
                    ->order("id DESC")
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

    public function getAllFeatures() {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                    ->from(array("h" => "home"))
                    ->order("id DESC")                    
                    ->where(array("status" => 1, "type" => 4));

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
    public function getFeatures() {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                    ->from(array("h" => "home"))
                    ->order("id Asc")
                    ->limit(9)
                    ->where(array("status" => 1, "type" => 4));

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

    public function featuresById($bannerId) {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                    ->from(array("h" => "home"))
                    ->where(array("id" => $bannerId));
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
    public function updateFeatures($data, $where) {
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
    public function addStatisticsHeading($data) {
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
    public function getStaticsHeading() {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                    ->from(array("h" => "home"))
                    ->order("id DESC")
                    ->where(array("status" => 1, "type" => 5));

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
     public function addStatisticsData($data) {
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
    public function getAllStatistics() {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                    ->from(array("h" => "home"))
                    ->order("id DESC")
                    ->where(array("status" => 1, "type" => 6));

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
                    ->from(array("h" => "home"))
                    ->where(array("id" => $statisticsId));
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
