<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

echo "test";

if( ! function_exists('process'))
{
	function process($var) {
		echo "Test<br />";
		print_r($var);
	}
}
