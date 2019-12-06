<?php

class Membresiaapi_model extends CI_Model{

    public function __construct() {
        parent::__construct();
    }
        
    public function get($id = null) {
        
        if(!is_null($id)){
            $this->db->select('m.id, u.nombre, u.paterno, u.materno, u.username, m.saldo, m.puntos, m.horas_extra');
            $this->db->from('eg_membresia as m');
            $this->db->join('eg_users as u' , 'm.nu_user=u.id','left');
            $this->db->where('m.id', $id);
            $query = $this->db->get();
            
            if ($query->num_rows() === 1){
            return $query->result_array();
            
            }
            
            return false;
            
        }
      
      $query = $this->db->select('*')->from('eg_membresia')->get();
      
      if($query->num_rows() > 0){
          return $query->result_array();
      }
      
      return false;
      
    }
    
}
