<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		//Do your magic here
		$this->load->model('usuario_model');
		$this->load->library('session');


		// El valor 'id_usuario' deveria ser el mismo que  esta en el config_auditor.php  $config['sessions_id']        = 'id_usuario';
		$this->session->set_userdata("id_usuario", "115884");// Esta session lo creamos solo para ejemplo y segun la logica de desarrollo podrian tener en algun otro controlador el manejo de sessiones




	}

	public function index()
	{
		echo "string";
	}

	public function crearUsuario()
	{
		$this->load->model('usuario_model');

		$this->usuario_model->crearUsuario(['login'=>'root', 'password'=>'123456789']);
	}



}

/* End of file Usuario.php */
/* Location: ./application/controllers/Usuario.php */