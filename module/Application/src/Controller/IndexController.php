<?php

/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Application\Controller;

use Zend\Crypt\BlockCipher;
use Zend\View\Model\JsonModel;
use Zend\View\Model\ViewModel;

class IndexController extends BaseController
{
    public function indexAction()
    {
        $params = $this->params()->fromRoute();
        if (isset($params["var1"])) {
            $paramsExplode = explode("/", $params["var1"]);
            $params["var1"] = $paramsExplode[1];
        }

        if (isset($params["var1"]) && !isset($params["var2"])) {
            return $this->forward()->dispatch(\Application\Controller\IndexController::class, ['action' => 'blogs-single', 'var1' => $params["var1"]]);
        }

        $renderer = $this->getEvent()->getApplication()->getServiceManager()->get('Zend\View\Renderer\PhpRenderer');
        $renderer->headTitle("Wholesale Grocery Suppliers in India | Qwipo b2b");
        $renderer->headLink(array('rel' => 'canonical', 'href' => $this->getBaseUrl()));
        $renderer->headMeta()->setName('description', "Want to take your small grocery business to the next level?. Associate with Qwipo, the best Wholesale Grocery Suppliers. Visit now
for quality groceries!");
        $renderer->headMeta()->setName('keywords', " wholesale grocery suppliers, wholesale grocery online India, wholesale grocery supplier, b2b grocery suppliers, b2b wholesale grocery, b2b suppliers in hyderabad, wholesale groceries for retail, Groceries wholesale suppliers in India, wholesale grocery suppliers in hyderabad, Best grocery suppliers in hyderabad,wholesale grocery market in hyderabad");
        $renderer->headMeta()->setProperty('og:keywords', "wholesale grocery store suppliers, wholesale grocery online India, wholesale grocery supplier, b2b grocery suppliers, b2b wholesale grocery, b2b suppliers in hyderabad, wholesale groceries for retail, Groceries wholesale suppliers in India, wholesale grocery suppliers in hyderabad, Best grocery suppliers in hyderabad,wholesale grocery market in hyderabad");
        $renderer->headMeta()->setProperty('og:title', "Wholesale Grocery Suppliers in India | Qwipo b2b");
        $renderer->headMeta()->setProperty('og:description', "Want to take your small grocery business to the next level?. Associate with Qwipo, the best Wholesale Grocery Suppliers. Visit now for quality groceries!");
        $renderer->headMeta()->setProperty('og:url', $this->getBaseUrl());
        $renderer->headMeta()->setProperty('og:site_name', "Wholesale Grocery Suppliers in India | Qwipo b2b");
        $renderer->headMeta()->setProperty('article:publisher', "https://www.facebook.com/digitalqwipo");
        $renderer->headMeta()->setProperty('og:image', $this->getBaseUrl() . "/img/logo.png");
        $renderer->headMeta()->setProperty('og:image:width', '813');
        $renderer->headMeta()->setProperty('og:image:height', '532');
        $renderer->headMeta()->setProperty('twitter:card', 'summary');
        $renderer->headMeta()->setProperty('twitter:site', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:creator', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:title', "Wholesale Grocery Suppliers in India | Qwipo b2b");
        $renderer->headMeta()->setProperty('twitter:description', "Want to take your small grocery business to the next level?. Associate with Qwipo, the best Wholesale Grocery Suppliers. Visit now for quality groceries!");
        $renderer->headMeta()->setProperty('twitter:keywords', "wholesale grocery suppliers, wholesale grocery online India, wholesale grocery supplier, b2b grocery suppliers, b2b wholesale grocery, b2b suppliers in hyderabad, wholesale groceries for retail, Groceries wholesale suppliers in India, wholesale grocery suppliers in hyderabad, Best grocery suppliers in hyderabad,wholesale grocery market in hyderabad");


        $homeBannerData = $this->homeTable()->getHomeBannerData();
        $aboutData = $this->aboutusTable()->getAboutUsData();
        $howItWorks = $this->homeTable()->getHowItWorksData();
        $featuresHeading = $this->homeTable()->getFeaturesHeading();
        $allFeatures = $this->homeTable()->getFeatures();
        $statisticHeading = $this->homeTable()->getStaticsHeading();
        $allStatistic = $this->homeTable()->getAllStatistics();
        $blogdata = $this->blogTable()->getFewBlogs($data);
        //  $statisticsdata = $this->statisticsTable()->getAllNumberStatistics();
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $this->layout()->setVariable("activeLink", 1);
        //        $this->layout()->setVariable("activeTitle", "Qwipo::We Are A Single Cord That Connects Prime suppliers & Businesses Together");
        //        $this->layout()->setVariable("activeDesc", "“Farm to the Table” is the new norm skewing storage, cutting middlemen and winning price is what you get. We stay afloat from the price sensitive markets delivering value to both our growers, prime suppliers & partners.");
        return new ViewModel(array('statisticsdata' => [], 'homeBanner' => $homeBannerData, 'aboutus' => $aboutData, 'howItWorks' => $howItWorks, 'featuresHeading' => $featuresHeading, 'features' => $allFeatures, 'statisticHeading' => $statisticHeading, 'statistic' => $allStatistic, 'blogData' => $blogdata));
    }

    public function aboutusAction()
    {

        $renderer = $this->getEvent()->getApplication()->getServiceManager()->get('Zend\View\Renderer\PhpRenderer');
        $renderer->headTitle("We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headLink(array('rel' => 'canonical', 'href' => $this->getBaseUrl() . "/aboutus"));
        $renderer->headMeta()->setName('description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setName('keywords', "Qwipo, our story, history, our team, information");
        $renderer->headMeta()->setProperty('og:keywords', "Qwipo, our story, history, our team, information");
        $renderer->headMeta()->setProperty('og:title', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('og:description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setProperty('og:url', $this->getBaseUrl() . "/aboutus");
        $renderer->headMeta()->setProperty('og:site_name', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('article:publisher', "https://www.facebook.com/digitalqwipo");
        $renderer->headMeta()->setProperty('og:image', $this->getBaseUrl() . "/img/logo.png");
        $renderer->headMeta()->setProperty('og:image:width', '813');
        $renderer->headMeta()->setProperty('og:image:height', '532');
        $renderer->headMeta()->setProperty('twitter:card', 'summary');
        $renderer->headMeta()->setProperty('twitter:site', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:creator', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:title', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('twitter:description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setProperty('twitter:keywords', "Qwipo, our story, history, our team, information");
        //        $renderer->headMeta()->setProperty('twitter:image', $this->getBaseUrl() . "/img/images/organic-bg-3.jpg");


        $aboutData = $this->aboutusTable()->getAboutUsData();
        $executiveData = $this->executiveTable()->getExecutiveData();

        $advisorData = $this->advisorTable()->getAdvisorData();

        $ourTeamData = $this->ourteamTable()->getOurTeamData();
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $this->layout()->setVariable("activeLink", 2);
        //        $this->layout()->setVariable("activeTitle", "Qwipo::About Us - We are one stop online destination for B2B retailers");
        //        $this->layout()->setVariable("activeDesc", "We are one stop destination for B2B retailers for procurement of Vegetables, Fruits and Groceries. We bring dealers, wholesalers, retailers and producers in India on to a solitary stage which brings to them the force of innovation to scale &amp; support their business.");
        return new ViewModel(array('aboutus' => $aboutData, 'team' => $ourTeamData, 'executive' => $executiveData, 'advisor' => $advisorData));
    }
    public function returnsAction()
    {

        $renderer = $this->getEvent()->getApplication()->getServiceManager()->get('Zend\View\Renderer\PhpRenderer');
        $renderer->headTitle("Returns");
        $renderer->headLink(array('rel' => 'canonical', 'href' => $this->getBaseUrl() . "/returns"));
        $renderer->headMeta()->setName('description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setName('keywords', "Qwipo, our story, history, our team, information");
        $renderer->headMeta()->setProperty('og:keywords', "Qwipo, our story, history, our team, information");
        $renderer->headMeta()->setProperty('og:title', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('og:description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setProperty('og:url', $this->getBaseUrl() . "/returns");
        $renderer->headMeta()->setProperty('og:site_name', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('article:publisher', "https://www.facebook.com/digitalqwipo");
        $renderer->headMeta()->setProperty('og:image', $this->getBaseUrl() . "/img/logo.png");
        $renderer->headMeta()->setProperty('og:image:width', '813');
        $renderer->headMeta()->setProperty('og:image:height', '532');
        $renderer->headMeta()->setProperty('twitter:card', 'summary');
        $renderer->headMeta()->setProperty('twitter:site', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:creator', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:title', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('twitter:description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setProperty('twitter:keywords', "Qwipo, our story, history, our team, information");

        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $contactBannerData = $this->contactusTable()->getContactBanner();
        return new ViewModel();
    }

    public function faqsAction()
    {

        $renderer = $this->getEvent()->getApplication()->getServiceManager()->get('Zend\View\Renderer\PhpRenderer');
        $renderer->headTitle("FAQs");
        $renderer->headLink(array('rel' => 'canonical', 'href' => $this->getBaseUrl() . "/faqs"));
        $renderer->headMeta()->setName('description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setName('keywords', "Qwipo, our story, history, our team, information");
        $renderer->headMeta()->setProperty('og:keywords', "Qwipo, our story, history, our team, information");
        $renderer->headMeta()->setProperty('og:title', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('og:description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setProperty('og:url', $this->getBaseUrl() . "/faqs");
        $renderer->headMeta()->setProperty('og:site_name', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('article:publisher', "https://www.facebook.com/digitalqwipo");
        $renderer->headMeta()->setProperty('og:image', $this->getBaseUrl() . "/img/logo.png");
        $renderer->headMeta()->setProperty('og:image:width', '813');
        $renderer->headMeta()->setProperty('og:image:height', '532');
        $renderer->headMeta()->setProperty('twitter:card', 'summary');
        $renderer->headMeta()->setProperty('twitter:site', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:creator', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:title', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('twitter:description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setProperty('twitter:keywords', "Qwipo, our story, history, our team, information");

        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $contactBannerData = $this->contactusTable()->getContactBanner();
        return new ViewModel();
    }
    public function irAction()
    {
        $renderer = $this->getEvent()->getApplication()->getServiceManager()->get('Zend\View\Renderer\PhpRenderer');
        $renderer->headTitle("IR");
        $renderer->headLink(array('rel' => 'canonical', 'href' => $this->getBaseUrl() . "/ir"));
        $renderer->headMeta()->setName('description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setName('keywords', "Qwipo, IR,");
        $renderer->headMeta()->setProperty('og:keywords', "Qwipo, Investor signup, Qwipo Investor signup");
        $renderer->headMeta()->setProperty('og:title', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('og:description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setProperty('og:url', $this->getBaseUrl() . "/ir");
        $renderer->headMeta()->setProperty('og:site_name', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('article:publisher', "https://www.facebook.com/digitalqwipo");
        $renderer->headMeta()->setProperty('og:image', $this->getBaseUrl() . "/img/logo.png");
        $renderer->headMeta()->setProperty('og:image:width', '813');
        $renderer->headMeta()->setProperty('og:image:height', '532');
        $renderer->headMeta()->setProperty('twitter:card', 'summary');
        $renderer->headMeta()->setProperty('twitter:site', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:creator', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:title', "We are a one-stop online destination for B2B retailers | Qwipo b2b");
        $renderer->headMeta()->setProperty('twitter:description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers & producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setProperty('twitter:keywords', "Qwipo, our story, history, our team, information");

        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $contactBannerData = $this->contactusTable()->getContactBanner();
        return new ViewModel();
    }
    public function servicesAction()
    {
        $renderer = $this->getEvent()->getApplication()->getServiceManager()->get('Zend\View\Renderer\PhpRenderer');
        $renderer->headTitle("Grocery Suppliers for Restaurants, Hotels & Kirana Stores | Qwipo b2b");
        $renderer->headLink(array('rel' => 'canonical', 'href' => $this->getBaseUrl() . "/qwiposervices"));
        $renderer->headMeta()->setName('description', " Leading b2b Grocery suppliers for Hotels, Restaurants, Kirana Stores and Hospitals. We offer quality products at the right price delivered at your convenience");
        $renderer->headMeta()->setName('keywords', "grocery suppliers for restaurants, grocery suppliers for hotels, grocery suppliers for kirana store, grocery suppliers for hospitals, online grocery supplier app, wholesale kirana suppliers");
        $renderer->headMeta()->setProperty('og:keywords', "grocery suppliers for hotels, grocery suppliers for restaurants, grocery suppliers for kirana store, grocery suppliers for hospitals");
        $renderer->headMeta()->setProperty('og:title', "Grocery suppliers for restaurants, hotels & Stores | Qwipo b2b");
        $renderer->headMeta()->setProperty('og:description', "We are leading b2b Grocery suppliers for Hotels, Restaurants, Café's, Kirana stores, and Hospitals. We offer quality products at the right price delivered at your convenience.");
        $renderer->headMeta()->setProperty('og:url', $this->getBaseUrl() . "/qwiposervices");
        $renderer->headMeta()->setProperty('og:site_name', "Grocery suppliers for restaurants, hotels & Stores | Qwipo b2b");
        $renderer->headMeta()->setProperty('article:publisher', "https://www.facebook.com/digitalqwipo");
        $renderer->headMeta()->setProperty('og:image', $this->getBaseUrl() . "/img/logo.png");
        $renderer->headMeta()->setProperty('og:image:width', '813');
        $renderer->headMeta()->setProperty('og:image:height', '532');
        $renderer->headMeta()->setProperty('twitter:card', 'summary');
        $renderer->headMeta()->setProperty('twitter:site', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:creator', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:title', "Grocery suppliers for restaurants, hotels & Stores | Qwipo b2b");
        $renderer->headMeta()->setProperty('twitter:description', "We are leading b2b Grocery suppliers for Hotels, Restaurants, Café's, Kirana stores, and Hospitals. We offer quality products at the right price delivered at your convenience.");
        $renderer->headMeta()->setProperty('twitter:keywords', "grocery suppliers for hotels, grocery suppliers for restaurants, grocery suppliers for kirana store, grocery suppliers for hospitals");
        //           $renderer->headMeta()->setProperty('twitter:image', $this->getBaseUrl() . "/img/images/organic-bg-3.jpg");


        $serviceBannerData = $this->serviceTable()->getServiceBanner();
        $serviceHeadingData = $this->serviceTable()->getServiceHeading();
        $serviceData = $this->serviceTable()->getAllServices();
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $this->layout()->setVariable("activeLink", 3);
        //        $this->layout()->setVariable("activeTitle","Qwipo::Services - We Serve Hotels, Restaurants, Café's, Kirana stores, Govt and Private enterprises");
        //        $this->layout()->setVariable("activeDesc","We cater to diverse needs of varied Business Customers which includes Hotels, Restaurants, Café's, Kirana stores, Govt and Private enterprises.  At QWIPO we offer quality produce at right price delivered as per your convenience.");

        return new ViewModel(array('serviceBannerData' => $serviceBannerData, 'serviceHeading' => $serviceHeadingData, 'services' => $serviceData));
    }
    public function servicesSingleAction()
    {
        $serviceId = $this->params()->fromQuery("id", 0);
        $serviceData = $this->serviceTable()->serviceById($serviceId);
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $this->layout()->setVariable("activeLink", 2);

        return new ViewModel(array('serviceData' => $serviceData));
    }

    public function blogsAction()
    {

        $renderer = $this->getEvent()->getApplication()->getServiceManager()->get('Zend\View\Renderer\PhpRenderer');
        $renderer->headTitle("Blogs - Sharing insights worth reading | Qwipo b2b");
        $renderer->headLink(array('rel' => 'canonical', 'href' => $this->getBaseUrl() . "/blogs"));
        $renderer->headMeta()->setName('description', "Qwipo brings in various insights about things that happen in and around your business operations, success stories, and stories/testimonials worth sharing with you.");
        $renderer->headMeta()->setName('keywords', "Qwipo news, latest news, success stories, testimonials, business tips, b2b suppliers,Wholesale price, Vegetables, Grocery, information");
        $renderer->headMeta()->setProperty('og:keywords', "Qwipo news, latest news, success stories, testimonials, business tips, b2b suppliers,Wholesale price, Vegetables, Grocery, information");
        $renderer->headMeta()->setProperty('og:title', "Blogs - Sharing insights worth reading | Qwipo b2b");
        $renderer->headMeta()->setProperty('og:description', "Qwipo brings in various insights about things that happen in and around your business operations, success stories, and stories/testimonials worth sharing with you.");
        $renderer->headMeta()->setProperty('og:url', $this->getBaseUrl() . "/blogs");
        $renderer->headMeta()->setProperty('og:site_name', "Blogs - Sharing insights worth reading | Qwipo b2b");
        $renderer->headMeta()->setProperty('article:publisher', "https://www.facebook.com/digitalqwipo");
        $renderer->headMeta()->setProperty('og:image', $this->getBaseUrl() . "/img/logo.png");
        $renderer->headMeta()->setProperty('og:image:width', '813');
        $renderer->headMeta()->setProperty('og:image:height', '532');
        $renderer->headMeta()->setProperty('twitter:card', 'summary');
        $renderer->headMeta()->setProperty('twitter:site', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:creator', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:title', "Blogs - Sharing insights worth reading | Qwipo b2b");
        $renderer->headMeta()->setProperty('twitter:description', "Qwipo brings in various insights about things that happen in and around your business operations, success stories, and stories/testimonials worth sharing with you.");
        $renderer->headMeta()->setProperty('twitter:keywords', "Qwipo news, latest news, success stories, testimonials, business tips, b2b suppliers,Wholesale price, Vegetables, Grocery, information");
        //           $renderer->headMeta()->setProperty('twitter:image', $this->getBaseUrl() . "/img/images/organic-bg-3.jpg");


        $blogdata = $this->blogTable()->getBlogs($data);
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $this->layout()->setVariable("activeLink", 4);
        //        $this->layout()->setVariable("activeTitle","Qwipo::Blogs - Sharing insights worth reading");
        //        $this->layout()->setVariable("activeDesc","We bring in various insights about things that happen in and around your business operations, success stories and stories / testimonials worth sharing with you.");


        return new ViewModel(array('blogData' => $blogdata));
    }

    public function blogsSingleAction()
    {
        $blog_title = $this->params()->fromRoute("var1", 0);
        $blogData = $this->blogTable()->blogByTitle($blog_title);
?>
        <title><?php echo $blogData['title'] ?></title>
        <link rel="canonical" href="<?php echo $blogData['custom_url'] ?>'" />
        <meta name="description" content="<?php echo substr($blogData['content'], 0, 200) ?>">
        <!--<meta name="keywords" content="Bootstrap3, Medical,  Doctor, Hospital, Template, Responsive, HTML5"/>-->
        <meta name="author" content="https://www.facebook.com/digitalqwipo" />

        <!-- twitter card starts from here, if you don't need remove this section -->
        <meta name="twitter:card" content="summary" />
        <meta name="twitter:site" content="@DigitalQwipo" />
        <meta name="twitter:creator" content="@DigitalQwipo" />
        <!--<meta name="twitter:url" content="http://yourdomain.com/"/>-->
        <meta name="twitter:title" content="<?php echo $blogData['title'] ?>" />
        <!-- maximum 140 char -->
        <meta name="twitter:description" content="<?php //echo $blogData['content']
                                                    ?>" />
        <!-- maximum 140 char -->
        <meta name="twitter:image" content="" />
        <!-- when you post this page url in twitter , this image will be shown -->
        <!-- twitter card ends from here -->

        <!-- facebook open graph starts from here, if you don't need then delete open graph related  -->
        <meta property="og:title" content="<?php echo $blogData['title'] ?>" />
        <meta property="og:url" content="$this->getBaseUrl() .'/blogs/<?php echo $blogData['custom_url'] ?>'">

        <meta property="og:site_name" content="<?php echo $blogData['title'] ?>" />
        <!--meta property="fb:admins" content="" /-->
        <!-- use this if you have  -->
        <meta property="og:type" content="website" />
        <meta property="og:image" content="$this->getBaseUrl() . '/img/logo.png'" />


<?php

        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $this->layout()->setVariable("activeLink", 4);
        return new ViewModel(array('blogData' => $blogData));
    }

    public function galleryAction()
    {
        $renderer = $this->getEvent()->getApplication()->getServiceManager()->get('Zend\View\Renderer\PhpRenderer');
        $renderer->headTitle("Gallery - A quick peak into Qwipo | b2b");
        $renderer->headLink(array('rel' => 'canonical', 'href' => $this->getBaseUrl() . "/gallery"));
        $renderer->headMeta()->setName('description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers and producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setName('keywords', "Qwipo gallery");
        $renderer->headMeta()->setProperty('og:keywords', "Qwipo gallery");
        $renderer->headMeta()->setProperty('og:title', "Gallery - A quick peak into Qwipo | b2b");
        $renderer->headMeta()->setProperty('og:description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers and producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setProperty('og:url', $this->getBaseUrl() . "/gallery");
        $renderer->headMeta()->setProperty('og:site_name', "Gallery - A quick peak into Qwipo | b2b");
        $renderer->headMeta()->setProperty('article:publisher', "https://www.facebook.com/digitalqwipo");
        $renderer->headMeta()->setProperty('og:image', $this->getBaseUrl() . "/img/logo.png");
        $renderer->headMeta()->setProperty('og:image:width', '813');
        $renderer->headMeta()->setProperty('og:image:height', '532');
        $renderer->headMeta()->setProperty('twitter:card', 'summary');
        $renderer->headMeta()->setProperty('twitter:site', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:creator', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:title', "Gallery - A quick peak into Qwipo | b2b");
        $renderer->headMeta()->setProperty('twitter:description', "We are the one-stop destination for B2B retailers for procurement of Groceries. We bring dealers, wholesalers, retailers and producers in India on to a solitary stage which brings to them the force of innovation to scale & support their business.");
        $renderer->headMeta()->setProperty('twitter:keywords', "Qwipo gallery");
        //           $renderer->headMeta()->setProperty('twitter:image', $this->getBaseUrl() . "/img/images/organic-bg-3.jpg");

        $galleryData = $this->galleryTable()->getGallery();
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $this->layout()->setVariable("activeLink", 5);
        //        $this->layout()->setVariable("activeTitle","Qwipo::Gallery - A quick peak into QWIPO");
        //        $this->layout()->setVariable("activeDesc","Glimpses of our HUB, Our day-to-day warriors and the process itself! You can experience how our team examines the quality grading and ensures the highest standards of quality control to find defects before the product is ready for shipment.");


        return new ViewModel(array('gallery' => $galleryData));
    }

    public function careersAction()
    {
        $renderer = $this->getEvent()->getApplication()->getServiceManager()->get('Zend\View\Renderer\PhpRenderer');
        $renderer->headTitle("Careers - If you think you have what it takes, Apply Now @ Qwipo");
        $renderer->headLink(array('rel' => 'canonical', 'href' => $this->getBaseUrl() . "/careers"));
        $renderer->headMeta()->setName('description', "If you have a dream and you identify yourself with our vision and innate corporate social responsibility QWIPO is a place where you belong. We hire talented, enthusiastic, and qualified people like you.");
        $renderer->headMeta()->setName('keywords', "Qwipo careers, Qwipo Jobs, job apply");
        $renderer->headMeta()->setProperty('og:keywords', "Qwipo careers, Qwipo Jobs, job apply");
        $renderer->headMeta()->setProperty('og:title', "Careers - If you think you have what it takes, Apply Now @ Qwipo");
        $renderer->headMeta()->setProperty('og:description', "If you have a dream and you identify yourself with our vision and innate corporate social responsibility QWIPO is a place where you belong. We hire talented, enthusiastic, and qualified people like you.");
        $renderer->headMeta()->setProperty('og:url', $this->getBaseUrl() . "/careers");
        $renderer->headMeta()->setProperty('og:site_name', "Careers - If you think you have what it takes, Apply Now @ Qwipo");
        $renderer->headMeta()->setProperty('article:publisher', "https://www.facebook.com/digitalqwipo");
        $renderer->headMeta()->setProperty('og:image', $this->getBaseUrl() . "/img/logo.png");
        $renderer->headMeta()->setProperty('og:image:width', '813');
        $renderer->headMeta()->setProperty('og:image:height', '532');
        $renderer->headMeta()->setProperty('twitter:card', 'summary');
        $renderer->headMeta()->setProperty('twitter:site', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:creator', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:title', "Careers - If you think you have what it takes, Apply Now @ Qwipo");
        $renderer->headMeta()->setProperty('twitter:description', "If you have a dream and you identify yourself with our vision and innate corporate social responsibility QWIPO is a place where you belong. We hire talented, enthusiastic, and qualified people like you.");
        $renderer->headMeta()->setProperty('twitter:keywords', "Qwipo careers, Qwipo Jobs, job apply");
        //           $renderer->headMeta()->setProperty('twitter:image', $this->getBaseUrl() . "/img/images/organic-bg-3.jpg");


        $careerBannerData = $this->careerTable()->getCareerBanner();
        $careerData = $this->careerTable()->getCareer();
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $this->layout()->setVariable("activeLink", 6);
        //        $this->layout()->setVariable("activeTitle","Qwipo::Careers - If you think you have what it takes, Apply Now");
        //        $this->layout()->setVariable("activeDesc","If you have a dream and you identify yourself with our vision and innate corporate social responsibility QWIPO is a place where you belong. We hire talented, enthusiastic and qualified people like you.");


        return new ViewModel(array('careerBanner' => $careerBannerData, 'careerData' => $careerData));
    }

    public function careersSingleAction()
    {
        $careerId = $this->params()->fromQuery("id", 0);
        $careerData = $this->careerTable()->careerById($careerId);
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $this->layout()->setVariable("activeLink", 6);

        return new ViewModel(array('careerdata' => $careerData));
    }

    public function contactusAction()
    {
        $renderer = $this->getEvent()->getApplication()->getServiceManager()->get('Zend\View\Renderer\PhpRenderer');
        $renderer->headTitle("Contact Us - Round the clock customer service | Qwipo b2b");
        $renderer->headLink(array('rel' => 'canonical', 'href' => $this->getBaseUrl() . "/contactus"));
        $renderer->headMeta()->setName('description', "To create positive relationships with partners, our support hero’s help you assist and address the issues to find quick resolution 24x7.");
        $renderer->headMeta()->setName('keywords', "Qwipo contact");
        $renderer->headMeta()->setProperty('og:keywords', "Qwipo contact");
        $renderer->headMeta()->setProperty('og:title', "Contact Us - Round the clock customer service | Qwipo b2b");
        $renderer->headMeta()->setProperty('og:description', "To create positive relationships with partners, our support hero’s help you assist and address the issues to find quick resolution 24x7.");
        $renderer->headMeta()->setProperty('og:url', $this->getBaseUrl() . "/contactus");
        $renderer->headMeta()->setProperty('og:site_name', "Contact Us - Round the clock customer service | Qwipo b2b");
        $renderer->headMeta()->setProperty('article:publisher', "https://www.facebook.com/digitalqwipo");
        $renderer->headMeta()->setProperty('og:image', $this->getBaseUrl() . "/img/logo.png");
        $renderer->headMeta()->setProperty('og:image:width', '813');
        $renderer->headMeta()->setProperty('og:image:height', '532');
        $renderer->headMeta()->setProperty('twitter:card', 'summary');
        $renderer->headMeta()->setProperty('twitter:site', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:creator', '@DigitalQwipo');
        $renderer->headMeta()->setProperty('twitter:title', "Contact Us - Round the clock customer service | Qwipo b2b");
        $renderer->headMeta()->setProperty('twitter:description', "To create positive relationships with partners, our support hero’s help you assist and address the issues to find quick resolution 24x7.");
        $renderer->headMeta()->setProperty('twitter:keywords', "Qwipo contact");

        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();

                $contactUsername = trim($request['contactUsername']);
                $contactUseremail = trim($request['contactUseremail']);
                $contactUsernumber = trim($request['contactUsernumber']);
                $contactUsersubject = trim($request['contactUsersubject']);
                $contactUsermessage = trim($request['contactUsermessage']);

                if ($contactUsername === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the name"));
                }
                if ($contactUseremail === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter whatapp email"));
                }
                if ($contactUsernumber === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter mobile number"));
                }
                if ($contactUsersubject === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the subject"));
                }
                if ($contactUsermessage === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the message"));
                }
                $type = 3;
                $data = array(
                    "name" => $contactUsername,
                    "email" => $contactUseremail,
                    "mobile" => $contactUsernumber,
                    "subject" => $contactUsersubject,
                    "message" => $contactUsermessage,
                    "type" => $type,
                );

                $save = $this->contactusTable()->addContactus($data);

                if ($save['success']) {
                    if ($contactUseremail != "") {
                        $this->sendMail('info@qwipo.com', "contactus_details", "contactus_details", array("name" => $contactUsername, "email" => $contactUseremail, "mobile" => $contactUsernumber, "subject" => $contactUsersubject, "message" => $contactUsermessage,));
                    }
                    return new JsonModel(array("success" => true, "message" => "Thanks for contacting us"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add address"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $contactBannerData = $this->contactusTable()->getContactBanner();
        $this->layout()->setVariable("activeLink", 7);
        //        $this->layout()->setVariable("activeTitle","Qwipo::Contact Us - Round the clock customer service");
        //        $this->layout()->setVariable("activeDesc","To create positive relationships with partners, our support hero’s help you assist and address the issues to find quick resolution 24x7.");

        return new ViewModel(array('contactBanner' => $contactBannerData));
    }
    public function applyCareerAction()
    {
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $applicationName = trim($request['applicationName']);
                $applicationEmail = trim($request['applicationEmail']);
                $applicationMobile = trim($request['applicationMobile']);
                $applicationAddress = trim($request['applicationAddress']);
                $applicationAge = trim($request['applicationAge']);
                $applicationGender = trim($request['applicationGender']);
                $applicationExperience = trim($request['applicationExperience']);
                $applicationCtc = trim($request['applicationCtc']);
                $applicationEctc = trim($request['applicationEctc']);
                $applicationNoticePeriod = trim($request['applicationNoticePeriod']);

                $finalPath = '';
                if (isset($files['files']) && count($files['files'])) {

                    $fileName = rand(0000, 9999) . $files['files']['name'];
                    $directoryPath = "/data/images/";

                    @mkdir(getcwd() . "/public" . $directoryPath);
                    $target_file = getcwd() . "/public" . $directoryPath . $fileName;
                    @chmod($target_file, 0777);

                    try {
                        if (move_uploaded_file($files["files"]["tmp_name"], $target_file)) {
                            $finalPath = $directoryPath . $fileName;

                            @chmod($target_file, 0777);
                        }
                    } catch (Exception $ex) {

                        print_r($ex->getMessage());
                        exit;
                    }
                }
                if ($applicationName === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the name"));
                }
                if ($applicationEmail === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter whatapp email"));
                }
                if ($applicationMobile === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter mobile number"));
                }
                if ($applicationAddress === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter Postal Address"));
                }
                if ($applicationAge === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter Age"));
                }
                if ($applicationGender === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter Gender"));
                }
                if ($applicationExperience === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter years of Experience"));
                }
                if ($applicationCtc === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter Current Salary (CTC)"));
                }
                if ($applicationEctc === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter Estimated CTC"));
                }
                if ($applicationNoticePeriod === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter Notice Period"));
                }

                $type = 3;
                $data = array(
                    "name" => $applicationName,
                    "email" => $applicationEmail,
                    "mobile" => $applicationMobile,
                    "address" => $applicationAddress,
                    "age" => $applicationAge,
                    "gender" => $applicationGender,
                    "years_of_exp" => $applicationExperience,
                    "ctc" => $applicationCtc,
                    "ectc" => $applicationEctc,
                    "notice_period" => $applicationNoticePeriod,
                    "pdf_path" => $finalPath,
                    "type" => $type,
                );

                $save = $this->careerTable()->addCareerApply($data);

                if ($save['success']) {
                    if ($applicationEmail != "") {
                        $this->sendMail('hr@qwipo.com', "CareerApplication", "CareerApplication", array("name" => $applicationName, "email" => $applicationEmail, "mobile" => $applicationMobile, "pdf_path" => $finalPath,));
                        $this->sendMail($applicationEmail, "CareerApplicationAcknowledgement", "CareerApplicationAcknowledgement", array("name" => $applicationName, "email" => $applicationEmail, "mobile" => $applicationMobile, "pdf_path" => $finalPath,));
                    }
                    return new JsonModel(array("success" => true, "message" => "Application submitted successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to submit"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $contactBannerData = $this->contactusTable()->getContactBanner();
        $this->layout()->setVariable("activeLink", 6);
        return new ViewModel(array('contactBanner' => $contactBannerData));
    }
    public function termsConditionsAction()
    {
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $contactBannerData = $this->contactusTable()->getContactBanner();
        return new ViewModel();
    }
    public function privacyPolicyAction()
    {
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('contact', $contact);
        $contactBannerData = $this->contactusTable()->getContactBanner();
        return new ViewModel();
    }
}
