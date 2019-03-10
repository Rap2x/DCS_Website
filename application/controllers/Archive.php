<?php
	class Archive extends CI_Controller{
		public function view($page = 'archive'){
			if(! file_exists(APPPATH.'views/sp-archive/'.$page.'.php')){
				show_404();
			}
			$data['title'] = ucfirst($page);
	        $this->load->model('sp_model'); // this load the main_model.php
	       	if(!empty($form_data['search'] = $this->input->get('q'))){
	       		$form_data['type1'] = $this->input->get('type1');
	       		$form_data['type2'] = $this->input->get('type2');
	       		$form_data['type3'] = $this->input->get('type3');
	       		$form_data['type4'] = $this->input->get('type4');
	       		$data['fetch_data'] = $this->sp_model->search_database_archive($form_data);
	       	}else if(!empty($form_data['type1'] = $this->input->get('type1')) || !empty($form_data['type2'] = $this->input->get('type2'))|| !empty($form_data['type3'] = $this->input->get('type3')) || !empty($form_data['type4'] = $this->input->get('type4'))){

	       		$form_data['type1'] = $this->input->get('type1');
	       		$form_data['type2'] = $this->input->get('type2');
	       		$form_data['type3'] = $this->input->get('type3');
	       		$form_data['type4'] = $this->input->get('type4');

	       		$data['fetch_data'] = $this->sp_model->sort_database_archive($form_data);

	       	}else{

	       		$data['fetch_data'] = $this->sp_model->fetch_database_archive();
	       	}
			$this->load->view('templates/header_DCS_navbar_jumbotron',$data);
			$this->load->view('sp-archive/'.$page,$data);
			$this->load->view('templates/footer',$data);
		}

		public function view_upload_form($page = 'upload_sp_form'){
			if(! file_exists(APPPATH.'views/sp-archive/'.$page.'.php')){
				show_404();
			}

			$this->load->model('sp_model');
			$data['fetch_account'] = $this->sp_model->fetch_account();

			$this->load->view('templates/header_DCS_navbar_jumbotron');
			$this->load->view('sp-archive/'.$page, $data);
			$this->load->view('templates/footer');
		}

		public function manage_archive($page = 'manage_archive'){
			if(! file_exists(APPPATH.'views/sp-archive/'.$page.'.php')){
				show_404();
			}

			$this->load->model('sp_model');

			if(!empty($form_data['search'] = $this->input->get('q'))){
				$form_data['type1'] = $this->input->get('type1');
	       		$form_data['type2'] = $this->input->get('type2');
	       		$form_data['type3'] = $this->input->get('type3');
	       		$form_data['type4'] = $this->input->get('type4');
	       		$data['fetch_data'] = $this->sp_model->search_database_archive($form_data);
	       	}else if(!empty($form_data['type1'] = $this->input->get('type1')) || !empty($form_data['type2'] = $this->input->get('type2'))|| !empty($form_data['type3'] = $this->input->get('type3')) || !empty($form_data['type4'] = $this->input->get('type4'))){

	       		$form_data['type1'] = $this->input->get('type1');
	       		$form_data['type2'] = $this->input->get('type2');
	       		$form_data['type3'] = $this->input->get('type3');
	       		$form_data['type4'] = $this->input->get('type4');

	       		$data['fetch_data'] = $this->sp_model->sort_database_archive($form_data);

	       	}else{
	       		$data['fetch_data'] = $this->sp_model->fetch_database_archive();
	       	}
			$this->load->view('templates/header_DCS_navbar_jumbotron',$data);
			$this->load->view('sp-archive/'.$page,$data);
			$this->load->view('templates/footer',$data);

		}

	public function update_sp($sp_id = ''){
			$this->load->model('sp_model');
			$data['fetch_account'] = $this->sp_model->fetch_account();
			$data['curr_data'] = $this->sp_model->fetch_sp_info($sp_id);
			$data['sp_tags'] = $this->sp_model->fetch_sp_tags($sp_id);
			$this->load->view('templates/header_DCS_navbar_jumbotron');
			$this->load->view('sp-archive/edit_sp_form', $data);
			$this->load->view('templates/footer');

	}

	public function do_edit(){
			$this->load->model('Sp_model');

			$info['title'] = $this->input->post('title');
			$info['rationale'] = $this->input->post('rationale');
			$info['propa'] = $this->input->post('proponent_a');
			$info['propb'] = $this->input->post('proponent_b');
			$info['propc'] = $this->input->post('proponent_c');
			$info['adviser'] = $this->input->post('adviser');
			$info['type'] = $this->input->post('optradio');
			$info['sp_id'] = $this->input->post('sp_id');

			$tags = explode(",", $this->input->post('hidden-tags'));
			$this->Sp_model->delete_tag($info['sp_id']);
			$this->Sp_model->insert_sp_tags($info['sp_id'], $tags);
			$this->Sp_model->update_sp_info($info);
			
			$data['message'] = "The SP has been edited.";
			redirect("/archive/manage_archive", $data);
	}

	public function do_upload()
        {
                $this->load->model('Sp_model');
                $config['upload_path']          = 'sp_archive/';
                $config['allowed_types']        = 'pdf';
                $config['max_size']             = 0;
                $config['file_name']            = $this->random_filename();
                while ($this->Sp_model->filename_exist($config['file_name'])) {
                        // check if the generated random_filename is unique in the database
                        $config['file_name']    =  $this->random_filename();
                }
                $file_info['file_name'] = $config['file_name'];
                $file_info['title'] = $this->input->post('title');
                $file_info['propa'] = $this->input->post('proponent_a');
                $file_info['propb'] = $this->input->post('proponent_b');
                $file_info['propc'] = $this->input->post('proponent_c');
                $file_info['adviser'] = $this->input->post('adviser');
                $file_info['rationale'] = $this->input->post('rationale');
                //$file_info['date'] = date("yyy-mm-dd",strtotime($this->input->post('date')));
                $file_info['type'] = $this->input->post('optradio');
                $tags = explode(",", $this->input->post('hidden-tags'));

                
                $this->load->library('upload', $config);

                if ( !$this->upload->do_upload('userfile'))
                {
                        $error = array('error' => $this->upload->display_errors());
                        $this->load->view('templates/header_DCS_navbar_jumbotron');
                        $this->load->view('sp-archive/upload_failed', $error);
                        $this->load->view('templates/footer');
                }
                else
                {
                        $this->Sp_model->upload_file($file_info,$tags);
                        redirect("/archive/manage_archive");
                }
        }

        public function random_filename(){
                $char = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz01234567";
                $filename = "";
                $random_filename_length = 10;
                $max = strlen($char) -1;

                for($i =0; $i < $random_filename_length; $i++){
                        $filename .= $char[mt_rand(0, $max)];
                }
                return $filename;
        }

        public function delete_sp($sp_id, $filename){
        	$this->load->model('Sp_model');
        	$this->Sp_model->delete_sp($sp_id, $filename);

        	redirect("/archive/manage_archive");
        }

		
	}
?>