<?php
class sp_model extends CI_Model
{
	function fetch_database_archive(){
		
		$this->db->select("sp_archive.SP_ID, SP_TITLE, SP_RATIONALE, SP_File, GROUP_CONCAT(Tag.Tag_Name) As Tag");
		
		$this->db->select("ad.Account_LastName AS ADLastName");
		$this->db->select("ad.Account_FirstName AS ADFirstName");
		$this->db->select("ad.Account_MiddleInitial AS ADMiddleInitial");

		$this->db->select("a.Account_FirstName AS AFirstName");
		$this->db->select("a.Account_MiddleInitial AS AMiddleInitial");
		$this->db->select("a.Account_LastName AS ALastName");

		$this->db->select("b.Account_FirstName AS BFirstName");
		$this->db->select("b.Account_MiddleInitial AS BMiddleInitial");
		$this->db->select("b.Account_LastName AS BLastName");

		$this->db->select("c.Account_FirstName AS CFirstName");
		$this->db->select("c.Account_MiddleInitial AS CMiddleInitial");
		$this->db->select("c.Account_LastName AS CLastName");

		$this->db->from("sp_archive");

		$this->db->join('account ad', 'sp_archive.Adviser = ad.Account_ID','left');
		$this->db->join('account a', 'sp_archive.Proponent_A = a.Account_ID','left');
		$this->db->join('account b', 'sp_archive.Proponent_B = b.Account_ID','left');
		$this->db->join('account c', 'sp_archive.Proponent_C = c.Account_ID','left');
		$this->db->join('tag', 'sp_archive.SP_ID = tag.SP_ID', 'inner');
		$this->db->group_by("sp_archive.SP_ID");
		
		$query = $this->db->get();
		return $query;
	}

	function search_database_archive($search_param){
		if(empty($search_param)){
			return array();
		}else{
			$this->db->group_start();
		$this->db->select("sp_archive.SP_ID, SP_TITLE, SP_RATIONALE, SP_File, GROUP_CONCAT(Tag.Tag_Name) As Tag");
		$this->db->select("ad.Account_LastName AS ADLastName");
		$this->db->select("ad.Account_FirstName AS ADFirstName");
		$this->db->select("ad.Account_MiddleInitial AS ADMiddleInitial");

		$this->db->select("a.Account_FirstName AS AFirstName");
		$this->db->select("a.Account_MiddleInitial AS AMiddleInitial");
		$this->db->select("a.Account_LastName AS ALastName");

		$this->db->select("b.Account_FirstName AS BFirstName");
		$this->db->select("b.Account_MiddleInitial AS BMiddleInitial");
		$this->db->select("b.Account_LastName AS BLastName");

		$this->db->select("c.Account_FirstName AS CFirstName");
		$this->db->select("c.Account_MiddleInitial AS CMiddleInitial");
		$this->db->select("c.Account_LastName AS CLastName");
		$this->db->where_in('sp_archive.SP_Type', array($search_param['type1'], $search_param['type2'],$search_param['type3'],$search_param['type4']));
		$this->db->from("sp_archive");
		
		$this->db->join('account ad', 'sp_archive.Adviser = ad.Account_ID','left');
		$this->db->join('account a', 'sp_archive.Proponent_A = a.Account_ID','left');
		$this->db->join('account b', 'sp_archive.Proponent_B = b.Account_ID','left');
		$this->db->join('account c', 'sp_archive.Proponent_C = c.Account_ID','left');
		$this->db->join('tag', 'sp_archive.SP_ID = tag.SP_ID', 'inner');
				
		$this->db->like("SP_TITLE", $search_param['search']);	

		$this->db->or_like("ad.Account_LastName", $search_param['search']);
		$this->db->or_like("ad.Account_FirstName", $search_param['search']);
		$this->db->or_like("a.Account_LastName", $search_param['search']);
		$this->db->or_like("a.Account_FirstName", $search_param['search']);
		$this->db->or_like("c.Account_LastName", $search_param['search']);
		$this->db->or_like("c.Account_FirstName", $search_param['search']);
		$this->db->or_like("c.Account_LastName", $search_param['search']);
		$this->db->or_like("c.Account_FirstName", $search_param['search']);

		$this->db->group_by("sp_archive.SP_ID");
		$this->db->group_end();
		$query = $this->db->get();
		return $query;
		}
	}

	function sort_database_archive($search_param){
		$this->db->group_start();
		$this->db->select("sp_archive.SP_ID, SP_TITLE, SP_RATIONALE, SP_File, GROUP_CONCAT(Tag.Tag_Name) As Tag");
		$this->db->select("ad.Account_LastName AS ADLastName");
		$this->db->select("ad.Account_FirstName AS ADFirstName");
		$this->db->select("ad.Account_MiddleInitial AS ADMiddleInitial");

		$this->db->select("a.Account_FirstName AS AFirstName");
		$this->db->select("a.Account_MiddleInitial AS AMiddleInitial");
		$this->db->select("a.Account_LastName AS ALastName");

		$this->db->select("b.Account_FirstName AS BFirstName");
		$this->db->select("b.Account_MiddleInitial AS BMiddleInitial");
		$this->db->select("b.Account_LastName AS BLastName");

		$this->db->select("c.Account_FirstName AS CFirstName");
		$this->db->select("c.Account_MiddleInitial AS CMiddleInitial");
		$this->db->select("c.Account_LastName AS CLastName");
		$this->db->where_in('sp_archive.SP_Type', array($search_param['type1'], $search_param['type2'],$search_param['type3'],$search_param['type4']));
		$this->db->from("sp_archive");
		
		$this->db->join('account ad', 'sp_archive.Adviser = ad.Account_ID','left');
		$this->db->join('account a', 'sp_archive.Proponent_A = a.Account_ID','left');
		$this->db->join('account b', 'sp_archive.Proponent_B = b.Account_ID','left');
		$this->db->join('account c', 'sp_archive.Proponent_C = c.Account_ID','left');
		$this->db->join('tag', 'sp_archive.SP_ID = tag.SP_ID', 'inner');

		$this->db->group_by("sp_archive.SP_ID");
		$this->db->group_end();
		$query = $this->db->get();
		return $query;		
	}
	function filename_exist($filename){
		$this->db->select('SP_File');
		$this->db->from('sp_archive');
		$this->db->where('SP_File', $filename);
		$query = $this->db->get();

		if($query->num_rows > 0){
			return true;
		}else{
			return false;
		}
	}

	function delete_sp($sp_id , $filename){
		$this->db->delete('tag', array('SP_ID' => $sp_id));
		
		$this->db->delete('sp_archive', array('SP_ID' => $sp_id));

		unlink("./sp_archive/".$filename.".pdf");
	}

	function fetch_account(){
		$this->db->select('Account_ID, Account_FirstName, Account_MiddleInitial, Account_LastName');
		$this->db->from('account');
		$query = $this->db->get();
		return $query;
	}

	function upload_file($file_info, $tags){
		$data = array(
			'SP_Title' => $file_info['title'],
			'SP_Rationale' => $file_info['rationale'],
			'SP_File' => $file_info['file_name'],
			'Adviser' => $file_info['adviser'],
			'Proponent_A' => $file_info['propa'],
			'Proponent_B' => $file_info['propb'],
			'Proponent_C' => $file_info['propc'],
			'SP_Type' => $file_info['type']
		);

		$this->db->insert('sp_archive', $data);

		$id = $this->db->insert_id();
		for($i = 0; $i < count($tags); $i++){
			$data = array(
				'Tag_Name' => $tags[$i],
				'SP_ID' => $id
			);
			$this->db->insert('tag', $data);
		}
	}

	function fetch_sp_info($Sp_id){
		$this->db->select('SP_ID, SP_Title, SP_Rationale, SP_Type, Adviser, Proponent_A, Proponent_B, Proponent_C');
		$this->db->from('sp_archive');
		$this->db->where('SP_ID', $Sp_id);
		$query = $this->db->get();

		return $query->row();
	}

	function fetch_sp_tags($Sp_id){
		$this->db->select('Tag_ID, Tag_Name');
		$this->db->from('tag');
		$this->db->where('SP_ID', $Sp_id);
		$query = $this->db->get();
		
		return $query;

	}

	function update_sp_info($info){

		$data = array(
			'SP_Title' => $info['title'],
			'SP_Rationale' => $info['rationale'],
			'SP_Type' => $info['type'],
			'Adviser' => $info['adviser'],
			'Proponent_A' => $info['propa'],
			'Proponent_B' => $info['propb'],
			'Proponent_C' => $info['propc']
		);

		$this->db->where('SP_ID',$info['sp_id']);
		$this->db->update('sp_archive', $data);
	}

	function delete_tag($sp_id){
		$this->db->delete('tag', array('SP_ID' => $sp_id));
	}

	/*
		Function: insert_sp_tags
		This can only be used when editing sp info

	*/
	function insert_sp_tags($sp_id, $tags){
		for($i = 0; $i < count($tags); $i++){
			$data = array(
				'Tag_Name' => $tags[$i],
				'SP_ID' => $sp_id
			);
			$this->db->insert('tag', $data);
		}
	}
}