<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auditor
{
	protected $ci;

	public function __construct()
	{
        $this->ci =& get_instance();
		$this->ci->config->load('config_auditor');
	}

	public function generateAutomatically()
	{
		$id         = $this->ci->config->item('sessions_id');		
		$session_id = ( $this->ci->session->has_userdata($id) )? $this->ci->session->userdata($id): 0;
		$query      = $this->ci->db->last_query();
		
		$this->ci->db->insert('auditor_query', [ 
												'class_controller'  =>$this->ci->router->fetch_class(), 
												'method_controller' =>$this->ci->router->fetch_method(),
												'class_model'       =>__CLASS__,
												'method_model'      =>__METHOD__,
												'query'             =>$query,
												'execution_date'    =>date('Y-m-d H:i:s'),
												'user'				=>$session_id
												]
		);
	}

	public function generate($class = '', $method = '')
	{
		$id         = $this->ci->config->item('sessions_id');		
		$session_id = ( $this->ci->session->has_userdata($id) )? $this->ci->session->userdata($id): 0;
		$query      = $this->ci->db->last_query();
		$correctIp  = $this->ci->input->ip_address(); 
		
		$this->ci->db->insert('auditor_query', [ 
												'class_controller'  =>$this->ci->router->fetch_class(), 
												'method_controller' =>$this->ci->router->fetch_method(),
												'class_model'       => $class,
												'method_model'      => $method,
												'query'             =>$query,
												'execution_date'    =>date('Y-m-d H:i:s'),
												'user'				=>$session_id,
												'ip'				=>$correctIp
											]
		);
	}

}

/* End of file Auditor.php */
/* Location: ./application/libraries/Auditor.php */
