<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH.'/libraries/REST_Controller.php';

class Productos extends REST_Controller {
    
    public function __construct(){
        parent:: __construct();
        $this->load->model('Productosapi_model');
    }
    
    public function index_get(){
        $productos = $this->Productosapi_model->get();
        
        if(!is_null($productos)){
            $this->response(array('response' => $productos), 200);
        } else {
            $this->response(array('error' => 'No hay productos'), 404);
        }
    }
    
    public function find_get($id){
        
        if(!$id){
           
            $this->response(null, 400);
            
        }
        
        $productos = $this->Productosapi_model->get($id);
        
        if(!is_null($productos)){
            $this->response(array('response' => $productos), 200);
        } else {
            $this->response(array('error' => 'No hay productos'), 404);
        }
    }
    
}

