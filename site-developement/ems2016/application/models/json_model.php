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

  /*
  $media_id - id of required media.
  Returns path to picture.
  */
  function getMedia($media_id) {
    $query = $this->db->query('SELECT `file_name`, `base_path` FROM `media` WHERE `id_media` ='. $media_id);
    
    return $query->result_array();
  }
}