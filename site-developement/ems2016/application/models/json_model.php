<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Ionize Json Model
 */

class Json_model extends Base_model
{

    function getQuery($value, $id)
    {
    
        $where = "";
        if ($id) {
        	$where = "WHERE id = '$id'";
        }
    
        $query = $this->db->query("SELECT * FROM $value $where");
        return $query->result();                                                         
    }
   

}
