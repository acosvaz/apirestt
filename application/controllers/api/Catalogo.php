<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once APPPATH.'/libraries/REST_Controller.php';

class Catalogo extends REST_Controller {
    
    public function __construct(){
        parent:: __construct();
        $this->load->model('Catalogoapi_model');
    }
    
    public function index_get(){
        $catalogo = $this->Catalogoapi_model->get();
        
        if(!is_null($catalogo)){
            $this->response($catalogo, 200);
        } else {
            $this->response(array('error' => 'No hay promociones disponibles'), 404);
        }
    }
    
    public function find_get($id,$nu){
        
        if(!$id){
            $this->response(null, 400);
        }
        
        $catalogo = $this->Catalogoapi_model->get($id,$nu);
        
        if(!is_null($catalogo)){
            $this->response($catalogo, 200);
        } else {
            $this->response(array('error' => 'Catalogo no disponible'), 404);
        }
    }
    
   public function pregunta_get($id){
        $data = $this->db->get_where("preguntas", array('id'=>$id))->result();
        $this->response($data, REST_Controller::HTTP_OK);
    }
    
   public function respuestas_get($id){
        $data = $this->db->get_where("respuestas", array('nu_pregunta'=>$id))->result();
        $this->response($data, REST_Controller::HTTP_OK);
    }
    
      public function resultado_post($id){
        header("Access-Control-Allow-Origin: *");
        $_POST = json_decode($this->security->xss_clean(file_get_contents("php://input")),true);

                    $nu_respuesta = $this->input->post('id');
                    $nu_preguntaid = $this->input->post('nu_pregunta');
               
                    $data = array (
                        'nu_user'=>$id,
                        'nu_respuesta'=>$nu_respuesta
                    );
                    
         $result=$this->Catalogoapi_model->resultado($data);
         if($result){
        $data = array ( 'status'=>'1');
        $this->db->set('status', '1', FALSE);
        $this->db->update('status', $data, array('id'=>$nu_preguntaid));
            $this->response($result, 200); 
        } 
        else{
             $this->response("Invalid ISBN", 404);
        }
    
    }

   public function alumnos_get(){
        $data = $this->db->get_where("users", ['nu_rol' => '2'])->result();
        $this->response($data, REST_Controller::HTTP_OK);
    }
    
     public function count_get($id){
        $catalogo = $this->Catalogoapi_model->count($id);
        
        if(!is_null($catalogo)){
            $this->response($catalogo, 200);
        } else {
            $this->response(array('error' => 'No hay promociones disponibles'), 404);
        }
    }
    
}

