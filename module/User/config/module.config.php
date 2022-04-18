<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */


namespace User;

use User\Controller\IndexController;
use Zend\Router\Http\Literal;
use Zend\Router\Http\Segment;
use Zend\ServiceManager\Factory\InvokableFactory;

return [
    'router' => [
        'routes' => [
            'login' => [
                'type' => Literal::class,
                'options' => [
                    'route'    => '/login',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'login',
                    ],
                ],
            ],
            'user' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/user[/:action]',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'index',
                    ],
                ],
            ],
        
            'logout' => [
                            'type' => Segment::class,
                            'options' => [
                                'route' => '/logout',
                                'defaults' => [
                                    'controller' => Controller\IndexController::class,
                                    'action' => 'logout',
                                ],
                            ],
                        ],
           
        
            'reset-password' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/reset-password',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'reset-password',
                    ],
                ],
            ],

            'forgot-password' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/forgot-password',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'forgot-password',
                    ],
                ],
            ],

        

         

        ],
    ],
    'controllers' => [
        'factories' => [
            Controller\IndexController::class => InvokableFactory::class,
        ],
    ],
    'moduleLayouts' => [
        'User' => 'layout/layout',
    ],
    'view_manager' => [
        'display_not_found_reason' => true,
        'display_exceptions'       => true,
        'doctype'                  => 'HTML5',
        'not_found_template'       => 'error/404',
        'exception_template'       => 'error/index',
        'template_map' => [
            /*'layout/layout'           => __DIR__ . '/../view/layout/layout.phtml',*/
            'user/index/index' => __DIR__ . '/../view/user/index/index.phtml',
            /*'error/404'               => __DIR__ . '/../view/error/404.phtml',
            'error/index'             => __DIR__ . '/../view/error/index.phtml',*/
        ],
        'template_path_stack' => [
            __DIR__ . '/../view',
        ],
        'strategies' => [
            'ViewJsonStrategy'
        ]
    ],
];