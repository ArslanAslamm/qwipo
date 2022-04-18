<?php
namespace Admin\Model;

class Aboutus
{
  
    public $id;
    public $title;
    public $sub_title;    
    public $image_path;
    public $type;
    public $status;
  
    public $created_at;
    public $updated_at;


    public function exchangeArray($data)
    {    
        $this->id = (!empty($data['product_id'])) ? $data['product_id'] : null;  
        $this->title = (!empty($data['title'])) ? $data['title'] : null;  
        $this->name = (!empty($data['name'])) ? $data['name'] : null;  
        $this->description = (!empty($data['description'])) ? $data['description'] : null;
        $this->image_path = (!empty($data['image_path'])) ? $data['image_path'] : null;
        $this->type = (!empty($data['type'])) ? $data['type'] : null;
        $this->status = (!empty($data['status'])) ? $data['status'] : null;     

        $this->created_at = (!empty($data['created_at'])) ? $data['created_at'] : null;
        $this->updated_at = (!empty($data['updated_at'])) ? $data['updated_at'] : null;

    }
    public function getArrayCopy()
    {
        return get_object_vars($this);
    }
}