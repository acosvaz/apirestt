<?php

class Productosapi_model extends CI_Model{

    public function __construct() {
        parent::__construct();
    }
        
    public function get($id = null) {
        
        if(!is_null($id)){
            $this->db->select('*');
            $this->db->from('eg_productos');
            $this->db->where('id', $id);
            $query = $this->db->get();
            
            if ($query->num_rows() === 1){
            return $query->result_array();
            
            }
            
            return false;
            
        }
      
      $query = $this->db->select('*')->from('eg_productos')->get();
      
      if($query->num_rows() > 0){
          return $query->result_array();
      }
      
      return false;
      
    }
    
}


