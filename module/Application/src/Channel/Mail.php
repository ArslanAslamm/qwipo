<?php

namespace Application\Channel;

use Zend\View\Model\ViewModel;
use Zend\Mail\Message;
use Zend\Mail\Transport\Smtp as SmtpTransport;
use Zend\View\Renderer\PhpRenderer;
use Zend\View\Resolver\TemplatePathStack;
use Zend\Mime\Message as MimeMessage;
use Zend\Mime\Part as MimePart;
use Zend\Mime\Mime;

class Mail
{

    protected $transport;
    protected $logger;

    public function __construct(SmtpTransport $transport)
    {
        $this->transport = $transport;

    }

    public function send($from, $to, $subject, $template, $data ,$senderName = "",$filePath = array(),$attach = array(),$filename = "")
    {
        try {
           
            $content = $this->getContentFromTemplate($template, $data);
            

            $body = $this->getMailBodyFromHtml($content,$attach,$filename,$filePath);
            if($senderName == ""){
                $fromName = "info@qwipo.com";
            }else{
                $fromName = $senderName;
            }

            if(isset($data['sender'])){
                if(trim($data['sender']) != ""){
                    $fromName = $data['sender']." - HOME FLEET";
                }
            }
            
            
            
            $message = new Message();
            $message->addTo($to)
                ->setFrom($from,$fromName)
                /*->setSender($from, "Votocrat")*/
                ->setSubject($subject)
                ->setBody($body)
                ->setEncoding('UTF-8');

            if(array_key_exists("bccEmail",$data)){
                if(count($data["bccEmail"])){
                    $message->addBcc($data["bccEmail"]);
                }
            }
            $message->getHeaders()->get('content-type')->setType('multipart/alternative');

            $result = $this->transport->send($message);
            
            return true;
        } catch (\Exception $e) {
           // print_r($e->getMessage());exit;
            return false;
        }
    }

    public function getContentFromTemplate($template, $data)
    {
        $view = new PhpRenderer();
        $view->getHelperPluginManager()->get('basePath')->setBasePath('');

        $resolver = new TemplatePathStack();
        $resolver->setPaths(array(
            'mailTemplate' =>__DIR__ . '/../../../Application/view/email',
        ));
        $view->setResolver($resolver);

        $viewModel = new ViewModel();
        $viewModel->setTemplate($template)
                ->setVariables($data);

        return $view->render($viewModel);
    }

    public function getMailBodyFromHtml($content, $attach,$filename,$filePath)
    {
        $text = new MimePart(strip_tags(str_replace(array("<br />", "<br/>", "<br>"), '\n', $content)));
        $text->type = "text/plain";

        $html = new MimePart($content);
        $html->type = "text/html";

        $body = new MimeMessage();
        $body->setParts(array($text, $html));
        if(count($attach)){
            if ($attach['size'] != 0) {

                $content = new MimeMessage();
                $content->addPart($text);
                $content->addPart($html);

                $contentPart = new MimePart($content->generateMessage());
                $contentPart->type = "multipart/alternative;\n boundary=\"" . $content->getMime()->boundary() . '"';

                $body->addPart($contentPart);

                $fileContent = file_get_contents($attach['tmp_name']);
                $attachment = new MimePart($fileContent);
                $attachment->filename = $filename;
                $attachment->type        = Mime::TYPE_OCTETSTREAM;
                $attachment->encoding = Mime::ENCODING_BASE64;
                $attachment->disposition = Mime::DISPOSITION_ATTACHMENT;

                $body->addPart($attachment);
            }
        }else if(count($filePath)){
            $content = new MimeMessage();
            $content->addPart($text);
            $content->addPart($html);

            $contentPart = new MimePart($content->generateMessage());
            $contentPart->type = "multipart/alternative;\n boundary=\"" . $content->getMime()->boundary() . '"';

            $body->addPart($contentPart);
            $counter = 0;
            foreach($filePath as $row){
                $counter++;

                $fileContent = file_get_contents($row);
                $attachment = new MimePart($fileContent);
                $attachment->filename = $filename;
                $attachment->type        = Mime::TYPE_OCTETSTREAM;
                $attachment->encoding = Mime::ENCODING_BASE64;
                $attachment->disposition = Mime::DISPOSITION_ATTACHMENT;

                $body->addPart($attachment);
            }
        }

        return $body;
    }
}