<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if( ! function_exists('process'))
{
	function process($var, $replacement = "") {
		var_dump($var);
		echo $replacement;
		return "Test<br />" . $var;
	}
}
