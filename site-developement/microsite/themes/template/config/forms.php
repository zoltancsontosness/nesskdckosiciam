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
        'emails' => array 
                (
                    array
                        (
                            // Send the mail to the address filled in in the 'email' input of the form
                            // Values can be :
                            // - One plain Email address : my.name@mydomain.com
                            // - 'form' to send it to the email of the form data
                            // - 'site' to send it to the Email set in Ionize under Settings > Advanced > Email > Website
                            // - 'contact' to send it to the Email set in Ionize under Settings > Advanced > Email > Contact
                            // - 'info' to send it to the Email set in Ionize under Settings > Advanced > Email > Info
                            // - 'technical' to send it to the Email set in Ionize under Settings > Advanced > Email > Info
                            'email' => 'contact',
                            'subject' => 'Contact form',
                            
                            'view' => 'emails/contact'
                        ),
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
    ),
	// Send CV form
    'send_cv' => array
    (
        // The method which will process the form
        // The function name has no importance, it must only be in the declared Tagmanager class
        // and be "public static"
        'process' => 'TagManager_SendCv::process_data',
 
        // Redirection after process. Can be 'home' or 'referer' for the $_SERVER['HTTP_REFERER'] value.
        // If not set, doesn't redirect
        'redirect' => 'referer',
 
        // Messages Language index, as set in language/xx/form_lang.php
        'messages' => array(
            'success' => 'form_message_success',
            'error' => 'form_message_error',
        ),
				'emails' => array 
				(
					array
						(
							// Send the mail to the address filled in in the 'email' input of the form
							// Values can be :
							// - One plain Email address : my.name@mydomain.com
							// - 'form' to send it to the email of the form data
							// - 'site' to send it to the Email set in Ionize under Settings > Advanced > Email > Website
							// - 'contact' to send it to the Email set in Ionize under Settings > Advanced > Email > Contact
							// - 'info' to send it to the Email set in Ionize under Settings > Advanced > Email > Info
							// - 'technical' to send it to the Email set in Ionize under Settings > Advanced > Email > Info
							'email' => 'contact',
							'subject' => '',
							
							'view' => 'emails/cv'
						),
				),
 
        // Form definition: fields and rules
        'fields' => array
        (
            'position' => array
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
            'cv' => array(
                'rules' => 'trim|xss_clean',
				'label' => 'form_label_file',
            )
        )
    ),
    // Refer form
    'refer' => array
    (
        // The method which will process the form
        // The function name has no importance, it must only be in the declared Tagmanager class
        // and be "public static"
        'process' => 'TagManager_Refer::process_data',
 
        // Redirection after process. Can be 'home' or 'referer' for the $_SERVER['HTTP_REFERER'] value.
        // If not set, doesn't redirect
        'redirect' => 'referer',
 
        // Messages Language index, as set in language/xx/form_lang.php
        'messages' => array(
            'success' => 'form_message_success',
            'error' => 'form_message_error',
        ),
                'emails' => array 
                (
                    array
                        (
                            // Send the mail to the address filled in in the 'email' input of the form
                            // Values can be :
                            // - One plain Email address : my.name@mydomain.com
                            // - 'form' to send it to the email of the form data
                            // - 'site' to send it to the Email set in Ionize under Settings > Advanced > Email > Website
                            // - 'contact' to send it to the Email set in Ionize under Settings > Advanced > Email > Contact
                            // - 'info' to send it to the Email set in Ionize under Settings > Advanced > Email > Info
                            // - 'technical' to send it to the Email set in Ionize under Settings > Advanced > Email > Info
                            'email' => 'form',
                            'subject' => 'Seek your opportunity, apply for job',                            
                            'view' => 'emails/refer'
                        ),
                ),
 
        // Form definition: fields and rules
        'fields' => array
        (
            'position' => array
            (
                // CI validation rules
                'rules' => 'trim|required|min_length[3]|xss_clean',
                // Label translated index, as set in language/xx/form_lang.php
                // Will be used to display the label name in error messages
                'label' => 'form_label_position',
            ),
            'email' => array(
                'rules' => 'trim|required|valid_email|xss_clean',
                'label' => 'form_label_friend_email',
            ),
            'sender-email' => array(
                'rules' => 'trim|required|valid_email|xss_clean',
                'label' => 'form_label_sender_email',
            ),
            'message' => array(
                'rules' => 'require|xss_clean|min_length[10]',
                'label' => 'form_label_message',
            ),
            'job-desc' => array(
                'rules' => 'xss_clean',
                'label' => '',
            ),
            'job-link' => array(
                'rules' => 'xss_clean',
                'label' => '',
            ),
        )
    )
);