<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH.'/libraries/REST_Controller.php';

class Membresia extends REST_Controller {
    
    public function __construct(){
        parent:: __construct();
        $this->load->model('Membresiaapi_model');
    }
    
    public function index_get(){
        $membresia = $this->Membresiaapi_model->get();
        
        if(!is_null($membresia)){
            $this->response(array('response' => $membresia), 200);
        } else {
            $this->response(array('error' => 'No hay promociones'), 404);
        }
    }
    
    public function find_get($id){
        
        if(!$id){
           
            $this->response(null, 400);
            
        }
        
        $membresia = $this->Membresiaapi_model->get($id);
        
        if(!is_null($membresia)){
            $this->response(array('response' => $membresia), 200);
        } else {
            $this->response(array('error' => 'No hay promociones'), 404);
        }
    }
    
}