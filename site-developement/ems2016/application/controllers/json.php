<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Json extends MY_Controller {


	/**
	 * Constructor
	 *
	 */
	function __construct()
	{
		parent::__construct();
    $this->load->model('json_model');
	}

	public function index($type, $id = NULL)
	{      
    print_r(json_encode($this->json_model->getQuery($type, $id), JSON_UNESCAPED_UNICODE | JSON_UNESCAPED_SLASHES));
	}
}                    