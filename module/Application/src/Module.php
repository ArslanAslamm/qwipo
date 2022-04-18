<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Application;

use User\Model\Classes;
use User\Model\ClassesTable;

use User\Model\Course;
use User\Model\CourseTable;
use User\Model\Lesson;
use User\Model\LessonTable;
use User\Model\CourseImages;
use User\Model\CourseImagesTable;
use User\Model\Instructor;
use User\Model\InstructorCourse;
use User\Model\InstructorCourseTable;
use User\Model\InstructorTable;
use User\Model\Policy;
use User\Model\PolicyTable;
use User\Model\RecommendedBooks;
use User\Model\RecommendedBooksTable;
use User\Model\CourseRecommended;
use User\Model\CourseRecommendedTable;
use User\Model\Subject;
use User\Model\SubjectList;
use User\Model\SubjectListTable;
use User\Model\SubjectTable;
use User\Model\Topics;
use User\Model\TopicsTable;
use User\Model\User;
use User\Model\UserTable;
use User\Model\Faqs;
use User\Model\FaqsTable;
use User\Model\TeachWithus;
use User\Model\TeachWithusTable;
use User\Model\FavouritesTable;
use User\Model\Favourites;
use User\Model\ReviewRating;
use User\Model\ReviewRatingTable;
use User\Model\CartTable;
use User\Model\Cart;
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

                'AuthDbTable' => function($sm) {
                    $dbAdapter      = $sm->get('Zend\Db\Adapter\Adapter');
                    $authDbTable    = new AuthDbTable($dbAdapter);
                    return $authDbTable;
                },
                'SessionStorage' => function($sm) {
                    $sessionStorage = new Session();
                    return $sessionStorage;
                },
                'AuthService' => function($sm) {
                    $authService    = new AuthenticationService();
                    return $authService;
                },
                'SessionManager' => function($sm) {
                    $sessionManager   = new SessionManager();
                    return $sessionManager;
                },
                'SessionSaveManager' => function($sm) {
                    $dbAdapter           = $sm->get('Zend\Db\Adapter\Adapter');
                    $sessionTableGateway = new TableGateway('session', $dbAdapter);
                    $optionsTableGateway = new DbTableGatewayOptions();
                    $optionsTableGateway -> setIdColumn('id')
                        ->setNameColumn('name')
                        ->setModifiedColumn('modified')
                        ->setLifetimeColumn('lifetime')
                        ->setDataColumn('data');
                    $sessionSaveHandler  = new DbTableGateway($sessionTableGateway, $optionsTableGateway);
                    $config = new SessionConfig();
                    $config->setOptions(array(
                        'remember_me_seconds' => 99999999999,
                        'gc_maxlifetime' => 99999999999,
                        'use_cookies' => true,
                        'cookie_httponly' => true,
                        'name'=> 'THRILL',
                    ));
                    $sessionManager = new SessionManager($config);
                    $sessionManager->setSaveHandler($sessionSaveHandler);
                    Container::setDefaultManager($sessionManager);
                    return $sessionManager;
                },
                'SessionDestroyManager' => function($sm) {
                    $manager      = new SessionManager();
                    $manager->getSaveHandler();
                    return $manager;
                },
                'Application\Channel\Mail' => function ($serviceManager)
                {
                    $transport = $serviceManager->get('mail.transport');
                    $mailer = new \Application\Channel\Mail($transport);
                    return $mailer;
                },
                'mail.transport' => function ($serviceManager)
                {
                    $config = $serviceManager->get('Config');
                    $transport = new \Zend\Mail\Transport\Smtp();
                    $transport->setOptions(new \Zend\Mail\Transport\SmtpOptions($config['mail']['transport']['options']));
                    return $transport;
                },
            ),
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
