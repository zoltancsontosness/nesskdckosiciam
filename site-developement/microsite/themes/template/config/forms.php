<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
|--------------------------------------------------------------------------
| Theme Forms configuration
|--------------------------------------------------------------------------
|
| This forms config array will be merged with /application/config/forms.php
| You can overwrite standard forms definition by creating your own definition
| for the form you wish to overwrite.
|
*/
$config['forms'] = array
(
	// Contact form
    'contact' => array
    (
        // The method which will process the form
        // The function name has no importance, it must only be in the declared Tagmanager class
        // and be "public static"
        'process' => 'TagManager_Contact::process_data',
 
        // Redirection after process. Can be 'home' or 'referer' for the $_SERVER['HTTP_REFERER'] value.
        // If not set, doesn't redirect
        'redirect' => 'referer',
 
        // Messages Language index, as set in language/xx/form_lang.php
        'messages' => array(
            'success' => 'form_message_success',
            'error' => 'form_message_error',
        ),
 
        // Form definition: fields and rules
        'fields' => array
        (
            'name' => array
            (
                // CI validation rules
                'rules' => 'trim|required|min_length[3]|xss_clean',
                // Label translated index, as set in language/xx/form_lang.php
                // Will be used to display the label name in error messages
                'label' => 'form_label_name',
            ),
            'email' => array(
                'rules' => 'trim|required|valid_email|xss_clean',
                'label' => 'form_label_email',
            ),
            // Example of radio inputs : "You heard about our company on..."
            'message' => array(
                'rules' => 'trim|required|min_length[10]|xss_clean',
                'label' => 'form_label_message',
            )
        )
    )
);