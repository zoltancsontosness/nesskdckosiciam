<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Json extends MY_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model('json_model');
    $this->load->helper('url');
    header('Content-Type: text/html; charset=utf-8');
  }

  public function index()
  {      
    return;	     
  }

  /**
   * It returns complete lists of articles with basic data.
   * @param  string  $type       type of article
   * @param  integer $start_date timestamp of date starting point
   * @return boolean success of query.
   */
  public function getList($type, $start_date = NULL)
  {
    switch ($type) {
      case "news":
        $table = "news_list";
        $this->getResultsFromDate($table, $start_date);
        break;
      case "events":
        $table = "events_list";
        $this->getResultsFromDate($table, $start_date);
        break;
      case "articles":
        $table = "articles_list";
        $this->getResultsFromDate($table, $start_date);
        break;
      case "playgrounds":
        $table = "playgrounds_list";
        $this->getAllResults($table);
        break;
      case "clubs":
        $table = "clubs_list";
        $this->getAllResults($table);
        break;
      default:
        return false;
    }
    return true;
  }

  private function getAllResults($table)
  {
    print_r(json_encode($this->json_model->getList($table), JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES));
  }

  private function getResultsFromDate($table, $start_date)
  {
    $start_date = date('Y-m-d H:i:s', $start_date);
    print_r(json_encode($this->json_model->getListFromDate($table, $start_date), JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES));
  }

  /**
   * Writes complete data of all types of articles to output.
   * @param  string  $type type od article
   * @param  integer $id   article id     
   * @return boolean success of query
   */
  public function getArticle($type, $id = NULL)
  {
    $accessible = array("categories", "news", "events", "articles", "playgrounds", "clubs");
    if (in_array($type, $accessible)) {
      print_r(json_encode($this->json_model->getArticle($type, $id), JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES));
    } else {
      return false;
    }
    return true;
  }

  /**
   * It returns json string of data_versions table.
   */
  public function getVersions()
  {      
    print_r(json_encode($this->json_model->getVersions(), JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES));
  }

  /**
   * By calling this function with right parameters page will be redirected to picture user require.
   * @param integer $media_id identification numbur of picture user requires.
   * @param integer $size     [small/medium/large] size of result image thumbnail.  
   */
  public function getThumbnail($media_id, $size) {
    $data = $this->json_model->getMedia($media_id);
    if  (count($data) != 1) throw new Exception('Požadovaný obrázok sa nenašiel, prosím skontrolujte, či je identifikátor správny !');
    $data = $data[0];

    $abs_path = getcwd().'/'.$data['base_path'];

    $resolutions = array(
      'small' => ['640','480'],
      'medium' => ['1280','720'],
      'large' => ['1920','1080']
    );

    if (!array_key_exists($size,$resolutions)) throw new Exception('Nepodporovaná veľkosť obrázka. Prosím použite jednu z možností [small,medium,big].');

    $size = $resolutions[$size];

    $parts = explode('/', $data['base_path']);
    unset($parts[0]);
    $dreamed_thumbs_path = $abs_path.'.thumbs/';
    $dreamed_thumbs_path .= implode('/', $parts);
    $dreamed_thumbs_path .= implode('x',$size);

    if(!file_exists($dreamed_thumbs_path)) {
      mkdir($dreamed_thumbs_path,0777,true);
    }

    $this->load->library('image_lib'); 

    $config = array (
      'image_library' => 'gd2',
      'source_image' => $abs_path.$data['file_name'],
      'new_image' => $dreamed_thumbs_path,
      'create_thumb' => TRUE,
      'maintain_ratio' => TRUE,
      'width' => $size[0],
      'height' => $size[1],
      'thumb_marker' => '',
    );

    $result=($dreamed_thumbs_path.'/'.$data['file_name']);

    $this->image_lib->initialize( $config );
    $this->image_lib->resize(); 
    $this->image_lib->clear(); 

    header('Content-type: image/jpeg');
    readfile($result);
    exit;
  }

  // Events for calendar
  public function getEvents($year, $month) {
    $events = $this->json_model->getEvents($year, $month);
    $final_array = array();
    
    foreach ($events as $value) {
      $date_value = substr($value["date"], 0, 10);
      $final_array[$date_value]["date"] = $date_value;
      if (array_key_exists('body', $final_array[$date_value])) {
        $final_array[$date_value]["body"] .= '<a href="' . base_url() . 'podujatia/' . $value["url"] . '" class="' . $value["active"] . '-event-link">' . $value["title"] . '</a><br />';
      } else {
        $final_array[$date_value]["body"] = '<a href="' . base_url() . 'podujatia/' . $value["url"] . '" class="' . $value["active"] . '-event-link">' . $value["title"] . '</a><br />';
      }
    }
     
    print_r(json_encode($final_array, JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES));
  }
}