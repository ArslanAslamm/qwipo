<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace User;

use User\Model\NewsLetter;
use User\Model\NewsLetterTable;
use Zend\Authentication\Storage\Session;
use Zend\Db\ResultSet\ResultSet;
use Zend\Db\TableGateway\TableGateway;
use Zend\Mvc\ModuleRouteListener;
use Zend\Mvc\MvcEvent;
use Zend\Session\Config\SessionConfig;
use Zend\Session\Container;
use Zend\Session\SaveHandler\DbTableGateway;
use Zend\Session\SaveHandler\DbTableGatewayOptions;
use Zend\Authentication\AuthenticationService;
use Zend\Authentication\Adapter\DbTable as AuthDbTable;
use Zend\Session\SessionManager;

use User\Model\User;
use User\Model\UserTable;

class Module
{
    const VERSION = '3.0.3-dev';
    public function getConfig()
    {
        return include __DIR__ . '/../config/module.config.php';

    }

    public function getServiceConfig()
    {
        return array(
            'factories' => array(
                'User\Model\UserTable' => function ($sm) {
                    $tableGateway = $sm->get('UserTableGateway');
                    /*$logger = $sm->get('User\Logger');*/
                    /*$table = new UserTable($tableGateway, $logger);*/
                    $table = new UserTable($tableGateway);
                    return $table;
                },
                'UserTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new User());
                    return new TableGateway('user', $dbAdapter, null, $resultSetPrototype);
                },
                'User\Model\NewsLetterTable' => function ($sm) {
                    $tableGateway = $sm->get('NewsLetterTableGateway');
                    /*$logger = $sm->get('User\Logger');*/
                    /*$table = new UserTable($tableGateway, $logger);*/
                    $table = new NewsLetterTable($tableGateway);
                    return $table;
                },
                'NewsLetterTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new NewsLetter());
                    return new TableGateway('news_letter', $dbAdapter, null, $resultSetPrototype);
                },
            ),
        );
    }
}
