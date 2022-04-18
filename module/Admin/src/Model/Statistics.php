<?php
namespace Admin\Model;

class Statistics
{
  
    public $id;
    public $market_coverage;
    public $geographical_areas;    
    public $monthly_supply;
    public $active_clients;

    public $created_at;
    public $updated_at;


    public function exchangeArray($data)
    {    
        $this->id = (!empty($data['id'])) ? $data['id'] : null;  
        $this->market_coverage = (!empty($data['market_coverage'])) ? $data['market_coverage'] : null;  
        $this->geographical_areas = (!empty($data['geographical_areas'])) ? $data['geographical_areas'] : null;  
        
        $this->monthly_supply = (!empty($data['monthly_supply'])) ? $data['monthly_supply'] : null;
        $this->active_clients = (!empty($data['active_clients'])) ? $data['active_clients'] : null;
        
        $this->created_at = (!empty($data['created_at'])) ? $data['created_at'] : null;
        $this->updated_at = (!empty($data['updated_at'])) ? $data['updated_at'] : null;

    }
    public function getArrayCopy()
    {
        return get_object_vars($this);
    }
}
