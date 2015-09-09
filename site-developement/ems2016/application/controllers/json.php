<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Json extends MY_Controller
{

  	function __construct()
  	{
    		parent::__construct();
        $this->load->model('json_model');
  	}
  
  	public function index()
  	{      
        return false;	     
  	}
    
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
    
    public function getArticle($type, $id = NULL)
  	{
    
        $accessible = array("categories", "news", "events", "articles", "playgrounds", "clubs");
        if (in_array($type, $accessible)) {
            print_r(json_encode($this->json_model->getArticle($type, $id), JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES));
        } else {
            return false;
        }
        
  	}
    
    public function getVersions()
  	{      
        print_r(json_encode($this->json_model->getVersions(), JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES));
  	}
  
}                    