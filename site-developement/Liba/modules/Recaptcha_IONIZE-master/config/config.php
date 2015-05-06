<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
$config['module']['recaptcha'] = array
(
    'module'            => "RECaptcha",
    'name'              => "RECaptcha",
    'description'       => "RECaptcha Module help you to make your forms much secure.<br/><b>Author : </b>İskender TOTOĞLU<br/><b>Company : </b>ALTI VE BIR IT.<br/><b>Website : </b>http://www.altivebir.com.tr",
    'author'            => "İskender TOTOĞLU | ALTI VE BIR IT.",
    'version'           => "0.9",
    'uri'               => 'recaptcha',
    'has_admin'         => TRUE,
    'has_frontend'      => TRUE,
    'public_key'        => '6Lf6UugSAAAAAFn7aC87P3fgLv4xevF1HYK6aJ-I',
    'private_key'       => '6Lf6UugSAAAAAKOYHupG8qckybxirES0Ro7nLqom',
    'recaptcha_theme'   => 'red' // Set Recaptcha theme, default red (red/white/blackglass/clean)
    // Default action access is enought...
);

return $config['module']['recaptcha'];