<?php
namespace Admin\Model;

class Gallery
{
  
    public $gallery_id;       
    public $image_path;   
    public $status;
    public $position_order;
    public $created_at;
    public $updated_at;


    public function exchangeArray($data)
    {    
        $this->gallery_id = (!empty($data['gallery_id'])) ? $data['gallery_id'] : null;  
        $this->image_path = (!empty($data['image_path'])) ? $data['image_path'] : null;
        $this->position_order = (!empty($data['position_order'])) ? $data['position_order'] : 1;
        $this->status = (!empty($data['status'])) ? $data['status'] : null;     

        $this->created_at = (!empty($data['created_at'])) ? $data['created_at'] : null;
        $this->updated_at = (!empty($data['updated_at'])) ? $data['updated_at'] : null;

    }
    public function getArrayCopy()
    {
        return get_object_vars($this);
    }
}
