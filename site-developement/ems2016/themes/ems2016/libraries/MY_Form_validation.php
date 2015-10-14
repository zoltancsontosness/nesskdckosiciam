<?php 


class MY_Form_validation extends CI_Form_validation {

  public function __construct($config = array()) {
    parent::__construct($config);
  }
    
  public function _some_callback(array $array) {
    return FALSE;
  }
}