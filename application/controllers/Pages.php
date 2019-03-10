<?php
	/*
		This will be the default controller
	*/
	class Pages extends CI_Controller{
		public function view($page = 'welcome_message'){ //you can edit the parameter to change the home page
			if(! file_exists(APPPATH.'views/'.$page.'.php')){
				show_404();
			}

			$data['title'] = ucfirst($page);

			$this->load->view('templates/header_DCS_navbar_jumbotron',$data);
			$this->load->view($page,$data);
			$this->load->view('templates/footer',$data);
		}
	}
