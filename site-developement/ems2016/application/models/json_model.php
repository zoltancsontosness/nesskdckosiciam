<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Ionize Json Model
 */

class Json_model extends Base_model
{

    function getList($table)
    {
        $query = $this->db->query("SELECT * FROM $table");
        return $query->result_array();                                                         
    }
    
    function getListFromDate($table, $start_date)
    {
        $query = $this->db->query("SELECT * FROM $table WHERE date >= '$start_date'");
        return $query->result_array();                                                         
    }

    function getArticle($table, $id)
    {
        $where = "";
        if ($id) { $where = "WHERE id = '$id'"; }
        $query = $this->db->query("SELECT * FROM $table $where");
        return $query->result_array();
    }
    
    function getVersions()
    {
        $query = $this->db->query("SELECT * FROM versions");
        return $query->result_array();
    }

}