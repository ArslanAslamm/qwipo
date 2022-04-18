<?php
/**
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2016 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */


namespace Admin;

use Admin\Controller\IndexController;
use Zend\Router\Http\Literal;
use Zend\Router\Http\Segment;
use Zend\ServiceManager\Factory\InvokableFactory;

return [
    'router' => [
        'routes' => [
           /* 'home' => [
                'type' => Literal::class,
                'options' => [
                    'route'    => '/',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'index',
                    ],
                ],
            ],*/
            
            'admin' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/index[/:action]',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'admin',
                    ],
                ],
            ],
           
            'admin-home' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/admin-home',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'admin-home',
                    ],
                ],
            ],
            'add-home-banner' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-home-banner',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-home-banner',
                    ],
                ],
            ],
            'edit-home-banner' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/edit-home-banner',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'edit-home-banner',
                    ],
                ],
            ],
            'update-home-banner' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/update-home-banner',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'update-home-banner',
                    ],
                ],
            ],
            'delete-home-banner' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/delete-home-banner',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'delete-home-banner',
                    ],
                ],
            ],
            'about-us' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/about-us',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'about-us',
                    ],
                ],
            ],
            'add-about-us' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-about-us',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-about-us',
                    ],
                ],
            ],
            
             'features' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/features',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'features',
                    ],
                ],
            ],
            'add-feature-heading' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-feature-heading',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-feature-heading',
                    ],
                ],
            ],
            'add-features' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-features',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-features',
                    ],
                ],
            ],
            'edit-features' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/edit-features',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'edit-features',
                    ],
                ],
            ],
            'update-features' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/update-features',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'update-features',
                    ],
                ],
            ],
            'delete-features' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/delete-features',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'delete-features',
                    ],
                ],
            ],
            'statistics' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/statistics',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'statistics',
                    ],
                ],
            ],
            'add-statistics-heading' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-statistics-heading',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-statistics-heading',
                    ],
                ],
            ],
            'add-statistics' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-statistics',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-statistics',
                    ],
                ],
            ],
            'edit-statistics' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/edit-statistics',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'edit-statistics',
                    ],
                ],
            ],
            'update-statistics' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/update-statistics',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'update-statistics',
                    ],
                ],
            ],
            'delete-statistics' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/delete-statistics',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'delete-statistics',
                    ],
                ],
            ],
            'add-how-it-works' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-how-it-works',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-how-it-works',
                    ],
                ],
            ],
             'service' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/service',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'service',
                    ],
                ],
            ],
            'add-service-banner' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-service-banner',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-service-banner',
                    ],
                ],
            ],
            'add-service-heading' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-service-heading',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-service-heading',
                    ],
                ],
            ],
            'add-service' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-service',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-service',
                    ],
                ],
            ],
            
            'edit-services' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/edit-services',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'edit-services',
                    ],
                ],
            ],
            'update-services' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/update-services',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'update-services',
                    ],
                ],
            ],
            'delete-services' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/delete-services',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'delete-services',
                    ],
                ],
            ],
            'blog' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/blog',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'blog',
                    ],
                ],
            ],
            'add-blog' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-blog',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-blog',
                    ],
                ],
            ],
            'edit-blog' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/edit-blog',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'edit-blog',
                    ],
                ],
            ],
            'update-blog' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/update-blog',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'update-blog',
                    ],
                ],
            ],
            'delete-blog' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/delete-blog',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'delete-blog',
                    ],
                ],
            ],
            'admin-gallery' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/admin-gallery',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'admin-gallery',
                    ],
                ],
            ],
            'add-gallery' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-gallery',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-gallery',
                    ],
                ],
            ],
            'edit-gallery' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/edit-gallery',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'edit-gallery',
                    ],
                ],
            ],
            'update-gallery' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/update-gallery',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'update-gallery',
                    ],
                ],
            ],
            'delete-gallery' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/delete-gallery',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'delete-gallery',
                    ],
                ],
            ],
            'career' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/career',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'career',
                    ],
                ],
            ],
            'add-career-banner' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-career-banner',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-career-banner',
                    ],
                ],
            ],
            'add-career' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-career',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-career',
                    ],
                ],
            ],
            'edit-career' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/edit-career',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'edit-career',
                    ],
                ],
            ],
            'update-career' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/update-career',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'update-career',
                    ],
                ],
            ],
            'delete-career' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/delete-career',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'delete-career',
                    ],
                ],
            ],
            'career-application' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/career-application',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'career-application',
                    ],
                ],
            ],
            'contact' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/contact',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'contact',
                    ],
                ],
            ],
            'add-address' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-address',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-address',
                    ],
                ],
            ],
            'our-team' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/our-team',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'our-team',
                    ],
                ],
            ],
            'add-our-team' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-our-team',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-our-team',
                    ],
                ],
            ],
            'edit-our-team' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/edit-our-team',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'edit-our-team',
                    ],
                ],
            ],
            'update-our-team' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/update-our-team',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'update-our-team',
                    ],
                ],
            ],
            'delete-our-team' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/delete-our-team',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'delete-our-team',
                    ],
                ],
            ],
            'add-contact-banner' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-contact-banner',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-contact-banner',
                    ],
                ],
            ],
            'profile' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/profile',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'profile',
                    ],
                ],
            ],
            'reset-password' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/reset-password',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'reset-password',
                    ],
                ],
            ],
            'change-password' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/change-password',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'change-password',
                    ],
                ],
            ],
            'advisor' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/advisor',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'advisor',
                    ],
                ],
            ],
             'add-advisor' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-advisor',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-advisor',
                    ],
                ],
            ],
             'edit-advisor' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/edit-advisor',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'edit-advisor',
                    ],
                ],
            ],
            'update-advisor' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/update-advisor',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'update-advisor',
                    ],
                ],
            ],
            'delete-advisor' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/delete-advisor',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'delete-advisor',
                    ],
                ],
            ],
            'executive' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/executive',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'executive',
                    ],
                ],
            ],
            'add-executive' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/add-executive',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'add-executive',
                    ],
                ],
            ],
            'edit-executive' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/edit-executive',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'edit-executive',
                    ],
                ],
            ],
            'update-executive' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/update-executive',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'update-executive',
                    ],
                ],
            ],
            'delete-executive' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/delete-executive',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'delete-executive',
                    ],
                ],
            ],
            'figure' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/figure',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'figure',
                    ],
                ],
            ],
            'edit-figure' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/edit-figure',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'edit-figure',
                    ],
                ],
            ],
            'update-figure' => [
                'type'    => Segment::class,
                'options' => [
                    'route'    => '/admin/update-figure',
                    'defaults' => [
                        'controller' => Controller\IndexController::class,
                        'action'     => 'update-figure',
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
        'Admin' => 'layout/admin-layout',
    ],
    'view_manager' => [
        'display_not_found_reason' => true,
        'display_exceptions'       => true,
        'doctype'                  => 'HTML5',
        'not_found_template'       => 'error/404',
        'exception_template'       => 'error/index',
        'template_map' => [
            /*'layout/layout'           => __DIR__ . '/../view/layout/layout.phtml',*/
            'admin/index/index' => __DIR__ . '/../view/admin/index/index.phtml',
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
