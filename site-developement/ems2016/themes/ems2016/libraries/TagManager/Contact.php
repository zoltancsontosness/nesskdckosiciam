<?php
class TagManager_Contact extends TagManager
{
  protected static $processed = FALSE;

  public static $tag_definitions = array
    (
  );

  public static function process_data(FTL_Binding $tag)
  {
    $form_name = self::$ci->input->post('form');

    

    if (TagManager_Form::validate($form_name))
    {
      $posted = self::$ci->input->post();


      //google recaptcha 
      $recaptcha = $posted['g-recaptcha-response'];
      $secret = "6Le-dAsTAAAAAHbYBE8apocAqYXHV5iNhZPx4gMT";
      $verify_link = "https://www.google.com/recaptcha/api/siteverify";
      $ip = $_SERVER['REMOTE_ADDR'];
      $url = $verify_link."?secret=".$secret."&response=".$recaptcha."&remoteip=".$ip;
      $response = json_decode(file_get_contents($url), true);

      if($response['success']){
        $message = TagManager_Form::get_form_message('success');
        TagManager_Form::set_additional_success($form_name, $message);

        $redirect = TagManager_Form::get_form_redirect();
        if ($redirect !== FALSE) redirect($redirect);    
      }
    }
  }
}