<?php

/**
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Application;

use Zend\Router\Http\Literal;
use Zend\Router\Http\Segment;
use Zend\ServiceManager\Factory\InvokableFactory;

return [
    'router' => [
        'routes' => [
            'home' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'index',
                    ],
                     'route' => '[/:var1]',
                    'constraints' => array(
                        'var1' => '[a-zA-Z0-9_.-^\x00-\x7F]*',                     
                       
                    ),
                ],
            ],
            'index' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/application/index[/:action]',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'index',
                    ],
                ],
            ],
            'login' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/login',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'login',
                    ],
                ],
            ],
            'aboutus' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/aboutus',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'aboutus',
                    ],
                ],
            ],
            'faqs' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/faqs',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'faqs',
                    ],
                ],
            ],
            'returns' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/returns',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'returns',
                    ],
                ],
            ],
            'services' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/qwiposervices',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'services',
                    ],
                ],
            ],
            'services-single' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/services-single',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'services-single',
                    ],
                ],
            ],
            'apply-career' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/apply-career',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'apply-career',
                    ],
                ],
            ],
            'blogs' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/blogs',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'blogs',
                    ],
                ],
            ],
            'blogs-single' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/blogs-single',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'blogs-single',
                    ],
                ],
            ],
            'gallery' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/gallery',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'gallery',
                    ],
                ],
            ],
            'careers' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/careers',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'careers',
                    ],
                ],
            ],
            'careers-single' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/careers-single',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'careers-single',
                    ],
                ],
            ],
            'contactus' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/contactus',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'contactus',
                    ],
                ],
            ],
            'terms-conditions' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/terms-conditions',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'terms-conditions',
                    ],
                ],
            ],
            'privacy-policy' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/privacy-policy',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'privacy-policy',
                    ],
                ],
            ],
            'ir' => [
                'type' => Segment::class,
                'options' => [
                    'route' => '/ir',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action' => 'ir',
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
    'view_manager' => [
        'display_not_found_reason' => true,
        'display_exceptions' => true,
        'doctype' => 'HTML5',
        'not_found_template' => 'error/404',
        'exception_template' => 'error/index',
        'template_map' => [
            'layout/layout' => __DIR__ . '/../view/layout/layout.phtml',
            'application/index/index' => __DIR__ . '/../view/application/index/index.phtml',
            'error/404' => __DIR__ . '/../view/error/404.phtml',
            'error/index' => __DIR__ . '/../view/error/index.phtml',
        ],
        'template_path_stack' => [
            __DIR__ . '/../view',
        ],
        'strategies' => [
            'ViewJsonStrategy'
        ]
    ],
];
