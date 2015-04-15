<?php
/**
 * Contact Form TagManager
 *
 */
class TagManager_Contact extends TagManager
{
    /**
     * Processes the form POST data.
     *
     * @param FTL_Binding
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
            // Posted data
            // To see the posted array, uncomment trace($posted)
            // If you prefer to see these data through one log file,
            // uncomment log_message(...) and be sure /application/config/config.php contains :
            // $config['log_threshold'] = 1;
            // The log files are located in : /application/logs/log-YYYY-MM-DD.php
            // We prefer to log our 'dev' data as 'error' to not see the all CodeIgniter 'debug' messages.
 
            $posted = self::$ci->input->post();
            // trace($posted);
            // log_message('error', print_r($posted, TRUE));
 
 
            // ... Here ... you do what you want with the data ...
 
            // Add one custom Success message
            // Get the messages key defined in : /themes/your_theme/config/forms.php
            // You can also set directly one lang translated key
            $message = TagManager_Form::get_form_message('success');
            TagManager_Form::set_additional_success($form_name, $message);
 
            // Alternative : Set the message by using directly one lang translated key :
            // TagManager_Form::set_additional_success($form_name, lang('form_message_success'));
 
            // Use of the 'redirect' option of the form config.
            // If no redirect after processing, the form data can be send again if the user refreshes the page
            // To avoid that, we use the redirection directive as set in the config file:
            // /themes/your_theme/config/forms.php
            $redirect = TagManager_Form::get_form_redirect();
            if ($redirect !== FALSE) redirect($redirect);
        }
        /*
        // Normally, nothing should be done here, because the validation process refill the form
        // and doesn't redirect, so the user's filled in data can be used to fill the form again.
        // Remember : If you redirect here, the form refill will not be done, as the data are lost
        // (no access to the posted data anymore after redirection)
        else
        {
            // ... Do something here ...
        }
        */
    }
}