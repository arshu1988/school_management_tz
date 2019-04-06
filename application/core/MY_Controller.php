<?php  ?><?php

class Admin_Controller extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();
		
		$this->load->library('auth');
		$this->auth->is_logged_in(uri_string());
		  // $this->schoolSetting=$this->setting_model->getCurrentSessiondata();
		//load the base language file
		
		

	}
}