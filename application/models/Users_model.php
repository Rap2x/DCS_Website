<?php
class Users_model extends CI_Model
 
{
/* we will use the function getUsers */
  function get_users()
  {
    // Select all students
    $sql = "SELECT * 
            FROM ACCOUNT a, ACCOUNT_SECURITY acs, STUDENT s, COURSE c
            WHERE
              a.Account_ID = acs.Account_ID AND a.Account_ID = s.Account_ID 
              AND c.Course_ID = s.Course_ID
            ORDER BY
              a.Account_ID;";
              
    // $q = $this->db->query($sql, array("STUDENT",true));
    $q = $this->db->query($sql);    
 
    /* after we've made the queries from the database, we will store them inside a variable called $data, and return the variable to the controller */
    if($q->num_rows() > 0)
    {
      foreach ($q->result() as $row)
      {
        $data[] = $row;
      }
      return $data;
    }
  }
}