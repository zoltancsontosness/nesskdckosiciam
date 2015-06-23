<?php
/**
 * Ionize
 *
 * @package   Ionize
 * @author    Ionize Dev Team
 * @license   http://doc.ionizecms.com/en/basic-infos/license-agreement
 * @link    http://ionizecms.com
 * @since   Version 0.9.9
 *
 */


/**
 * Contact TagManager
 *
 * This tag manager is one example of user defined tag managers.
 * It belongs to the user theme
 *
 */
class TagManager_Refer extends TagManager
{
  /**
   * Processes the form POST data.
   *
   * @param FTL_Binding   'init' tag (not the user one because this method is run before any tag parsing)
   *              This tag is supposed to be only used to send Emails.
   *              With this tag, Emails views have access to the global tags, but not to any other
   *              object tag.
   *
   * @return void
   *
   */
  public static function process_data(FTL_Binding $tag)
  {
    // Name of the form : Must be send to identify the form.
    $form_name = self::$ci->input->post('form');

    // Because Form are processed before any tag rendering, we have to run the validation
    if (TagManager_Form::validate($form_name))
    {
      //
      // ... Here you do what you want with the data ...
      //
      // For the example, we will send one email to the address the user gave in the form
      //

      // Posted data
      // To see the posted array, uncomment trace($posted)
      // If you prefer to see these data through one log file,
      // uncomment log_message(...) and be sure /application/config/config.php contains :
      // $config['log_threshold'] = 1;
      // The log files are located in : /application/logs/log-YYYY-MM-DD.php
      // We prefer to log our 'dev' data as 'error' to not see the all CodeIgniter 'debug' messages.

      $post = self::$ci->input->post();
      //trace($post);
      // log_message('error', print_r($posted, TRUE));


        TagManager_Email::send_form_emails($tag, $form_name, $post);

        // Add one custom Success message
        // Get the messages key defined in : /themes/your_theme/config/forms.php
        // You can also set directly one lang translated key
        $message = TagManager_Form::get_form_message('success');
        TagManager_Form::set_additional_success($form_name, $message);


      // Use of the 'redirect' option of the form config.
      // If no redirect after processing, the form data can be send again if the user refreshes the page
      // To avoid that, we use the redirection directive as set in the config file:
      // /themes/your_theme/config/forms.php
      $redirect = TagManager_Form::get_form_redirect();
      if ($redirect !== FALSE) redirect($redirect);
    }
  }
}