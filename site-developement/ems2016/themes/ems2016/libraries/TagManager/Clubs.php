<?php
class TagManager_Clubs extends TagManager
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
        $title = $posted['club_name'];

        $data = array (
          'id_article' => '',
          'author' => $posted['organizer'],
          'name' => self::clean($title),
          'has_url' => 1,
          'priority' => 5,
          'flag' => 0,
          'indexed' => 1
        );

        $lang_data = array (
          'sk' => array(
            'lang' => 'sk',
            'url' => self::clean($title),
            'title' => $title,
            'subtitle' => '',
            'content' => $posted['desc'],
            'online' => 0,
            'meta_title' => '',
          ),
        );

        $extend_data = array(
          'organizer' => $posted['organizer'],
          'ico' => $posted['ico'],
          'webpage' => $posted['webpage'],
        );

        $element = array('ordering' => 0);

        //LOADING MODEL
        self::load_model('article_model');
        self::load_model('extend_field_model');
        self::load_model('element_model');
        self::$ci->load->helper('url');


        //SAVING TO DB
        $article_id = self::$ci->article_model->save($data,$lang_data);
        $element_id = self::$ci->element_model->save('article', $article_id, FALSE, 3, $element);
        self::$ci->extend_field_model->save_data('element', $element_id, $extend_data,false);
        //LINKING ARTICLE TO PAGE
        $data['online'] = 0;
        $data['main_parent'] = 11;
        self::$ci->article_model->link_to_page($data['main_parent'],$article_id,$data);
        
        

        //CORRECT INTEGRITY
        //$article = self::$ci->article_model->get_by_id($article_id);
        //self::$ci->article_model->correct_integrity($data, $lang_data);

        //SAVE URLs
        //self::$ci->article_model->save_urls($article_id);
       
        //ADDING LANG DATA 
        //$articles = array($article);
        //self::$ci->article_model->add_lang_data($articles);
        //
        $message = TagManager_Form::get_form_message('success');
        TagManager_Form::set_additional_success($form_name, $message);
        $redirect = base_url()."uspesna-registracia-klubu";
        if ($redirect !== FALSE) redirect($redirect);
      }else{
        $message = TagManager_Form::get_form_message('captcha_error');
        //TagManager_Form::set_additional_error($form_name, $message);  
        self::$ci->form_validation->set_message('captcha_error', $message);    
      }
    }
  }

  public static function clean($string) {
    $result = '';
    self::$ci->load->helper('text');
    $result = convert_accented_characters($string);
    $result = strtolower($result);
    $result = str_replace(' ', '-', $result);
    return $result;
  }
}