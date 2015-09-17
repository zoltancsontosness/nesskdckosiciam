<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Ionize Json Model
 */
class Json_model extends Base_model
{

  /**
   * It returns select query result for lists.
   * @param  string $table table name
   * @return array  query result array. 
   */
  function getList($table)
  {
    $query = $this->db->query("SELECT * FROM $table");
    return $query->result_array();                                                         
  }

  /**
   * Same as getList but using where clause.
   * @param  string  $table      table name
   * @param  integer $start_date timestamp of date starting point
   * @return array   query result array.
   */
  function getListFromDate($table, $start_date)
  {
    $query = $this->db->query("SELECT * FROM $table WHERE date >= '$start_date'");
    return $query->result_array();                                                         
  }

  /**
   * It returns complete data of table.
   * @param  string  $table table name
   * @param  integer $id    article id
   * @return array   query result array.
   */
  function getArticle($table, $id)
  {
    $where = "";
    if ($id) { $where = "WHERE id = '$id'"; }
    $query = $this->db->query("SELECT * FROM $table $where");
    return $query->result_array();
  }

  /**
   * Return data of data_versions table.
   * @return array query result array.  
   */
  function getVersions()
  {
    $query = $this->db->query("SELECT * FROM versions");
    return $query->result_array();
  }

  /**
   * It returns required media. 
   * @param  integer $media_id
   * @return array   query result with filename and base_url of picture.
   */
  function getMedia($media_id) {
    $query = $this->db->query('SELECT `file_name`, `base_path` FROM `media` WHERE `id_media` ='. $media_id);
    return $query->result_array();  
  }
  
  // IN PROGRES
  function getEvents($year, $month)
  {
    $query = $this->db->query("SELECT `title`, `active`, `date` FROM `events_list`");
    return $query->result_array();
  }
}