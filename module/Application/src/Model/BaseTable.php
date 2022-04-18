<?php
namespace Application\Model;

use User\Model\Login;
use Zend\Db\Sql\Where;
use Zend\Db\TableGateway\TableGateway;
use Zend\Db\Sql\Sql;
use Zend\Log\Logger;
use Zend\Db\Sql\Select;
use Zend\Db\Sql\Expression;
use Zend\Db\Sql\Predicate;

class BaseTable
{
    protected $tableGateway;
    protected $logger;
    protected $sql;
    protected $select;

    const GENERAL_EXCEPTION_MSG = "Oops! Looks like server encountered some problem. Please try again.";

    function __construct(TableGateway $tablegateway, Logger $logger)
    {
        $this->tableGateway = $tablegateway;
        $this->logger = $logger;
    }



    public function getSql()
    {
        $dbAdapter = $this->tableGateway->adapter;
        $sql = new Sql($dbAdapter);

        return $sql;
    }

    public function getSelect()
    {
        $dbAdapter = $this->tableGateway->adapter;
        $select = new Select($dbAdapter);

        return $select;
    }

    protected function queryToString($query)
    {
        return $query->getSqlString($this->tableGateway->adapter->getPlatform());
    }

    protected function insert($data)
    {
        $data["created_at"] = date("Y-m-d H:i:s");
        $data["updated_at"] = date("Y-m-d H:i:s");
        $insert = $this->tableGateway->insert($data);
        return $insert;
    }

    protected function delete($where){
        $delete = $this->tableGateway->delete($where);
        return $delete;
    }

    protected function update($data, $where)
    {
        $data["updated_at"] = date("Y-m-d H:i:s");
        $update = $this->tableGateway->update($data, $where);
        return $update;
    }

    protected function insertOrUpdate(array $insertData, array $updateData)
    {
        $sqlStringTemplate = 'INSERT INTO %s (%s) VALUES (%s) ON DUPLICATE KEY UPDATE %s';
        $adapter = $this->tableGateway->adapter; /* Get adapter from tableGateway */
        $driver = $adapter->getDriver();
        $platform = $adapter->getPlatform();

        $tableName = $platform->quoteIdentifier($this->tableGateway->getTable());
        $parameterContainer = new \Zend\Db\Adapter\ParameterContainer();
        $statementContainer = $adapter->createStatement();
        $statementContainer->setParameterContainer($parameterContainer);

        /* Preparation insert data*/
        $insertQuotedValue = array();
        $insertQuotedColumns = array();
        foreach ($insertData as $column => $value) {
            $insertQuotedValue[] = $driver->formatParameterName($column);
            $insertQuotedColumns[] = $platform->quoteIdentifier($column);
            $parameterContainer->offsetSet($column, $value);
        }

        /* Preparation update data*/
        $updateQuotedValue = array();
        foreach ($updateData as $column => $value) {
            $updateQuotedValue[] = $platform->quoteIdentifier($column) . '=' . $driver->formatParameterName('update_' . $column);
            $parameterContainer->offsetSet('update_' . $column, $value);
        }

        /* Preparation sql query*/
        $query = sprintf(
            $sqlStringTemplate,
            $tableName,
            implode(',', $insertQuotedColumns),
            implode(',', array_values($insertQuotedValue)),
            implode(',', $updateQuotedValue)
        );

        $statementContainer->setSql($query);
        return $statementContainer->execute();
    }

    protected function multiInsert(array $data)
    {
        if (count($data)) {

            $adapter = $this->tableGateway->adapter;
            $columns = (array)current($data);
            $columns = array_keys($columns);
            $columnsCount = count($columns);
            $platform = $adapter->getPlatform();
            array_filter($columns, function (&$item) use ($platform) {
                $item = $platform->quoteIdentifier($item);
            });
            $columns = "(" . implode(',', $columns) . ")";

            $placeholder = array_fill(0, $columnsCount, '?');
            $placeholder = "(" . implode(',', $placeholder) . ")";
            $placeholder = implode(',', array_fill(0, count($data), $placeholder));

            $values = array();
            foreach ($data as $row) {
                foreach ($row as $key => $value) {
                    $values[] = $value;
                }
            }

            $table = $platform->quoteIdentifier($this->tableGateway->getTable());
            $query = "INSERT INTO $table $columns VALUES $placeholder";
            $this->tableGateway->adapter->query($query)->execute($values);
            return true;
        } else{
            return false;
        }
    }
    public function getTableField($tableName, $where, $column)
    {
        try {
            $sql = $this->getSql();
            $query = $sql->select()
                ->from(array("s" => $tableName))
                ->columns(array("" . $column . ""))
                ->where($where);
            $field = "";
            $resultSet = $sql->prepareStatementForSqlObject($query)->execute();
            foreach ($resultSet as $row) {
                $field = $row['' . $column . ''];
            }

            return $field;

        } catch (\Exception $e) {
            //$this->logger->err($e->getMessage());
            return "";
        }
    }

}