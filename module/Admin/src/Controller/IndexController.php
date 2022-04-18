<?php

/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2014 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

namespace Admin\Controller;

use Application\Controller\BaseController;
use Zend\View\Model\JsonModel;
use Zend\View\Model\ViewModel;
use Zend\Crypt\BlockCipher;

class IndexController extends BaseController
{

    public function indexAction()
    { {
            window . location . replace('?price=' + chk . value);
        }
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $this->layout()->setVariable('activeTab', 1);
        return new ViewModel();
    }

    public function clean($string)
    {
        $string = str_replace(' ', '-', $string);

        return preg_replace('/[^A-Za-z0-9\-]/', '', $string);
    }

    public function adminHomeAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $bannerData = $this->homeTable()->getHomeBannerData();
        $this->layout()->setVariable('activeTab', 1);
        return new ViewModel(array("homeBanner" => $bannerData));
    }

    public function addHomeBannerAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $bannerTitle = trim($request['bannerTitle']);
                $bannnerSubTitle = trim($request['bannnerSubTitle']);

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
                //               if ($banner_title === "") {
                //                    return new JsonModel(array("success" => false, "message" => "Please enter the title"));
                //                }
                if ($fileName === "") {
                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                }
                $type = 1;
                $data = array(
                    "title" => $bannerTitle,
                    "sub_title" => $bannnerSubTitle,
                    "type" => $type,
                    "image_path" => $fileName,
                );

                $saveBanner = $this->homeTable()->addHomeBanner($data);

                if ($saveBanner['success']) {
                    return new JsonModel(array("success" => true, "message" => "Banner has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add banner"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $this->layout()->setVariable('activeTab', 1);
        return new ViewModel();
    }

    public function editHomeBannerAction()
    {
        $userDetails = $this->getLoggedInUser();

        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $bannerId = $this->params()->fromQuery("id", 0);
        $homeBanner = $this->homeTable()->homeBannerById($bannerId);

        $this->layout()->setVariable('activeTab', 1);
        return new ViewModel(array('homeBannerData' => $homeBanner));
    }

    public function updateHomeBannerAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $editBannerTitle = trim($request['editBannerTitle']);
                $editBannnerSubTitle = trim($request['editBannnerSubTitle']);
                $homeBannerId = trim($request['homeBannerId']);

                $fileName = rand(0000, 9999) . $files['files']['name'];
                $directoryPath = "/data/images/";
                @mkdir(getcwd() . "/public" . $directoryPath);
                $target_file = getcwd() . "/public" . $directoryPath . $fileName;
                @chmod($target_file, 0777);
                if (move_uploaded_file($files["files"]["tmp_name"], $target_file)) {
                    $finalPath = $directoryPath . $fileName;

                    @chmod($target_file, 0777);
                } else {
                    $finalPath = "";
                }
                $type = 1;
                $data = array(
                    "title" => $editBannerTitle,
                    "sub_title" => $editBannnerSubTitle,
                    "type" => $type,
                );

                if ($finalPath) {
                    $data['image_path'] = $fileName;
                }
                $where = array("id" => $homeBannerId);
                $update = $this->homeTable()->updateHomeBanner($data, $where);

                if ($update) {
                    return new JsonModel(array("success" => true, "message" => "Banner has been updated successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to update Banner"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }

        $this->layout()->setVariable('activeTab', 1);
        return new ViewModel();
    }

    public function deleteHomeBannerAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $request = $this->getRequest()->getPost();
        $bannerId = $request['id'];

        $data = array("status" => 0);
        $where = array("id" => $bannerId);

        $update = $this->homeTable()->updateHomeBanner($data, $where);
        if ($update['success']) {

            return new JsonModel(array("success" => true, "message" => "Banner has been deleted successfully"));
        } else {

            return new JsonModel(array("success" => false, "message" => "something went wrong"));
        }
    }

    public function addHowItWorksAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $worksHeading = trim($request['worksHeading']);
                $workSubHeading = trim($request['workSubHeading']);
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
                if ($worksHeading === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter heading"));
                }
                if ($workSubHeading === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter sub heading"));
                }
                //                if ($fileName === "") {
                //                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                //                }
                $type = 2;
                $data = array(
                    "title" => $worksHeading,
                    "sub_title" => $workSubHeading,
                    "type" => $type,
                );
                if ($finalPath) {
                    $data['image_path'] = $fileName;
                } else {
                    $howItWorksData = $this->homeTable()->getHowItWorksData();
                    if (count($howItWorksData)) {
                        $data['image_path'] = $howItWorksData[0]['image_path'];
                    }
                }
                $saveData = $this->homeTable()->addHowItWorks($data);

                if ($saveData['success']) {
                    return new JsonModel(array("success" => true, "message" => "How it works has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add How it works"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $howItWorkData = $this->homeTable()->getHowItWorksData();
        $this->layout()->setVariable('activeTab', 8);
        return new ViewModel(array("howItWork" => $howItWorkData));
    }

    public function featuresAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $featureHeading = $this->homeTable()->getAllFeatures();
        $this->layout()->setVariable('activeTab', 9);
        return new ViewModel(array("features" => $featureHeading));
    }

    public function addFeatureHeadingAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();

                $featureHeading = trim($request['featureHeading']);
                $featureSubHeading = trim($request['featureSubHeading']);

                if ($featureHeading === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter heading"));
                }
                if ($featureSubHeading === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter sub heading"));
                }
                $type = 3;
                $data = array(
                    "title" => $featureHeading,
                    "sub_title" => $featureSubHeading,
                    "type" => $type,
                );
                $saveData = $this->homeTable()->addFeatureHeading($data);

                if ($saveData['success']) {
                    return new JsonModel(array("success" => true, "message" => "Feature heading has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add feature heading"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $featureHeading = $this->homeTable()->getFeaturesHeading();
        $this->layout()->setVariable('activeTab', 9);
        return new ViewModel(array("heading" => $featureHeading));
    }

    public function addFeaturesAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $featureTitle = trim($request['featureTitle']);
                $featureContent = trim($request['description']);

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
                if ($featureTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the title"));
                }
                if ($fileName === "") {
                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                }
                if ($featureContent === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the content"));
                }
                $type = 4;
                $data = array(
                    "title" => $featureTitle,
                    "content" => $featureContent,
                    "type" => $type,
                    "image_path" => $fileName,
                );

                $save = $this->homeTable()->addFeaturesData($data);

                if ($save['success']) {
                    return new JsonModel(array("success" => true, "message" => "Features has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add features"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $this->layout()->setVariable('activeTab', 9);
        return new ViewModel();
    }

    public function editFeaturesAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $featureId = $this->params()->fromQuery("id", 0);
        $features = $this->homeTable()->featuresById($featureId);

        $this->layout()->setVariable('activeTab', 9);
        return new ViewModel(array('featureData' => $features));
    }

    public function updateFeaturesAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $editFeatureTitle = trim($request['editFeatureTitle']);
                $editFeatureContent = trim($request['editFeatureContent']);
                $featuresId = trim($request['featuresId']);

                $fileName = rand(0000, 9999) . $files['files']['name'];
                $directoryPath = "/data/images/";
                @mkdir(getcwd() . "/public" . $directoryPath);
                $target_file = getcwd() . "/public" . $directoryPath . $fileName;
                @chmod($target_file, 0777);
                if (move_uploaded_file($files["files"]["tmp_name"], $target_file)) {
                    $finalPath = $directoryPath . $fileName;

                    @chmod($target_file, 0777);
                } else {
                    $finalPath = "";
                }
                $type = 4;
                $data = array(
                    "title" => $editFeatureTitle,
                    "content" => $editFeatureContent,
                    "type" => $type,
                );
                if ($finalPath) {
                    $data['image_path'] = $fileName;
                }
                $where = array("id" => $featuresId);
                $update = $this->homeTable()->updateFeatures($data, $where);

                if ($update) {
                    return new JsonModel(array("success" => true, "message" => "Features has been updated successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to update Features"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }

        $this->layout()->setVariable('activeTab', 1);
        return new ViewModel();
    }

    public function deletefeaturesAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $request = $this->getRequest()->getPost();
        $featureId = $request['id'];

        $data = array("status" => 0);
        $where = array("id" => $featureId);

        $update = $this->homeTable()->updateFeatures($data, $where);
        if ($update['success']) {

            return new JsonModel(array("success" => true, "message" => "Features has been deleted successfully"));
        } else {

            return new JsonModel(array("success" => false, "message" => "something went wrong"));
        }
    }

    public function statisticsAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $statisticsData = $this->homeTable()->getAllStatistics();
        $this->layout()->setVariable('activeTab', 10);
        return new ViewModel(array('statistic' => $statisticsData));
    }

    public function addStatisticsHeadingAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();

                $statisticHeading = trim($request['statisticHeading']);
                $statisticSubHeading = trim($request['statisticSubHeading']);

                if ($statisticHeading === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter heading"));
                }
                if ($statisticSubHeading === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter sub heading"));
                }
                $type = 5;
                $data = array(
                    "title" => $statisticHeading,
                    "sub_title" => $statisticSubHeading,
                    "type" => $type,
                );
                $saveData = $this->homeTable()->addStatisticsHeading($data);

                if ($saveData['success']) {
                    return new JsonModel(array("success" => true, "message" => "Statistics heading has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add statistics heading"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $statisticsHeading = $this->homeTable()->getStaticsHeading();
        $this->layout()->setVariable('activeTab', 10);
        return new ViewModel(array("heading" => $statisticsHeading));
    }

    public function addStatisticsAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $statisticsTitle = trim($request['statisticsTitle']);

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
                if ($statisticsTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the title"));
                }
                if ($fileName === "") {
                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                }
                $type = 6;
                $data = array(
                    "title" => $statisticsTitle,
                    "type" => $type,
                    "image_path" => $fileName,
                );

                $save = $this->homeTable()->addStatisticsData($data);

                if ($save['success']) {
                    return new JsonModel(array("success" => true, "message" => "Statistics has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add statistics"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $this->layout()->setVariable('activeTab', 10);
        return new ViewModel();
    }

    public function editStatisticsAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $statisticsId = $this->params()->fromQuery("id", 0);
        $statistics = $this->homeTable()->statisticsById($statisticsId);

        $this->layout()->setVariable('activeTab', 10);
        return new ViewModel(array('statisticsData' => $statistics));
    }

    public function updateStatisticsAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $editStatisticsTitle = trim($request['editStatisticsTitle']);
                $statisticsId = trim($request['statisticsId']);

                $fileName = rand(0000, 9999) . $files['files']['name'];
                $directoryPath = "/data/images/";
                @mkdir(getcwd() . "/public" . $directoryPath);
                $target_file = getcwd() . "/public" . $directoryPath . $fileName;
                @chmod($target_file, 0777);
                if (move_uploaded_file($files["files"]["tmp_name"], $target_file)) {
                    $finalPath = $directoryPath . $fileName;

                    @chmod($target_file, 0777);
                } else {
                    $finalPath = "";
                }
                if ($editStatisticsTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the title"));
                }
                $type = 6;
                $data = array(
                    "title" => $editStatisticsTitle,
                    "type" => $type,
                );

                if ($finalPath) {
                    $data['image_path'] = $fileName;
                }
                $where = array("id" => $statisticsId);
                $update = $this->homeTable()->updateStatistics($data, $where);

                if ($update) {
                    return new JsonModel(array("success" => true, "message" => "Statistics has been updated successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to update Statistics"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }

        $this->layout()->setVariable('activeTab', 10);
        return new ViewModel();
    }

    public function deleteStatisticsAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $request = $this->getRequest()->getPost();
        $statisticsId = $request['id'];

        $data = array("status" => 0);
        $where = array("id" => $statisticsId);

        $update = $this->homeTable()->updateStatistics($data, $where);
        if ($update['success']) {

            return new JsonModel(array("success" => true, "message" => "Statistics has been deleted successfully"));
        } else {

            return new JsonModel(array("success" => false, "message" => "something went wrong"));
        }
    }
    public function figureAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $statisticsData = $this->statisticsTable()->getAllNumberStatistics();
        $this->layout()->setVariable('activeTab', 10);
        return new ViewModel(array('figure' => $statisticsData));
    }
    public function editFigureAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $statisticsId = $this->params()->fromQuery("id", 0);
        $statistics = $this->statisticsTable()->statisticsById($statisticsId);

        $this->layout()->setVariable('activeTab', 10);
        return new ViewModel(array('statisticsData' => $statistics));
    }
    public function updateFigureAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();

                $editMarketCoverage = trim($request['editMarketCoverage']);
                $editGeographicalAreas = trim($request['editGeographicalAreas']);
                $editMonthlySupply = trim($request['editMonthlySupply']);
                $editActiveClient = trim($request['editActiveClient']);
                $statisticsId = trim($request['statisticsId']);


                if ($editMarketCoverage === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the market coverage"));
                }
                if ($editGeographicalAreas === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the geographical areas"));
                }
                if ($editMonthlySupply === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the monthly supply"));
                }
                if ($editActiveClient === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the active clients"));
                }
                $type = 6;
                $data = array(
                    "market_coverage" => $editMarketCoverage,
                    "geographical_areas" => $editGeographicalAreas,
                    "monthly_supply" => $editMonthlySupply,
                    "active_clients" => $editActiveClient,
                    "type" => $type
                );

                $where = array("id" => $statisticsId);
                $update = $this->statisticsTable()->updateStatistics($data, $where);

                if ($update) {
                    return new JsonModel(array("success" => true, "message" => "Statistics has been updated successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to update Statistics"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }

        $this->layout()->setVariable('activeTab', 10);
        return new ViewModel();
    }

    public function addAboutUsAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $aboutBannerTitle = trim($request['aboutBannerTitle']);
                $aboutBannerSubTitle = trim($request['aboutBannerSubTitle']);
                $aboutTitle = trim($request['aboutTitle']);
                $aboutSubTitle = trim($request['aboutSubTitle']);
                $description = trim($request['description']);
                //                $aboutusId = trim($request['aboutusId']);
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
                if ($aboutBannerTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter banner title"));
                }
                if ($aboutBannerSubTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter banner sub title"));
                }
                //                if ($fileName === "") {
                //                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                //                }
                if ($aboutTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the title"));
                }
                if ($aboutSubTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the sub title"));
                }
                if ($description === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the content"));
                }
                $data = array(
                    "banner_title" => $aboutBannerTitle,
                    "banner_sub_title" => $aboutBannerSubTitle,
                    "title" => $aboutTitle,
                    "sub_title" => $aboutSubTitle,
                    "content" => $description,
                );
                if ($finalPath) {
                    $data['image_path'] = $fileName;
                } else {
                    $aboutData = $this->aboutusTable()->getAboutUsData();
                    if (count($aboutData)) {
                        $data['image_path'] = $aboutData[0]['image_path'];
                    }
                }
                $saveBanner = $this->aboutusTable()->addAboutus($data);

                if ($saveBanner['success']) {
                    return new JsonModel(array("success" => true, "message" => "Aboutus has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add aboutus"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $aboutData = $this->aboutusTable()->getAboutUsData();
        $this->layout()->setVariable('activeTab', 2);
        return new ViewModel(array("aboutus" => $aboutData));
    }

    public function serviceAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $servicesData = $this->serviceTable()->getAllServices();
        $this->layout()->setVariable('activeTab', 3);
        return new ViewModel(array('service' => $servicesData));
    }

    public function addServiceBannerAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $serviceBannerTitle = trim($request['serviceBannerTitle']);
                $serviceBannerSubTitle = trim($request['serviceBannerSubTitle']);
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
                if ($serviceBannerTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter title"));
                }
                if ($serviceBannerSubTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter sub title"));
                }
                //                if ($fileName === "") {
                //                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                //                }
                $type = 1;
                $data = array(
                    "title" => $serviceBannerTitle,
                    "sub_title" => $serviceBannerSubTitle,
                    "type" => $type,
                );
                if ($finalPath) {
                    $data['image_path'] = $fileName;
                } else {
                    $serviceBannerData = $this->serviceTable()->getServiceBanner();
                    if (count($serviceBannerData)) {
                        $data['image_path'] = $serviceBannerData[0]['image_path'];
                    }
                }

                $saveBanner = $this->serviceTable()->addServiceBanner($data);

                if ($saveBanner['success']) {
                    return new JsonModel(array("success" => true, "message" => "Banner has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add banner"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $serviceBannerData = $this->serviceTable()->getServiceBanner();

        $this->layout()->setVariable('activeTab', 3);
        return new ViewModel(array("servicebanner" => $serviceBannerData));
    }

    public function addServiceHeadingAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();

                $serviceHeading = trim($request['serviceHeading']);
                $serviceSubHeading = trim($request['serviceSubHeading']);

                if ($serviceHeading === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter heading"));
                }
                if ($serviceSubHeading === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter sub heading"));
                }
                $type = 2;
                $data = array(
                    "title" => $serviceHeading,
                    "sub_title" => $serviceSubHeading,
                    "type" => $type,
                );
                $saveData = $this->serviceTable()->addServiceHeading($data);

                if ($saveData['success']) {
                    return new JsonModel(array("success" => true, "message" => "Services heading has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add services heading"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $serviceHeading = $this->serviceTable()->getServiceHeading();
        $this->layout()->setVariable('activeTab', 3);
        return new ViewModel(array('serviceHeading' => $serviceHeading));
    }

    public function addServiceAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $serviceTitle = trim($request['serviceTitle']);
                $serviceContent = trim($request['description']);

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
                if ($serviceTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the title"));
                }
                if ($fileName === "") {
                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                }
                if ($serviceContent === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the content"));
                }
                $type = 3;
                $data = array(
                    "title" => $serviceTitle,
                    "content" => $serviceContent,
                    "type" => $type,
                    "image_path" => $fileName,
                );

                $save = $this->serviceTable()->addService($data);

                if ($save['success']) {
                    return new JsonModel(array("success" => true, "message" => "Services has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add services"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $this->layout()->setVariable('activeTab', 3);
        return new ViewModel();
    }

    public function editServicesAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $serviceId = $this->params()->fromQuery("id", 0);
        $service = $this->serviceTable()->serviceById($serviceId);

        $this->layout()->setVariable('activeTab', 3);
        return new ViewModel(array('serviceData' => $service));
    }

    public function updateServicesAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $editServiceTitle = trim($request['editServiceTitle']);
                $editServiceContent = trim($request['editServiceContent']);
                $serviceId = trim($request['serviceId']);

                $fileName = rand(0000, 9999) . $files['files']['name'];
                $directoryPath = "/data/images/";
                @mkdir(getcwd() . "/public" . $directoryPath);
                $target_file = getcwd() . "/public" . $directoryPath . $fileName;
                @chmod($target_file, 0777);
                if (move_uploaded_file($files["files"]["tmp_name"], $target_file)) {
                    $finalPath = $directoryPath . $fileName;

                    @chmod($target_file, 0777);
                } else {
                    $finalPath = "";
                }
                if ($editServiceTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter title"));
                }
                if ($editServiceContent === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the content"));
                }
                $type = 3;
                $data = array(
                    "title" => $editServiceTitle,
                    "content" => $editServiceContent,
                    "type" => $type,
                );

                if ($finalPath) {
                    $data['image_path'] = $fileName;
                }
                $where = array("service_id" => $serviceId);
                $update = $this->serviceTable()->updateServices($data, $where);

                if ($update) {
                    return new JsonModel(array("success" => true, "message" => "Services has been updated successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to update services"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }

        $this->layout()->setVariable('activeTab', 1);
        return new ViewModel();
    }

    public function deleteServicesAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $request = $this->getRequest()->getPost();

        $serviceId = $request['id'];
        $data = array("status" => 0);
        $where = array("service_id" => $serviceId);

        $update = $this->serviceTable()->updateServices($data, $where);
        if ($update['success']) {

            return new JsonModel(array("success" => true, "message" => "Services has been deleted successfully"));
        } else {

            return new JsonModel(array("success" => false, "message" => "something went wrong"));
        }
    }

    public function blogAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $blogdata = $this->blogTable()->getBlogs($data);
        $this->layout()->setVariable('activeTab', 4);
        return new ViewModel(array('blog' => $blogdata));
    }

    public function addBlogAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {


                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $blogTitle = trim($request['blogTitle']);
                $blogUrl = trim($request['blogUrl']);
                $blogDate = trim($request['datepicker']);
                $description = trim($request['description']);

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

                if ($blogTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter title!"));
                }
                if ($blogUrl === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter url"));
                }
                if ($blogDate === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter date"));
                }

                if ($fileName === "") {
                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                }

                if ($description === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter description!"));
                }

                $data = array(
                    "title" => $blogTitle,
                    "custom_url" => $blogUrl,
                    "date" => $blogDate,
                    "content" => $description,
                    "image_path" => $fileName,
                );

                //                $isTitleExist = $this->blogTable()->IsBlogExist(array("title" => $blog_title, "status" => "1"), "blog_id");
                //                if ($isTitleExist) {
                //                    return new JsonModel(array("success" => FALSE, "message" => "Title " . $blog_title . " is already exists, Please choose another"));
                //                }

                $saveBlog = $this->blogTable()->addBlog($data);
                if ($saveBlog['success']) {
                    return new JsonModel(array("success" => true, "message" => "Blog has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add Blog"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $this->layout()->setVariable('activeTab', 4);
        return new ViewModel();
    }

    public function editBlogAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $blogId = $this->params()->fromQuery("id", 0);
        $blogData = $this->blogTable()->blogById($blogId);

        $this->layout()->setVariable('activeTab', 4);
        return new ViewModel(array('blogData' => $blogData));
    }

    public function updateBlogAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $blogTitle = trim($request['blogTitle']);
                $blogUrl = trim($request['blogUrl']);
                $datepicker = trim($request['datepicker']);
                $description = trim($request['description']);
                $blogId = trim($request['blogId']);
                $fileName = rand(0000, 9999) . $files['files']['name'];
                $directoryPath = "/data/images/";
                @mkdir(getcwd() . "/public" . $directoryPath);
                $target_file = getcwd() . "/public" . $directoryPath . $fileName;
                @chmod($target_file, 0777);
                if (move_uploaded_file($files["files"]["tmp_name"], $target_file)) {
                    $finalPath = $directoryPath . $fileName;

                    @chmod($target_file, 0777);
                } else {
                    $finalPath = "";
                }
                if ($blogTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter title"));
                }
                if ($blogUrl === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the url"));
                }
                if ($datepicker === "") {
                    return new JsonModel(array("success" => false, "message" => "Please select date"));
                }
                if ($description === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the content"));
                }

                $data = array(
                    "title" => $blogTitle,
                    "custom_url" => $blogUrl,
                    "date" => $datepicker,
                    "content" => $description,
                );

                if ($finalPath) {
                    $data['image_path'] = $fileName;
                }
                $where = array("blog_id" => $blogId);
                $update = $this->blogTable()->updateBlog($data, $where);

                if ($update) {
                    return new JsonModel(array("success" => true, "message" => "Blog has been updated successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to update blog"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }

        $this->layout()->setVariable('activeTab', 4);
        return new ViewModel();
    }

    public function deleteBlogAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $request = $this->getRequest()->getPost();

        $blogId = $request['id'];
        $data = array("status" => 0);
        $where = array("blog_id" => $blogId);

        $update = $this->blogTable()->updateBlog($data, $where);
        if ($update['success']) {

            return new JsonModel(array("success" => true, "message" => "Blog has been deleted successfully"));
        } else {

            return new JsonModel(array("success" => false, "message" => "something went wrong"));
        }
    }

    public function adminGalleryAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $galleryData = $this->galleryTable()->getGallery();

        $this->layout()->setVariable('activeTab', 5);
        return new ViewModel(array('galleryData' => $galleryData));
    }

    public function addGalleryAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $order = trim($request['order']);

                $files = $this->getRequest()->getFiles();

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

                if ($fileName === "") {
                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                }

                $data = array(
                    "image_path" => $fileName,
                    "order" => $order,
                );

                $save = $this->galleryTable()->addGallery($data);

                if ($save['success']) {
                    return new JsonModel(array("success" => true, "message" => "Gallery has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add gallery"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $this->layout()->setVariable('activeTab', 5);
        return new ViewModel();
    }

    public function editGalleryAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $galleryId = $this->params()->fromQuery("id", 0);
        $galleryData = $this->galleryTable()->galleryById($galleryId);

        $this->layout()->setVariable('activeTab', 5);
        return new ViewModel(array('galleryData' => $galleryData));
    }

    public function updateGalleryAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $galleryId = trim($request['galleryId']);
                $order = trim($request['order']);

                $fileName = rand(0000, 9999) . $files['files']['name'];
                $directoryPath = "/data/images/";
                @mkdir(getcwd() . "/public" . $directoryPath);
                $target_file = getcwd() . "/public" . $directoryPath . $fileName;
                @chmod($target_file, 0777);
                if (move_uploaded_file($files["files"]["tmp_name"], $target_file)) {
                    $finalPath = $directoryPath . $fileName;

                    @chmod($target_file, 0777);
                } else {
                    $finalPath = "";
                }
                $data['order'] = $order;
                if ($finalPath) {
                    $data['image_path'] = $fileName;
                }
                $where = array("gallery_id" => $galleryId);
                $update = $this->galleryTable()->updateGallery($data, $where);

                if ($update) {
                    return new JsonModel(array("success" => true, "message" => "Gallery has been updated successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to update gallery"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }

        $this->layout()->setVariable('activeTab', 5);
        return new ViewModel();
    }

    public function deleteGalleryAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $request = $this->getRequest()->getPost();

        $galleryId = $request['id'];
        $data = array("status" => 0);
        $where = array("gallery_id" => $galleryId);

        $update = $this->galleryTable()->updateGallery($data, $where);
        if ($update['success']) {

            return new JsonModel(array("success" => true, "message" => "Gallery has been deleted successfully"));
        } else {

            return new JsonModel(array("success" => false, "message" => "something went wrong"));
        }
    }

    public function careerAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $careerData = $this->careerTable()->getCareer();
        // print_r($careerData);exit;
        $this->layout()->setVariable('activeTab', 6);
        return new ViewModel(array('careerData' => $careerData));
    }

    public function addCareerBannerAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $BannerTitle = trim($request['BannerTitle']);
                $bannerSubTitle = trim($request['bannerSubTitle']);
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
                if ($BannerTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter title"));
                }
                if ($bannerSubTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter sub title"));
                }
                //                if ($fileName === "") {
                //                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                //                }
                $type = 1;
                $data = array(
                    "title" => $BannerTitle,
                    "sub_title" => $bannerSubTitle,
                    "type" => $type,
                );
                if ($finalPath) {
                    $data['image_path'] = $fileName;
                } else {
                    $careerBannerData = $this->careerTable()->getCareerBanner();
                    if (count($careerBannerData)) {
                        $data['image_path'] = $careerBannerData[0]['image_path'];
                    }
                }
                $saveBanner = $this->careerTable()->addCareerBanner($data);

                if ($saveBanner['success']) {
                    return new JsonModel(array("success" => true, "message" => "Banner has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add banner"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $careerBannerData = $this->careerTable()->getCareerBanner();

        $this->layout()->setVariable('activeTab', 6);
        return new ViewModel(array("careerBanner" => $careerBannerData));
    }

    public function addCareerAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();

                $careerTitle = trim($request['careerTitle']);
                $careerContent = trim($request['careerContent']);
                $careerOrder = trim($request['careerOrder']);

                if ($careerTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the title"));
                }

                if ($careerContent === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the content"));
                }
                if ($careerOrder < 0) {
                    return new JsonModel(array("success" => false, "message" => "Please enter the order"));
                }
                $type = 2;
                $data = array(
                    "title" => $careerTitle,
                    "content" => $careerContent,
                    "position_order" => $careerOrder,
                    "type" => $type,
                );

                $save = $this->careerTable()->addCareerData($data);

                if ($save['success']) {
                    return new JsonModel(array("success" => true, "message" => "Career has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add career"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $this->layout()->setVariable('activeTab', 6);
        return new ViewModel();
    }

    public function editCareerAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $careerId = $this->params()->fromQuery("id", 0);
        $careerData = $this->careerTable()->careerById($careerId);

        $this->layout()->setVariable('activeTab', 6);
        return new ViewModel(array('careerData' => $careerData));
    }

    public function updateCareerAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $editCareerTitle = trim($request['editCareerTitle']);
                $editCareerContent = trim($request['editCareerContent']);
                $editCareerOrder = trim($request['editCareerOrder']);
                $careerId = trim($request['careerId']);

                if ($editCareerTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter title"));
                }
                if ($editCareerContent === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the content"));
                }
                if ($editCareerOrder < 0) {
                    return new JsonModel(array("success" => false, "message" => "Please enter the Order"));
                }
                $type = 2;
                $data = array(
                    "title" => $editCareerTitle,
                    "content" => $editCareerContent,
                    "position_order" => $editCareerOrder,
                    "type" => $type,
                );

                $where = array("career_id" => $careerId);
                $update = $this->careerTable()->updateCareer($data, $where);

                if ($update) {
                    return new JsonModel(array("success" => true, "message" => "Career has been updated successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to update career"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }

        $this->layout()->setVariable('activeTab', 1);
        return new ViewModel();
    }

    public function deleteCareerAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $request = $this->getRequest()->getPost();

        $careerId = $request['id'];
        $data = array("status" => 0);
        $where = array("career_id" => $careerId);

        $update = $this->careerTable()->updateCareer($data, $where);
        if ($update['success']) {

            return new JsonModel(array("success" => true, "message" => "Career has been deleted successfully"));
        } else {

            return new JsonModel(array("success" => false, "message" => "something went wrong"));
        }
    }

    public function careerApplicationAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $careerApplicationData = $this->careerTable()->getCareerApplication();
        $this->layout()->setVariable('activeTab', 12);
        return new ViewModel(array('careerApplication' => $careerApplicationData));
    }
    public function contactAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $contacQueryData = $this->contactusTable()->getContactQuery();
        $this->layout()->setVariable('activeTab', 7);
        return new ViewModel(array('contactQuery' => $contacQueryData));
    }

    public function addAddressAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();

                $mobile = trim($request['mobile']);
                $whatAppNumber = trim($request['whatAppNumber']);
                $email = trim($request['email']);
                $address = trim($request['address']);

                if ($mobile === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the mobile"));
                }
                if ($whatAppNumber === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter whatapp number"));
                }
                if ($email === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter email"));
                }
                if ($address === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter the address"));
                }
                $type = 2;
                $data = array(
                    "mobile" => $mobile,
                    "number" => $whatAppNumber,
                    "email" => $email,
                    "address" => $address,
                    "type" => $type,
                );

                $save = $this->contactusTable()->addContactus($data);

                if ($save['success']) {
                    return new JsonModel(array("success" => true, "message" => "Address has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add address"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $contact = $this->contactusTable()->getAddressData();
        $this->layout()->setVariable('activeTab', 7);
        return new ViewModel(array('contact' => $contact));
    }

    public function ourTeamAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $ourTeamData = $this->ourteamTable()->getOurTeamData();
        $this->layout()->setVariable('activeTab', 11);
        return new ViewModel(array('teamData' => $ourTeamData));
    }

    public function addOurTeamAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $name = trim($request['name']);
                $designation = trim($request['designation']);
                $order = trim($request['order']);
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
                if ($name === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter name"));
                }

                if ($designation === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter designation"));
                }
                if ($fileName === "") {
                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                }

                $data = array(
                    "name" => $name,
                    "designation" => $designation,
                    "image_path" => $fileName,
                    "order" => $order,
                );

                $save = $this->ourteamTable()->addOurTeam($data);

                if ($save['success']) {
                    return new JsonModel(array("success" => true, "message" => "Our team has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add our team"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $this->layout()->setVariable('activeTab', 11);
        return new ViewModel();
    }

    public function editOurTeamAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $teamId = $this->params()->fromQuery("id", 0);
        $team = $this->ourteamTable()->teamById($teamId);

        $this->layout()->setVariable('activeTab', 11);
        return new ViewModel(array('teamData' => $team));
    }

    public function updateOurTeamAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $editname = trim($request['editname']);
                $editdesignation = trim($request['editdesignation']);
                $editorder = trim($request['editorder']);
                $editId = trim($request['editId']);

                $fileName = rand(0000, 9999) . $files['files']['name'];
                $directoryPath = "/data/images/";
                @mkdir(getcwd() . "/public" . $directoryPath);
                $target_file = getcwd() . "/public" . $directoryPath . $fileName;
                @chmod($target_file, 0777);
                if (move_uploaded_file($files["files"]["tmp_name"], $target_file)) {
                    $finalPath = $directoryPath . $fileName;

                    @chmod($target_file, 0777);
                } else {
                    $finalPath = "";
                }
                if ($editname === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter name"));
                }
                if ($editdesignation === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter designation"));
                }

                $data = array(
                    "name" => $editname,
                    "designation" => $editdesignation,
                    "order" => $editorder,
                );

                if ($finalPath) {
                    $data['image_path'] = $fileName;
                }
                $where = array("team_id" => $editId);
                $update = $this->ourteamTable()->updateOurTeam($data, $where);

                if ($update) {
                    return new JsonModel(array("success" => true, "message" => "Our team has been updated successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to update our team"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }

        $this->layout()->setVariable('activeTab', 11);
        return new ViewModel();
    }

    public function deleteOurTeamAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $request = $this->getRequest()->getPost();

        $teamId = $request['id'];
        $data = array("status" => 0);
        $where = array("team_id" => $teamId);

        $update = $this->ourteamTable()->updateOurTeam($data, $where);
        if ($update['success']) {

            return new JsonModel(array("success" => true, "message" => "Our team has been deleted successfully"));
        } else {

            return new JsonModel(array("success" => false, "message" => "something went wrong"));
        }
    }

    public function addContactBannerAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $BannerTitle = trim($request['BannerTitle']);

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
                if ($BannerTitle === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter title"));
                }

                $type = 1;
                $data = array(
                    "title" => $BannerTitle,
                    "type" => $type,
                );
                if ($finalPath) {
                    $data['image_path'] = $fileName;
                } else {
                    $contactBannerData = $this->contactusTable()->getContactBanner();
                    if (count($contactBannerData)) {
                        $data['image_path'] = $contactBannerData[0]['image_path'];
                    }
                }

                $saveBanner = $this->contactusTable()->addContactBanner($data);

                if ($saveBanner['success']) {
                    return new JsonModel(array("success" => true, "message" => "Banner has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add banner"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $contactBannerData = $this->contactusTable()->getContactBanner();
        $this->layout()->setVariable('activeTab', 7);
        return new ViewModel(array("contactBanner" => $contactBannerData));
    }

    public function resetPasswordAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $this->layout()->setVariable('activeTab', 13);
        return new ViewModel(array('userData' => $userDetails));
    }

    public function changePasswordAction()
    {
        $request = $this->getRequest()->getPost();
        $userId = 1;
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
    public function profileAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $this->layout()->setVariable('activeTab', 13);
        return new ViewModel();
    }
    public function executiveAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $executiveData = $this->executiveTable()->getExecutiveData();
        $this->layout()->setVariable('activeTab', 14);
        return new ViewModel(array('executive' => $executiveData));
    }
    public function advisorAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $advisorData = $this->advisorTable()->getAdvisorData();
        $this->layout()->setVariable('activeTab', 15);
        return new ViewModel(array('advisor' => $advisorData));
    }

    public function addExecutiveAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $name = trim($request['name']);
                $designation = trim($request['designation']);
                $linkedin_url = trim($request['linkedin_url']);
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
                if ($name === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter name"));
                }

                if ($designation === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter designation"));
                }
                if ($linkedin_url === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter linkedin url"));
                }
                if ($fileName === "") {
                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                }
                $data = array(
                    "name" => $name,
                    "designation" => $designation,
                    "linkedin_url" => $linkedin_url,
                    "image_path" => $fileName,
                );
                $save = $this->executiveTable()->addExecutive($data);
                if ($save['success']) {
                    return new JsonModel(array("success" => true, "message" => "Executive has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add Executive"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $this->layout()->setVariable('activeTab', 14);
        return new ViewModel();
    }

    public function addAdvisorAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $name = trim($request['name']);
                $designation = trim($request['designation']);
                $linkedin_url = trim($request['linkedin_url']);
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
                if ($name === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter name"));
                }

                if ($designation === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter designation"));
                }
                // if ($linkedin_url === "") {
                //     return new JsonModel(array("success" => false, "message" => "Please enter linkedin url"));
                // }
                if ($fileName === "") {
                    return new JsonModel(array("success" => false, "message" => "Please upload Image"));
                }
                $data = array(
                    "name" => $name,
                    "designation" => $designation,
                    "linkedin_url" => $linkedin_url,
                    "image_path" => $fileName,
                );

                $save = $this->advisorTable()->addAdvisor($data);
                if ($save['success']) {
                    return new JsonModel(array("success" => true, "message" => "Advisor has been added successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to add Advisor"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }
        $this->layout()->setVariable('activeTab', 15);
        return new ViewModel();
    }

    public function editExecutiveAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $Id = $this->params()->fromQuery("id", 0);
        $executive = $this->executiveTable()->executiveById($Id);

        $this->layout()->setVariable('activeTab', 14);
        return new ViewModel(array('executiveData' => $executive));
    }

    public function editAdvisorAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $Id = $this->params()->fromQuery("id", 0);
        $advisor = $this->advisorTable()->advisorById($Id);

        $this->layout()->setVariable('activeTab', 15);
        return new ViewModel(array('advisorData' => $advisor));
    }

    public function updateExecutiveAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $editname = trim($request['editname']);
                $editdesignation = trim($request['editdesignation']);
                $editlinkedin_url = trim($request['editlinkedin_url']);
                $editId = trim($request['editId']);

                $fileName = rand(0000, 9999) . $files['files']['name'];
                $directoryPath = "/data/images/";
                @mkdir(getcwd() . "/public" . $directoryPath);
                $target_file = getcwd() . "/public" . $directoryPath . $fileName;
                @chmod($target_file, 0777);
                if (move_uploaded_file($files["files"]["tmp_name"], $target_file)) {
                    $finalPath = $directoryPath . $fileName;

                    @chmod($target_file, 0777);
                } else {
                    $finalPath = "";
                }
                if ($editname === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter name"));
                }
                if ($editdesignation === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter designation"));
                }

                $data = array(
                    "name" => $editname,
                    "designation" => $editdesignation,
                    "linkedin_url" => $editlinkedin_url
                );

                if ($finalPath) {
                    $data['image_path'] = $fileName;
                }
                $where = array("id" => $editId);
                $update = $this->executiveTable()->updateExecutive($data, $where);
                if ($update) {
                    return new JsonModel(array("success" => true, "message" => "Executive has been updated successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to update executive"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }

        $this->layout()->setVariable('activeTab', 14);
        return new ViewModel();
    }

    public function updateAdvisorAction()
    {

        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        if ($this->getRequest()->isXmlHttpRequest()) {
            try {
                $request = $this->getRequest()->getPost();
                $files = $this->getRequest()->getFiles();

                $editname = trim($request['editname']);
                $editdesignation = trim($request['editdesignation']);
                $editlinkedin_url = trim($request['editlinkedin_url']);
                $editId = trim($request['editId']);
                $fileName = rand(0000, 9999) . $files['files']['name'];
                $directoryPath = "/data/images/";
                @mkdir(getcwd() . "/public" . $directoryPath);
                $target_file = getcwd() . "/public" . $directoryPath . $fileName;
                @chmod($target_file, 0777);
                if (move_uploaded_file($files["files"]["tmp_name"], $target_file)) {
                    $finalPath = $directoryPath . $fileName;

                    @chmod($target_file, 0777);
                } else {
                    $finalPath = "";
                }
                if ($editname === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter name"));
                }
                if ($editdesignation === "") {
                    return new JsonModel(array("success" => false, "message" => "Please enter designation"));
                }

                $data = array(
                    "name" => $editname,
                    "designation" => $editdesignation,
                    "linkedin_url" => $editlinkedin_url
                );

                if ($finalPath) {
                    $data['image_path'] = $fileName;
                }
                $where = array("advisor_id" => $editId);
                $update = $this->advisorTable()->updateAdvisor($data, $where);
                if ($update) {
                    return new JsonModel(array("success" => true, "message" => "Advisor has been updated successfully"));
                }
                return new JsonModel(array("success" => false, "message" => "Unable to update advisor"));
            } catch (\Exception $e) {
                print_r($e->getMessage());
                exit;
                return new JsonModel(array("success" => false, "message" => "something went wrong"));
            }
        }

        $this->layout()->setVariable('activeTab', 15);
        return new ViewModel();
    }

    public function deleteExecutiveAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $request = $this->getRequest()->getPost();

        $Id = $request['id'];
        $data = array("status" => 0);
        $where = array("id" => $Id);

        $update = $this->executiveTable()->updateExecutive($data, $where);
        if ($update['success']) {
            return new JsonModel(array("success" => true, "message" => "Executive has been deleted successfully"));
        } else {
            return new JsonModel(array("success" => false, "message" => "something went wrong"));
        }
    }

    public function deleteAdvisorAction()
    {
        $userDetails = $this->getLoggedInUser();
        if (!$userDetails) {
            return $this->redirect()->toUrl($this->getBaseUrl());
        }
        $request = $this->getRequest()->getPost();

        $Id = $request['id'];
        $data = array("status" => 0);
        $where = array("advisor_id" => $Id);

        $update = $this->advisorTable()->updateAdvisor($data, $where);
        if ($update['success']) {
            return new JsonModel(array("success" => true, "message" => "Advisor has been deleted successfully"));
        } else {
            return new JsonModel(array("success" => false, "message" => "something went wrong"));
        }
    }
}
