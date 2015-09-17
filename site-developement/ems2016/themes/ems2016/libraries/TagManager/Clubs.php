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
        // Config for files
        $config['upload_path'] = 'files/podujatia/' . self::clean($title);

        //$config['allowed_types'] = 'pdf|doc|docx';
        $config['allowed_extensions'] = array('jpg', 'jpeg', 'png');
        $config['max_size'] = '1024';
        $config['max_width'] = '0';
        $config['max_height'] = '0';

        $data = array (
          'id_article' => '',
          'author' => self::clean($title),
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
          'ico' => $posted['ico'],
          'webpage' => $posted['webpage'],
          'address' => $posted['address'],
          'email' => $posted['email'],
        );

        $element = array('ordering' => 0);

        //LOADING MODEL
        self::load_model('article_model');
        self::load_model('extend_field_model');
        self::load_model('element_model');
        self::load_model('media_model');
        self::$ci->load->helper('url');
        self::$ci->load->library('upload', $config);


        //SAVING TO DB
        $article_id = self::$ci->article_model->save($data,$lang_data);
        $element_id = self::$ci->element_model->save('article', $article_id, FALSE, 3, $element);
        self::$ci->extend_field_model->save_data('element', $element_id, $extend_data,false);
        //LINKING ARTICLE TO PAGE
        $data['online'] = 0;
        $data['main_parent'] = 11;
        self::$ci->article_model->link_to_page($data['main_parent'],$article_id,$data);
        
        // Do upload and link to article
        $files = $_FILES;

        foreach ($_FILES['attachment']['name'] as $key => $value) {
          $_FILES['attachment']['name']= $files['attachment']['name'][$key];
          $_FILES['attachment']['type']= $files['attachment']['type'][$key];
          $_FILES['attachment']['tmp_name']= $files['attachment']['tmp_name'][$key];
          $_FILES['attachment']['error']= $files['attachment']['error'][$key];
          $_FILES['attachment']['size']= $files['attachment']['size'][$key];  

          $isUploaded = self::$ci->upload->do_upload();
          if ($isUploaded){
            $post_data = array_merge($posted, self::$ci->upload->data());
            $id_media = self::$ci->media_model->insert_media($config['upload_path'].'/'.$post_data["file_name"]);
            self::$ci->media_model->attach_media('article', $article_id, $id_media);
          }
        }
        
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