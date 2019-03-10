<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	private function render_view($view, $data = array())
	{
		// Load the model
		$this->load->model("users_model");
		$data["users"]=$this->users_model->get_users(); 
		
		$this->load->view('templates/header_DCS_navbar_jumbotron', $data);
		$this->load->view($view, $data);
		$this->load->view('templates/footer', $data);
	}

	private function render_view_with_announcements($view, $data = array())
	{
		// Load the model
		$this->load->model("users_model");
		$data["users"]=$this->users_model->get_users(); 
		
		$this->load->view('templates/header_DCS_navbar_jumbotron', $data);
		$this->load->view($view, $data);
		$this->load->view('templates/announcement_footer', $data);
	}

	public function account_settings()
	{
		$this->render_view('admin-module/account-settings');
	}

	public function accounts_admin()
	{
		$this->render_view('admin-module/accounts-admin');
	}

	public function control_panel()
	{
		$this->render_view('admin-module/controlpanel');
	}

	public function login_page()
	{
		$this->render_view_with_announcements('admin-module/login-page');
	}

	public function mailbox()
	{
		$this->render_view('admin-module/mailbox');
	}
}
