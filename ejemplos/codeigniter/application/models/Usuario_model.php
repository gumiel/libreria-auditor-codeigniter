<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Usuario_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		//Do your magic here
		
	}

	public function listarUsuario(){
		
	}

	public function crearUsuario($usuario)
	{
		$this->load->library('Auditor');
		
		$this->db->insert('usuario', $usuario);
		
		/*Integrar con la libreria auditor*/
		if( $this->load->is_loaded('Auditor') ){		
			$this->auditor->generate(__CLASS__, __METHOD__);
		}
		
	}
	
}

/* End of file Usuario_model.php */
/* Location: ./application/models/Usuario_model.php */