<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
 
$route['default_controller'] = "recaptcha";
$route[''] = 'recaptcha/index';
// $route['(.*)'] = "recaptcha/index/$1";
// To be able to add customs controllers
// 1. Comment the previous line : $route['(.*)'] = "recaptcha/index/$1";
// 2. Uncomment these lines
$route['404_override'] = 'recaptcha';
$route['(.*)'] = "/$1";