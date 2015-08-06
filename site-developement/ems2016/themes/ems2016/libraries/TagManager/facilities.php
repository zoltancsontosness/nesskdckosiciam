<?php
class TagManager_Facilities extends TagManager
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

      $title = $posted['facility'];

      $data = array (
        'id_article' => '',
        'author' => $posted['email'],
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
          'subtitle' => $posted['operator'],
          'content' => $posted['desc'],
          'online' => 0,
          'meta_title' => '',
        ),
      );

      //LOADING MODEL
      self::load_model('article_model');

      //SAVING TO DB
      $article_id = self::$ci->article_model->save($data,$lang_data);

      //LINKING ARTICLE TO PAGE
      $data['online'] = 0;
      $data['main_parent'] = 5;
      self::$ci->article_model->link_to_page($data['main_parent'],$article_id,$data);

      //CORRECT INTEGRITY
      $article = self::$ci->article_model->get_by_id($article_id);
      self::$ci->article_model->correct_integrity($data, $lang_data);

      //SAVE URLs
      self::$ci->article_model->save_urls($article_id);

      //SAVE THE SITEMAP
      //self::$ci->structure->build_sitemap();

      //ADDING LANG DATA 
      $articles = array($article);
      self::$ci->article_model->add_lang_data($articles);

      $message = TagManager_Form::get_form_message('success');
      TagManager_Form::set_additional_success($form_name, $message);

      $redirect = TagManager_Form::get_form_redirect();
      if ($redirect !== FALSE) redirect($redirect);
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