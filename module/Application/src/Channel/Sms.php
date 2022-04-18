<?php
namespace Application\Channel;

use Zend\View\Model\ViewModel;
use Zend\Log\Logger;
use Zend\View\Renderer\PhpRenderer;
use Zend\View\Resolver\TemplatePathStack;

class Sms
{
    public function send($mobile, $template, $data)
    {
        try
        {
            $subString = substr($mobile, 0, 3);
            if($subString != "+91")
            {
                $mobile =  "+91".$mobile;
            }

            $content = $this->getContentFromTemplate($template, $data);
            //$url = "http://123.63.33.43/blank/sms/user/urlsmstemp.php?username=feedbuck&pass=Feedbuck@123&dest_mobileno=".$mobile."&message=".$content."&response=Y&senderid=FEDBUK";
            $url = "http://api.smscountry.com/SMSCwebservice_bulk.aspx?User=Tvishatechnologies&passwd=38465610&mobilenumber=".$mobile."&message=".$content."&type=N&DR=Y";


            //$url="http://api.smscountry.com/SMSCwebservice_bulk.aspx?User=Hoopshe&passwd=hoopshe@123&mobilenumber=".$mobile."&message=".$content."&sid=HOOPSH&mtype=N&DR=Y";
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, $url);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
            $output = curl_exec($ch);
            curl_close($ch);
            $output = str_replace(array("\n", "\r","<br>"), '', $output);
            return $output;
        } catch (\Exception $e) {
            return false;
        }
    }
        public function getContentFromTemplate($template, $data)
        {
            $view = new PhpRenderer();
            $view->getHelperPluginManager()->get('basePath')->setBasePath('');
            $resolver = new TemplatePathStack();
            $resolver->setPaths(array(
            'smsTemplate' => __DIR__ . '/../../../view/sms',
            /*'mailTemplate' => __DIR__ . '/../../../../Application/view/email',*/
            ));
            $view->setResolver($resolver);
            $viewModel = new ViewModel();
            $viewModel->setTemplate($template)
            ->setVariables($data);
            return $view->render($viewModel);
        }
}