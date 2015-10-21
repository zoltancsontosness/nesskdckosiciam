<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Helper_Service extends MY_Controller
{ 
  function __construct()
  {
    parent::__construct();
  }

  public function refreshCaptcha() {
    include($_SERVER['DOCUMENT_ROOT']."/themes/ems2016/libraries/Tagmanager/captcha/simple-php-captcha.php");
    $_SESSION['captcha'] = simple_php_captcha();

    print_r(json_encode($_SESSION['captcha']));
  }
}