<?php

require_once APPPATH . '/libraries/REST_Controller.php';
//require_once APPPATH . '/libraries/jwt/JWT.php';
use \Firebase\JWT\JWT;

class Token extends REST_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('Loginapi_model');
    }
    public function login_post() {
        //header("Access-Control-Allow-Origin: *");
        //header('Access-Control-Allow-Methods: POST');
	//header('Access-Control-Allow-Headers: Content-Type');
        //header("Access-Control-Allow-Origin: *");
        //$_POST = json_decode($this->security->xss_clean(file_get_contents("php://input")),true);
        
        $username = $this->post('username');
        $password = $this->post('password');
        
        $invalidLogin = array ('invalid' => $username,
                               'status' => false);
        
        if(!$username || !$password) $this->response($username, REST_Controller::HTTP_NOT_FOUND);
        
        $id = $this->Loginapi_model->login($username,$password);
        $nu_rol = $this->Loginapi_model->rol($id);
        
        if($id) {
            
            $token['id'] = $id;
            $token['username'] = $username;
            $date = new DateTime();
            $token['iat'] = $date->getTimestamp();
            $output['id_token'] = JWT::encode($token, "my Secret key!");
            
            $valid = array ('id' => $id,
                            'username' => $username,
                            'rol' => $nu_rol,
                            'token' => JWT::encode($token, "my Secret key!"));
            
            $this->set_response($valid, REST_Controller::HTTP_OK);
        }
        else {
            $this->set_response($invalidLogin, REST_Controller::HTTP_NOT_FOUND);
        }
    }
}