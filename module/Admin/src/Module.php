<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Admin;

use Admin\Model\Home;
use Admin\Model\HomeTable;
use Admin\Model\Aboutus;
use Admin\Model\AboutusTable;
use Admin\Model\Service;
use Admin\Model\ServiceTable;
use Admin\Model\Gallery;
use Admin\Model\GalleryTable;
use Admin\Model\Career;
use Admin\Model\CareerTable;
use Admin\Model\Contactus;
use Admin\Model\ContactusTable;
use Admin\Model\Ourteam;
use Admin\Model\OurteamTable;
use Admin\Model\Blog;
use Admin\Model\BlogTable;
use Admin\Model\Executive;
use Admin\Model\ExecutiveTable;
use Admin\Model\Advisor;
use Admin\Model\AdvisorTable;

use User\Model\Classes;
use User\Model\ClassesTable;


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

class Module
{
    const VERSION = '3.0.3-dev';
    public function onBootstrap(MvcEvent $e)
    {
        $eventManager        = $e->getApplication()->getEventManager();
        $moduleRouteListener = new ModuleRouteListener();
        $moduleRouteListener->attach($eventManager);
        $sm = $e->getApplication()->getServiceManager();
        $sessionManager = $sm->get('SessionSaveManager');
        $sessionManager->start();
        /* html compress */
        $app = $e->getApplication();
        $sm = $app->getServiceManager();
        $eventManager = $app->getEventManager();

        $eventManager->getSharedManager()->attach('Zend\Mvc\Controller\AbstractActionController', 'dispatch', function($event) {
            $controller      = $event->getTarget();
            $controllerName  = get_class($controller);
            $moduleNamespace = substr($controllerName, 0, strpos($controllerName, '\\'));
            $configs         = $event->getApplication()->getServiceManager()->get('config');
            if (isset($configs['moduleLayouts'][$moduleNamespace])) {
                $controller->layout($configs['moduleLayouts'][$moduleNamespace]);
            }
        }, 100);
        /* html compress end */
    }
    public function getConfig()
    {
        return include __DIR__ . '/../config/module.config.php';
    }
     public function getServiceConfig()
    {
        return array(
                'factories' => array(

                
                "Admin\Model\HomeTable" => function ($sm) {
                    $tableGateway = $sm->get('HomeTableGateway');
                    /*$logger = $sm->get('User\Logger');*/
                    /*$table = new UserTable($tableGateway, $logger);*/
                    $table = new HomeTable($tableGateway);
                    return $table;
                },
                'HomeTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Home());
                    return new TableGateway('home', $dbAdapter, null, $resultSetPrototype);
                },
                "Admin\Model\AboutusTable" => function ($sm) {
                    $tableGateway = $sm->get('AboutusTableGateway');
                    /*$logger = $sm->get('User\Logger');*/
                    /*$table = new UserTable($tableGateway, $logger);*/
                    $table = new AboutusTable($tableGateway);
                    return $table;
                },
                'AboutusTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Aboutus());
                    return new TableGateway('aboutus', $dbAdapter, null, $resultSetPrototype);
                },
                "Admin\Model\ServiceTable" => function ($sm) {
                    $tableGateway = $sm->get('ServiceTableGateway');
                    /*$logger = $sm->get('User\Logger');*/
                    /*$table = new UserTable($tableGateway, $logger);*/
                    $table = new ServiceTable($tableGateway);
                    return $table;
                },
                'ServiceTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Service());
                    return new TableGateway('service', $dbAdapter, null, $resultSetPrototype);
                },
                    "Admin\Model\ContactusTable" => function ($sm) {
                    $tableGateway = $sm->get('ContactusTableGateway');
                    /*$logger = $sm->get('User\Logger');*/
                    /*$table = new UserTable($tableGateway, $logger);*/
                    $table = new ContactusTable($tableGateway);
                    return $table;
                },
                'ContactusTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Contactus());
                    return new TableGateway('contactus', $dbAdapter, null, $resultSetPrototype);
                },
                "Admin\Model\GalleryTable" => function ($sm) {
                    $tableGateway = $sm->get('GalleryTableGateway');
                    /*$logger = $sm->get('User\Logger');*/
                    /*$table = new UserTable($tableGateway, $logger);*/
                    $table = new GalleryTable($tableGateway);
                    return $table;
                },
                'GalleryTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Gallery());
                    return new TableGateway('gallery', $dbAdapter, null, $resultSetPrototype);
                },
                "Admin\Model\CareerTable" => function ($sm) {
                    $tableGateway = $sm->get('CareerTableGateway');
                    /*$logger = $sm->get('User\Logger');*/
                    /*$table = new UserTable($tableGateway, $logger);*/
                    $table = new CareerTable($tableGateway);
                    return $table;
                },
                'CareerTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Career());
                    return new TableGateway('career', $dbAdapter, null, $resultSetPrototype);
                },
                "Admin\Model\OurteamTable" => function ($sm) {
                    $tableGateway = $sm->get('OurteamTableGateway');
                    /*$logger = $sm->get('User\Logger');*/
                    /*$table = new UserTable($tableGateway, $logger);*/
                    $table = new OurteamTable($tableGateway);
                    return $table;
                },
                'OurteamTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Ourteam());
                    return new TableGateway('ourteam', $dbAdapter, null, $resultSetPrototype);
                },
                "Admin\Model\BlogTable" => function ($sm) {
                    $tableGateway = $sm->get('BlogTableGateway');
                    /*$logger = $sm->get('User\Logger');*/
                    /*$table = new UserTable($tableGateway, $logger);*/
                    $table = new BlogTable($tableGateway);
                    return $table;
                },
                'BlogTableGateway' => function ($sm) {
                    $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                    $resultSetPrototype = new ResultSet();
                    $resultSetPrototype->setArrayObjectPrototype(new Blog());
                    return new TableGateway('blog', $dbAdapter, null, $resultSetPrototype);
                },
                    "Admin\Model\ExecutiveTable" => function ($sm) {
                        $tableGateway = $sm->get('ExecutiveTableGateway');
                        /*$logger = $sm->get('User\Logger');*/
                        /*$table = new UserTable($tableGateway, $logger);*/
                        $table = new ExecutiveTable($tableGateway);
                        return $table;
                    },
                    'ExecutiveTableGateway' => function ($sm) {
                        $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                        $resultSetPrototype = new ResultSet();
                        $resultSetPrototype->setArrayObjectPrototype(new Executive());
                        return new TableGateway('executive', $dbAdapter, null, $resultSetPrototype);
                    },
                    "Admin\Model\AdvisorTable" => function ($sm) {
                        $tableGateway = $sm->get('AdvisorTableGateway');
                        /*$logger = $sm->get('User\Logger');*/
                        /*$table = new UserTable($tableGateway, $logger);*/
                        $table = new AdvisorTable($tableGateway);
                        return $table;
                    },
                    'AdvisorTableGateway' => function ($sm) {
                        $dbAdapter = $sm->get('Zend\Db\Adapter\Adapter');
                        $resultSetPrototype = new ResultSet();
                        $resultSetPrototype->setArrayObjectPrototype(new Advisor());
                        return new TableGateway('advisor', $dbAdapter, null, $resultSetPrototype);
                    },
                        
                        
        )

           
        );
    }

   /* public function onBootstrap($e)
    {
        $eventManager        = $e->getApplication()->getEventManager();
        $moduleRouteListener = new ModuleRouteListener();
        $moduleRouteListener->attach($eventManager);
        $sm = $e->getApplication()->getServiceManager();
        $sessionManager = $sm->get('SessionSaveManager');
        $sessionManager->start();
    }*/
}


