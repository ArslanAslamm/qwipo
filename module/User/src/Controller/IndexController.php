<?php

/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace User\Controller;

use Application\Controller\BaseController;
use Zend\View\Model\JsonModel;
use Zend\View\Model\ViewModel;
use Zend\Crypt\BlockCipher;

class IndexController extends BaseController
{
    public function indexAction()
    {
        return new ViewModel();
    }

    public function loginAction()
    {
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();

                $username = $request["email"];
                $password = $request["password"];

                //               print_r($username);exit;
                $isEmail = explode("@", $username);
                if (count($isEmail) == 1) {
                    $isAuthColumn = "mobile";
                } else {
                    $isAuthColumn = "email";
                }
                if ($username == "") {
                    return new JsonModel(array("success" => false, "message" => "username is required!", "errorCode" => 2));
                }
                if ($password == "") {
                    return new JsonModel(array("success" => false, "message" => "Password is required!", "errorCode" => 3));
                }
                $user = $this->userTable()->authenticateUser($username, $password);

                if ($user["success"]) {
                    $password = $user['user']['password'];
                    session_unset();
                    $this->getAuthDbTable()
                        ->setTableName('user')
                        ->setIdentityColumn($isAuthColumn)
                        ->setCredentialColumn('password')
                        ->setIdentity($user['user'][$isAuthColumn])
                        ->setCredential($password);
                    $this->getAuthService()
                        ->setAdapter($this->getAuthDbTable())
                        ->setStorage($this->getSessionStorage());
                    $this->getSessionManager()->rememberMe(60 * 60 * 24 * 30 * 3);
                    $result = $this->getAuthService()->authenticate();

                    if ($result->isValid()) {
                        $resultRow = (array)$this->getAuthDbTable()->getResultRowObject(array('user_id', 'name', 'email', "role", "image_path"));
                        $this->getSessionStorage()->write($resultRow);


                        //                 $redirectUrl = $this->getBaseUrl() . "/admin/index/admin";
                        //                return $this->redirect()->toUrl($redirectUrl);
                        return new JsonModel(array("success" => true, "message" => "Successfully logged in"));
                    }
                    return new JsonModel(array("success" => false, "message" => "Invalid Credentials", "errorCode" => 4));
                }
                return new JsonModel(array("success" => false, "message" => "Invalid Credentials", "errorCode" => 4));
            } catch (\Exception $e) {
                if (trim($e->getMessage()) == "Zend\ServiceManager\ServiceManager::get was unable to fetch or create an instance for") {
                    return new JsonModel(array("success" => false, "message" => "Invalid Credentials", "errorCode" => 1, "error" => $e->getMessage()));
                } else {
                    return new JsonModel(array("success" => false, "message" => $e->getMessage() . "Something went wrong. Please try again after sometime", "errorCode" => 1));
                }
            }
        } else {
            $userId = $this->getLoggedInUserId();

            if ($userId) {
                $userDetails = $this->getLoggedInUser();


                $redirectUrl = $this->getBaseUrl() . "/admin/admin-home";
                return $this->redirect()->toUrl($redirectUrl);
            }
            return new ViewModel(array("loggedIn" => false));
        }
    }


    public function resetPasswordAction()
    {
        return new ViewModel();
    }

    public function forgotPasswordAction()
    {
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $userName = $request['username'];

                if ($userName == "") {
                    return new JsonModel(array("success" => false, "message" => "Username cannot be empty"));
                }
                $isEmail = explode("@", $userName);
                if (count($isEmail) == 1) {
                    $isAuthColumn = "mobile";
                } else {
                    $isAuthColumn = "email";
                }

                $userData = $this->userTable()->checkActiveUser(array($isAuthColumn => $userName));

                if (!count($userData['user'])) {
                    return new JsonModel(array("success" => false, "message" => "Enter valid Email", "errorCode" => 0));
                } else {
                    $userData = $userData['user'];
                }
                $otp = $this->generateOtp();
                //                $otp = "123456";
                $data = array("otp" => $otp);
                $where = array("user_id" => $userData['user_id']);

                $updateUser = $this->userTable()->updateUser($data, $where);

                if ($updateUser['success']) {

                    if ($isAuthColumn = "email") {

                        $this->sendOtpMail($userName, "OTP", "forgot-Password", array("otp" => $otp, "name" => $userName));
                    }

                    return new JsonModel(array("success" => true, "message" => "Otp send successfully", "user_id" => $userData['user_id']));
                } else {
                    return new JsonModel(array("success" => false, "message" => "Something went wrong! please try again after some time"));
                }
            } catch (\Exception $e) {
                return new JsonModel(array("success" => false, "message" => "Something went wrong! please try again after some time", "error" => $e));
            }
        }
        return new ViewModel();
    }


    public function verifyOtpAction()
    {
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $userId = $request['user_id'];
                $otp = $request['otp'];

                if ($otp == "") {
                    return new JsonModel(array("success" => false, "message" => "OTP field cannot be empty"));
                } else if (strlen($otp) < 6) {
                    return new JsonModel(array("success" => false, "message" => "Please enter valid 6 digit otp"));
                } else if (strlen($otp) > 6) {
                    return new JsonModel(array("success" => false, "message" => "Please enter valid 6 digit otp"));
                }

                $userData = $this->userTable()->verifyOtp(array("user_id" => $userId, "otp" => $otp));

                if ($userData) {
                    return new JsonModel(array("success" => true, "message" => "otp verified successfully", "user_id" => $userId));
                } else {
                    return new JsonModel(array("success" => false, "message" => "Please enter valid otp"));
                }
            } catch (\Exception $e) {
                return new JsonModel(array("success" => false, "message" => "Something went wrong! please try again after some time", "error" => $e));
            }
        }
        return new ViewModel();
    }

    public function changePasswordAction()
    {
        $request = $this->getRequest()->getPost();
        $userId = trim($request['user_id']);
        $password = trim($request['new_password']);
        $confirmPassword = trim($request['confirm_password']);



        if (!$userId) {
            return new JsonModel(array("success" => false, "message" => "Something went Wrong please try after sometime", "error code" => 0));
        }
        if ($password == "") {
            return new JsonModel(array("success" => false, "message" => "Please enter Password", "error code" => 0));
        }
        if ($confirmPassword == " ") {
            return new JsonModel(array("success" => false, "message" => "Please enter confirm Password", "error code" => 1));
        }
        $hash = $this->generateHash();

        $cipher = BlockCipher::factory("openssl", array("algorithm" => "aes"));

        $cipher->setKey($hash);

        $encryptedPassword = $cipher->encrypt($password);


        $data = array(
            "hash" => $hash,
            "password" => $encryptedPassword
        );

        $where = array("user_id" => $userId);

        $updateUser = $this->userTable()->updateUser($data, $where);

        if ($updateUser['success']) {
            return new JsonModel(array("success" => true, "message" => "Password Updated Successfully"));
        }
        return new JsonModel(array("success" => false, "message" => "Oops ! Something went wrong"));
    }
    public function logoutAction()
    {


        try {

            if ($this->getAuthService()->hasIdentity()) {
                $this->getSessionManager()->forgetMe();
                $this->getAuthService()->clearIdentity();
                session_unset();
                session_destroy();
            }

            return $this->redirect()->toUrl($this->getBaseUrl() . "/login");
        } catch (\Exception $e) {

            // print_r($e->getMessage() );exit;
            return array();
        }
    }

    public function userProfilePageAction()
    {
        return new ViewModel();
    }

    public function myProfileAction()
    {
        return new ViewModel();
    }

    public function changePasswordUserAction()
    {
        if ($this->getRequest()->isXmlHttpRequest()) {
            $request = $this->getRequest()->getPost();
            $userId = $this->getLoggedInUserId();
            $userDetails = $this->getLoggedInUser();

            if (!$userId) {
                return new JsonModel(array("success" => false, "message" => "Please login to continue", "errorCode" => 1));
            }

            $oldPassword = trim($request['old_password']);
            $newPassword = trim($request['new_password']);

            if ($oldPassword === "") {
                return new JsonModel(array("success" => false, "message" => "Please enter old password", "errorCode" => 2));
            }

            if ($newPassword === "") {
                return new JsonModel(array("success" => false, "message" => "Please enter new password", "errorCode" => 3));
            }
            $userData = $this->userTable()->getUserById($userId);


            if (!count($userData)) {
                return new JsonModel(array("success" => false, "message" => "Oops..! Something went wrong try again later", "errorCode" => 4));
            }


            $cipher = BlockCipher::factory("mcrypt", array("algorithm" => "aes"));
            $cipher->setKey($userData['hash']);
            $decryptedPassword = $cipher->decrypt($userData['password']);

            $newHash = $this->generateHash();
            $cipher->setKey($newHash);


            if ($decryptedPassword !== $oldPassword) {
                return new JsonModel(array("success" => false, "message" => "Invalid Old Password", "errorCode" => 4));
            }


            if ($oldPassword == $newPassword) {

                return new JsonModel(array("success" => true, "message" => "Nothing to update", "data" => 1));
            }

            $newEncryptedPassword = $cipher->encrypt($newPassword);

            $data = array(
                "password" => $newEncryptedPassword,
                "hash" => $newHash
            );

            $updateUser = $this->userTable()->updateUser($data, array("user_id" => $userDetails['user_id']));

            if ($userDetails['email'] != "") {

                $isAuthKey = "email";
                $isAuthValue = $userDetails['email'];
            } else {

                $isAuthKey = "mobile";
                $isAuthValue = $userDetails['mobile'];
            }


            if ($updateUser['success']) {

                return new JsonModel(array("success" => true, "message" => "Password Changed Successfully"));
            }

            return new JsonModel(array("success" => false, "message" => "Oops..! Something went wrong try again later", "errorCode" => 0));
        }

        return $this->redirect()->toUrl($this->getBaseUrl());
    }

    public function forceLogoutAction()
    {
        try {
            if ($this->getAuthService()->hasIdentity()) {
                $this->getSessionManager()->forgetMe();
                $this->getAuthService()->clearIdentity();
                $_SESSION = array();
                session_unset();
                session_destroy();
            }
            return $this->redirect()->toUrl($this->getBaseUrl() . "/login");
        } catch (\Exception $e) {
            return $this->redirect()->toUrl($this->getBaseUrl() . "/login");
        }
    }
}
