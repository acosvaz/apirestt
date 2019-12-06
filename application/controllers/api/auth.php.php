<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth extends CI_Controller {
    
	public function login()
	{
		if($this->input->is_ajax_request())
		{
			if(!$this->input->post("username") || !$this->input->post("password"))
			{
				echo json_encode(array("code" => 2, "response" => "Datos insuficientes"));
			}
			$username = $this->input->post("username");
			$password = sha1($this->input->post("password"));
			$this->load->model("auth_model");
			$user = $this->auth_model->login($username, $password);
			if($user !== false)
			{
				//ha hecho login
				$user->iat = time();
				$user->exp = time() + 20;
				$jwt = JWT::encode($user, '');
				echo json_encode(
					array(
						"code" => 0, 
						"response" => array(
							"token" => $jwt
						)
					)
				);
			}
		}
                
		else
		{
			show_404();
		}	
	}
}