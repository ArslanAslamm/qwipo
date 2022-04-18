<?php

namespace Application\Controller;

use Application\Channel\Sms;
use Psr\Container\ContainerExceptionInterface;
use Psr\Container\NotFoundExceptionInterface;
use Zend\Mvc\Controller\AbstractActionController;
use Zend\View\Model\JsonModel;
use Zend\View\Model\ViewModel;



class BaseController extends AbstractActionController
{

    protected $authService;
    protected $mailer;
    protected $sessionManager;
    protected $sessionSaveManager;
    protected $authDbTable;
    protected $sessionStorage;
    protected $userTable;
    
    protected $homeTable;
    protected $aboutusTable;
    protected $serviceTable;
    protected $contactusTable;
    protected $galleryTable;
    protected $careerTable;
    protected $ourteamTable;
    protected $blogTable;
    protected $executiveTable;
    protected $advisorTable;
    public function onDispatch(\Zend\Mvc\MvcEvent $e)
    {
        error_reporting(0);
        ini_set('display_error',0);
        date_default_timezone_set("Asia/Kolkata");
        if ($this->getAuthService()->hasIdentity()) {
            $this->layout()->setVariable('sessionUserInfo', $this->getAuthService()->getIdentity());

            $loggedInUserInfo = $this->getAuthService()->getIdentity();
            $loggedInUserId = $loggedInUserInfo['user_id'];
            $this->layout()->setVariable('sessionUserId', $loggedInUserId);
        } else {
            $this->layout()->setVariable('sessionUserInfo', null);
        }

        return parent::onDispatch($e);
    }

    /* model definitions start*/
   
    /* model definitions  end*/

    /* service definitions start*/

    protected function safeString($string)
    {
        if($string === ""){
            return $string;
        }
        $string = html_entity_decode($string);
        return trim(strip_tags(preg_replace('!\s+!', ' ', $string)));
    }

    public function getAuthService()
    {
        try {

            if ($this->authService == null) {
                $this->authService = $this->getEvent()->getApplication()->getServiceManager()->get("AuthService");
            }
            return $this->authService;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }
    protected function getRandomFileName($fileExtension){
        return rand(1111111111,9999999999).time().".".$fileExtension;
    }
    public function generateHash(){
        $hashLength = 32;
        $characters = '0123456789abcdefghijklmnopqrstuvwxyz';
        $hash = "";
        for ($i = 0; $i < $hashLength; $i++) {
            $hash .= $characters[rand(0, strlen($characters) - 1)];
        }
        return $hash;
    }

    public function generateAuthToken(){
        $hashLength = 32;
        $characters = '0123456789abcdefghijklmnopqrstuvwxyz';
        $token = "";
        for ($i = 0; $i < $hashLength; $i++) {
            $token .= $characters[rand(0, strlen($characters) - 1)];
        }
        return $token;
    }
    function generateRandomPassword()
    {
        $length = 6;
        $characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
       // return $randomString . "_" . strtotime(date("Y-m-d H:i:s"));
    }

    public function getSessionManager()
    {
        try {
            if (!$this->sessionManager) {
                $this->sessionManager = $this->getEvent()->getApplication()->getServiceManager()->get("SessionManager");
            }
            return $this->sessionManager;
        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }


    public function getSessionSaveManager()
    {
        try {
            if (!$this->sessionSaveManager) {
                $this->sessionSaveManager = $this->getEvent()->getApplication()->getServiceManager()->get("SessionSaveManager");
            }
            return $this->sessionSaveManager;
        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }


    public function getAuthDbTable()
    {
        try {
            if (!$this->authDbTable) {
                $this->authDbTable = $this->getEvent()->getApplication()->getServiceManager()->get("AuthDbTable");
            }
            return $this->authDbTable;
        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }

    public function getSessionStorage()
    {
        try {
            if (!$this->sessionStorage) {
                $this->sessionStorage = $this->getEvent()->getApplication()->getServiceManager()->get("SessionStorage");
            }
            return $this->sessionStorage;
        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }

    /* service definition end*/


    /* global methods start*/

    public function getLoggedInUserId()
    {
        try {
            $user = $this->getLoggedInUser();
            if ($user) {
                return $user['user_id'];
            } else {
                return null;
            }
        } catch (\Exception $e) {
            return null;
        }
    }

    public function getLoggedInUser()
    {
        try {
            $user = $this->getAuthService()->getIdentity();
            //$user = $this->getLoggedInUser();
            return $user;
        } catch (\Exception $e) {
            return array();
        }
    }

    public function getBaseUrl()
    {
        $event = $this->getEvent();
        $request = $event->getRequest();
        $router = $event->getRouter();
        $uri = $router->getRequestUri();
        return $baseUrl = sprintf('%s://%s%s', $uri->getScheme(), $uri->getHost(), $request->getBaseUrl());
    }
    public function getFileExtension($fileName){
        $extension = explode(".",$fileName);
        return $extension[count($extension) - 1];
    }
    public function getS3Url(){
        return "https://s3.amazonaws.com/files.taxishare/";
    }
    function generateRandomString() {
        $length = 10;
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString."_".strtotime(date("Y-m-d H:i:s"));
    }
    public function sendNewPushNotification($senderId = array(), $notificationDetails)
    {
        try {
            $registrationIds = $this->fcmTable()->getDeviceIds($senderId);
            if (count($registrationIds)) {
                $notification = new SendNotification();
                return $response = $notification->sendPushNotificationToFCMSever($registrationIds, $notificationDetails);
            }
            return false;
        } catch (\Exception $e) {
            return false;
        }
    }
    public function generateOtp()
    {
        return rand(100000, 999999);
        
    }
    public function checkUserSessionAction()
    {
        try {
            $request = $this->getRequest()->getPost();
            if ($this->getLoggedInUserId()) {
                $userId = $request['bG9nZ2VkSW5Vc2VySWQ'];
                if ($userId != $this->getLoggedInUserId() || $userId == 0) {
                    return new JsonModel(array("success" => false));
                } else {
                    if (isset($_SESSION["login_payload"])) {
                        return new JsonModel(array("success" => false));
                    } else {
                        return new JsonModel(array("success" => true));
                    }
                }
            } else {
                if (trim($request["page"]) == "login") {
                    return new JsonModel(array("success" => true));
                } else {
                    return new JsonModel(array("success" => false));
                }
            }

        } catch (\Exception $e) {
            return new JsonModel(array("success" => false));
        }
    }
    public function sendMail($receiverEmail, $subject, $action, $data)
    {
//        print_r($action);exit;
        $response = $this->getMailer()->send(
            'info@qwipo.com',
            $receiverEmail,
            $subject,
            'email-template',
            array(
                'action' => $action,
                'data' => $data,
                "baseUrl" => $this->getBaseUrl(),
            )
        );

        return $response;
    }
     public function sendOtpMail($receiverEmail, $subject, $action, $data)
    {
        
        $response = $this->getMailer()->send(
            'info@qwipo.com',
//                'ibcpharm@gmail.com',
            $receiverEmail,
            $subject,
            'email-template',
            array(
                'action' => $action,
                'data' => $data,
                "baseUrl" => $this->getBaseUrl(),
            )
        );

        return $response;
    }
    public function sendOtpSms($mobile, $otp)
    {
        $smsAction = "otp";
        $smsObject = new Sms();
        $response = $smsObject->send(
            $mobile,
            'sms-template',
            array(
                'action' => $smsAction,
                "otp" => $otp
            )
        );
        return $response;
    }
    public function sendAdminPassword($mobile, $password)
    {
        $smsAction = "admin_password";
        $smsObject = new Sms();
        $response = $smsObject->send(
            $mobile,
            'sms-template',
            array(
                'action' => $smsAction,
                "password" => $password
            )
        );
        return $response;
    }
    private function getMailer()
    {
        if (!$this->mailer) {
            $this->mailer= $this->getEvent()->getApplication()->getServiceManager()->get('Application\Channel\Mail');
            //$this->mailer = $this->getServiceLocator()->get('Application\Channel\Mail');
        }
        return $this->mailer;
    }
    /* global methods end*/
    
     public function userTable()
    {
        try {

            if ($this->userTable == null) {
                $this->userTable = $this->getEvent()->getApplication()->getServiceManager()->get("User\Model\UserTable");
            }

            return $this->userTable;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }
    public function homeTable()
    {
        try {

            if ($this->homeTable == null) {
                $this->homeTable = $this->getEvent()->getApplication()->getServiceManager()->get("Admin\Model\HomeTable");
            }

            return $this->homeTable;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }
    public function aboutusTable()
    {
        try {

            if ($this->aboutusTable == null) {
                $this->aboutusTable = $this->getEvent()->getApplication()->getServiceManager()->get("Admin\Model\AboutusTable");
            }

            return $this->aboutusTable;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }
    public function serviceTable()
    {
        try {

            if ($this->serviceTable == null) {
                $this->serviceTable = $this->getEvent()->getApplication()->getServiceManager()->get("Admin\Model\ServiceTable");
            }

            return $this->serviceTable;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }
    public function contactusTable()
    {
        try {

            if ($this->contactusTable == null) {
                $this->contactusTable = $this->getEvent()->getApplication()->getServiceManager()->get("Admin\Model\ContactusTable");
            }

            return $this->contactusTable;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }
     public function galleryTable()
    {
        try {

            if ($this->galleryTable == null) {
                $this->galleryTable = $this->getEvent()->getApplication()->getServiceManager()->get("Admin\Model\GalleryTable");
            }

            return $this->galleryTable;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }
    public function careerTable()
    {
        try {

            if ($this->careerTable == null) {
                $this->careerTable = $this->getEvent()->getApplication()->getServiceManager()->get("Admin\Model\CareerTable");
            }

            return $this->careerTable;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }
    public function ourteamTable()
    {
        try {

            if ($this->ourteamTable == null) {
                $this->ourteamTable = $this->getEvent()->getApplication()->getServiceManager()->get("Admin\Model\OurteamTable");
            }

            return $this->ourteamTable;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }
    public function blogTable()
    {
        try {

            if ($this->blogTable == null) {
                $this->blogTable = $this->getEvent()->getApplication()->getServiceManager()->get("Admin\Model\BlogTable");
            }

            return $this->blogTable;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }
    public function executiveTable()
    {
        try {

            if ($this->executiveTable == null) {
                $this->executiveTable = $this->getEvent()->getApplication()->getServiceManager()->get("Admin\Model\ExecutiveTable");
            }

            return $this->executiveTable;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }

    public function advisorTable()
    {
        try {

            if ($this->advisorTable == null) {
                $this->advisorTable = $this->getEvent()->getApplication()->getServiceManager()->get("Admin\Model\AdvisorTable");
            }

            return $this->advisorTable;

        } catch (\Exception $e) {
            return null;
        } catch (NotFoundExceptionInterface $e) {
            return null;
        } catch (ContainerExceptionInterface $e) {
            return null;
        }
    }

}