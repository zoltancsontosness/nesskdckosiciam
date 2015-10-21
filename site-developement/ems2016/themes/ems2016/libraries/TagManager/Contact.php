<?php
class TagManager_Contact extends TagManager
{
  protected static $processed = FALSE;

  public static $tag_definitions = array
    (
  );

  public static function process_data(FTL_Binding $tag)
  {
    self::$ci->session->unset_userdata('captcha_error');
    $form_name = self::$ci->input->post('form');

    

    if (TagManager_Form::validate($form_name))
    {
      $posted = self::$ci->input->post();


      //google recaptcha 
      // $recaptcha = $posted['g-recaptcha-response'];
      // $secret = "6Le-dAsTAAAAAHbYBE8apocAqYXHV5iNhZPx4gMT";
      // $verify_link = "https://www.google.com/recaptcha/api/siteverify";
      // $ip = $_SERVER['REMOTE_ADDR'];
      // $url = $verify_link."?secret=".$secret."&response=".$recaptcha."&remoteip=".$ip;
      // $response = json_decode(file_get_contents($url), true);

      if($_SESSION['captcha']['code'] === $posted['captcha']){
        $message = TagManager_Form::get_form_message('success');
        TagManager_Form::set_additional_success($form_name, $message);

        // Send the posted data to the Email library and send the Email
        // as defined in /themes/your_theme/config/forms.php
        TagManager_Email::send_form_emails($tag, $form_name, $posted);

        $redirect = TagManager_Form::get_form_redirect();
        if ($redirect !== FALSE) redirect($redirect);    
      } else{
        $message = TagManager_Form::get_form_message('captcha_error');
        TagManager_Form::set_additional_error($form_name, $message);  
        //self::$ci->form_validation->set_message('required', $message); 
        self::$ci->session->set_userdata('captcha_error', "Captcha bola vyplnená zle!");  
      }
    }
  }
}