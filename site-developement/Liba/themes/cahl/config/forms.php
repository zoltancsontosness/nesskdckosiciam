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
	'entry' => array
	(
		// The method which will process the form
		// The function name has no importance, it must only be in the declared Tagmanager class
		// and be "public static"
		'process' => 'TagManager_Entry::process_data',

		// Redirection after process. Can be 'home' or 'referer' for the $_SERVER['HTTP_REFERER'] value.
		// If not set, doesn't redirect
		'redirect' => 'referer',

		// Messages Language index, as set in language/xx/form_lang.php
		'messages' => array(
			'success' => 'form_alert_error_message',
			'error' => 'form_alert_success_message',
		),
		'emails' => array
		(
			// To Site Administrator
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

				// Translation item index
				'subject' => 'mail_website_contact_subject',

				// Used view : Located in /themes/your_theme/mail/contact.php
				'view' => 'mail/contact/to_admin',
			),
			// Send to user
			array
			(
				'email' => 'form',
				'subject' => 'mail_user_contact_subject',
				'view' => 'mail/contact/to_user',
			),
		),
		// Form definition: fields and rules
		'fields' => array
		(
			'firstname' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Meno',
			),
			'lastname' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Priezvisko',
			),
			'address' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Adresa',
			),
			'birthday' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Dátum narodenia',
			),
			'adult_firstname' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Meno',
			),
			'adult_lastname' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Priezvisko',
			),
			'phone' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Telefónne číslo',
			),
			'email' => array(
				'rules' => 'trim|required|valid_email|xss_clean',
				'label' => 'Email',
			),
			'rule' => array(
                // Can be 'radio', 'checkbox', 'select' or not set for input and textarea
                'type' => 'checkbox',
                'rules' => 'required',
                'label' => 'form_label_heard_on',
            )
		)
	),

// trening form
	'trening_form' => array
	(
		// The method which will process the form
		// The function name has no importance, it must only be in the declared Tagmanager class
		// and be "public static"
		'process' => 'TagManager_Trenings::process_data',

		// Redirection after process. Can be 'home' or 'referer' for the $_SERVER['HTTP_REFERER'] value.
		// If not set, doesn't redirect
		'redirect' => 'referer',

		// Messages Language index, as set in language/xx/form_lang.php
		'messages' => array(
			'success' => 'form_alert_error_message',
			'error' => 'form_alert_success_message',
		),
		'emails' => array
		(
			// To Site Administrator
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

				// Translation item index
				'subject' => 'mail_website_contact_subject',

				// Used view : Located in /themes/your_theme/mail/contact.php
				'view' => 'mail/contact/to_admin',
			),
			// Send to user
			array
			(
				'email' => 'form',
				'subject' => 'mail_user_contact_subject',
				'view' => 'mail/contact/to_user',
			),
		),
		// Form definition: fields and rules
		'fields' => array
		(
			'type' => array(
                // Can be 'radio', 'checkbox', 'select' or not set for input and textarea
                'type' => 'select',
                'rules' => 'required',
                'label' => 'form_label_type',
            ),
			'firstname' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Meno',
			),
			'lastname' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Priezvisko',
			),
			'address' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Adresa',
			),
			'birthday' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Dátum narodenia',
			),
			'phone' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Telefónne číslo',
			),
			'email' => array(
				'rules' => 'trim|required|valid_email|xss_clean',
				'label' => 'Email',
			),
			'adult_firstname' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Meno',
			),
			'adult_lastname' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[3]|xss_clean',
				// Label translated index, as set in language/xx/form_lang.php
				// Will be used to display the label name in error messages
				'label' => 'Priezvisko',
			),
			
			'rule' => array(
                // Can be 'radio', 'checkbox', 'select' or not set for input and textarea
                'type' => 'checkbox',
                'rules' => 'required',
                'label' => 'form_label_heard_on',
            )
		)
	),

	// Sign up form
	'sign-up' => array
	(
		// The method which will process the form
		// The function name has no importance, it must only be in the declared Tagmanager class
		// and be "public static"
		'process' => 'TagManager_Sign_up::process_data',

		// Redirection after process. Can be 'home' or 'referer' for the $_SERVER['HTTP_REFERER'] value.
		// If not set, doesn't redirect
		'redirect' => 'referer',

		// Messages Language index, as set in language/xx/form_lang.php
		'messages' => array(
			'success' => 'form_alert_error_message',
			'error' => 'form_alert_success_message',
		),
		'emails' => array
		(
			// To Site Administrator
			array
			(
				'email' => 'contact',
				'subject' => 'sign_up_title',
				'view' => 'mail/sign_up',
			)
		),
		// Form definition: fields and rules
		'fields' => array
		(
			'company_name' => array
			(
				// CI validation rules
				'rules' => 'trim|required|xss_clean',
				'label' => 'form_label_company_name',
			),
			'address' => array
			(
				// CI validation rules
				'rules' => 'trim|required|xss_clean',
				'label' => 'form_label_address',
			),			
			'city' => array
			(
				// CI validation rules
				'rules' => 'trim|required|xss_clean',
				'label' => 'form_label_city',
			),					
			'zip_code' => array
			(
				// CI validation rules
				'rules' => 'trim|required|min_length[5]|xss_clean',
				'label' => 'form_label_zip',
			),		
			'team_name' => array
			(
				// CI validation rules
				'rules' => 'trim|required|xss_clean',
				'label' => 'form_label_team_name',
			),
			'number_of_players' => array
			(
				// CI validation rules
				'rules' => 'trim|required|xss_clean',
				'label' => 'form_label_number_of_players',			
			),
			'contact_person_name' => array
			(
				// CI validation rules
				'rules' => 'trim|required|xss_clean',
				'label' => 'form_label_contact_person_name',			
			),			
			'email' => array(
				'rules' => 'trim|required|valid_email|xss_clean',
				'label' => 'form_label_email',
			),
			'phone' => array(
				'rules' => 'trim|required|xss_clean',
				'label' => 'form_label_phone',
			),
			'text' => array(
				'rules' => 'trim|required|xss_clean',
				'label' => 'form_label_notice',
			)
		)
	),	
	

	// Ajax Contact form
	// Displayed and processed by the module Ajaxform
	'contact_ajax' => array
	(
		// The method which will process the form
		// Originally in libraries/ajaxform_process.php, this class can be copied in your theme libraries folder
		'process' => 'Ajaxform_Process::process_contact',

		// Messages Language index, as set in language/xx/form_lang.php
		'messages' => array(
			'success' => 'form_alert_error_message',
			'error' => 'form_alert_success_message',
		),
		'emails' => array
		(
			// To Site Administrator
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

				// Translation item index
				'subject' => 'mail_website_contact_subject',

				// Used view : Located in /themes/your_theme/mail/contact.php
				'view' => 'mail/contact/to_admin_ajax',
			),
			// Send to user
			array
			(
				'email' => 'form',
				'subject' => 'mail_user_contact_subject',
				'view' => 'mail/contact/to_user_ajax',
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
				'label' => 'form_label_firstname',
			),
			'email' => array(
				'rules' => 'trim|required|valid_email|xss_clean',
				'label' => 'form_label_email',
			),
			'message' => array(
				'rules' => 'trim|required|xss_clean',
				'label' => 'form_label_message',
			)
		)
	),
);