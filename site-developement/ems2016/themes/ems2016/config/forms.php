<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$config['forms'] = array
(
    'facilities' => array
    (
        'process' => 'TagManager_Facilities::process_data',
        'messages' => array(
            'success' => 'new_article_message_success',
            'error' => 'new_article_message_error',
            'captcha_error' => 'bad_captcha',
        ),
        'emails' => array(
            array(
                'email' => 'technical',
                'subject' => 'Registrácia',
                'view' => 'mail/registration_alert_facilities',
            ),
        ),
 
        'fields' => array
        (
            'operator' => array
            (
                'rules' => 'trim|required|min_length[3]|xss_clean',
                'label' => 'form_label_title',
            ),
            'ico' => array(
                'rules' => 'trim|xss_clean|max_length[8]|required',
                'label' => 'form_label_subtitle',
            ),
            'facility' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
                'label' => 'form_label_subtitle',
            ),
            'city' => array(
                'rules' => 'trim|xss_clean|min_length[3]|required',
                'label' => 'form_label_subtitle',
            ),
            'street' => array(
                'rules' => 'trim|xss_clean|min_length[3]|required',
                'label' => 'form_label_subtitle',
            ),
            'number' => array(
                'rules' => 'trim|xss_clean|min_length[1]|required',
                'label' => 'form_label_subtitle',
            ),
            'phone' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
                'label' => 'form_label_subtitle',
            ),
            'email' => array(
                'rules' => 'trim|required|valid_email|xss_clean',
                'label' => 'form_label_email',
            ),
            'webpage' => array(
                'rules' => 'required',
                'label' => 'form_label_content',
            ),
            'fblink' => array(
                'rules' => 'required',
                'label' => 'form_label_content',
            ),
            'desc' => array(
                'rules' => 'required|min_length[5]',
                'label' => 'form_label_content',
            ),
            'photos' => array(
                'rules' => 'trim',
                'label' => 'form_label_photo'
            ),
            'rules_1' => array(
                'rules' => 'required|xss_clean',
                'label' => 'form_label_rules_1'
            ),
            
        )
    ),
    
    //EVENTS
    'events' => array
    (
        'process' => 'TagManager_Events::process_data',
        'messages' => array(
            'success' => 'new_article_message_success',
            'error' => 'new_article_message_error',
            'captcha_error' => 'bad_captcha',
        ),
        'emails' => array(
            array(
                'email' => 'technical',
                'subject' => 'Registrácia',
                'view' => 'mail/registration_alert_events',
            ),
        ),

        'fields' => array
        (
            'organizer' => array
            (
                'rules' => 'trim|required|min_length[3]|xss_clean',
                'label' => 'form_label_title',
            ),
            'sport_type' => array
            (
                'rules' => 'trim|required|min_length[3]|xss_clean',
                'label' => 'form_label_sport_type',
            ),
            'is_active' => array
            (
                'rules' => 'trim|required|xss_clean',
                'label' => 'form_label_is_active',
            ),
            'ico' => array(
                'rules' => 'trim|xss_clean|max_length[8]|required',
                'label' => 'form_label_subtitle',
            ),
            'event_name' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
                'label' => 'form_label_subtitle',
            ),
            'address' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
                'label' => 'form_label_subtitle',
            ),
            'date' => array(
                'rules' => 'xss_clean|required',
                'label' => 'form_label_date',
            ),
            'length' => array(
                'rules' => 'xss_clean|required',
                'label' => 'form_label_length',
            ),
            'attachment' => array(
                'rules' => 'xss_clean',
                'label' => 'form_label_attachment',
            ),
            'webpage' => array(
                'rules' => 'xss_clean',
                'label' => 'form_label_webpage',
            ),
            'desc' => array(
                'rules' => 'xss_clean|required|min_length[5]',
                'label' => 'form_label_desc',
            ),
            'rules_1' => array(
                'rules' => 'required|xss_clean',
                'label' => 'form_label_rules_1'
            ),
            'category' => array(
                'rules' => 'xss_clean|required|trim',
                'label' => 'form_label_category'
            ),
            'phone' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
                'label' => 'form_label_subtitle',
            ),
            'email' => array(
                'rules' => 'trim|required|valid_email|xss_clean',
                'label' => 'form_label_email',
            ),
        )
    ),

    //CLUBS
    'clubs' => array
    (
        'process' => 'TagManager_Clubs::process_data',
        'messages' => array(
            'success' => 'new_article_message_success',
            'error' => 'new_article_message_error',
            'captcha_error' => 'bad_captcha',
            'attachment_error' => 'attachment_missing'
        ),
        'emails' => array(
            array(
                'email' => 'technical',
                'subject' => 'Registrácia',
                'view' => 'mail/registration_alert_clubs',
            ),
        ),

        'fields' => array
        (
            'ico' => array(
                'rules' => 'trim|xss_clean|max_length[8]|required',
                'label' => 'form_label_subtitle',
            ),
            'club_name' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
                'label' => 'form_label_subtitle',
            ),
            'webpage' => array(
                'rules' => 'xss_clean',
                'label' => 'form_label_webpage',
            ),
            'desc' => array(
                'rules' => 'xss_clean|required|min_length[5]',
                'label' => 'form_label_desc',
            ),
            'rules_1' => array(
                'rules' => 'required|xss_clean',
                'label' => 'form_label_rules_1'
            ),
            'email' => array(
                'rules' => 'trim|xss_clean|valid_email|required',
                'label' => 'form_label_email',
            ),
            'phone' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
                'label' => 'form_label_subtitle',
            ),
            'address' => array(
                'rules' => 'trim|xss_clean|required',
                'label' => 'form_label_address',
            ),
            'attachment' => array(
                'field' => 'attachment',
                'rules' => 'xss_clean',
                'label' => 'form_label_attachment',
            ),
        )
    ),

    //Contact
    'contact' => array
    (
        'process' => 'TagManager_Contact::process_data',
        'messages' => array(
            'success' => 'contact_message_success',
            'error' => 'contact_message_error',
            'captcha_error' => 'bad_captcha',
        ),
        'emails' => array(
            array(
                'email' => 'contact',
                'subject' => 'Kontaktny formular',
                'view' => 'mail/contact',
            ),
        ),

        'fields' => array
        (
            'cf_name' => array
            (
                'rules' => 'trim|required|min_length[3]|xss_clean',
                'label' => 'form_label_name',
            ),
            'cf_email' => array(
                'rules' => 'trim|xss_clean|valid_email|required',
                'label' => 'form_label_email',
            ),
            'cf_subject' => array(
                'rules' => 'trim|xss_clean|min_length[3]|required',
                'label' => 'form_label_subject',
            ),
            'cf_message' => array(
                'rules' => 'trim|xss_clean|min_length[10]|required',
                'label' => 'form_label_message',
            ),
        )
    ),

    //Report problem
    'report_problem' => array
    (
        'process' => 'TagManager_Report_problem::process_data',
        'messages' => array(
            'success' => 'report_problem_message_success',
            'error' => 'report_problem_message_error',
            'captcha_error' => 'bad_captcha',
        ),
        'emails' => array(
            array(
                'email' => 'technical',
                'subject' => 'Nahlásenie chybných údajov',
                'view' => 'mail/bad_content',
            ),
        ),

        'fields' => array
        (
            'email' => array(
                'rules' => 'trim|xss_clean|valid_email|required',
                'label' => 'form_label_email',
            ),
            'link' => array(
                'rules' => 'trim|xss_clean|min_length[3]|required',
                'label' => 'form_label_subject',
            ),
            'message' => array(
                'rules' => 'trim|xss_clean|min_length[10]|required',
                'label' => 'form_label_message',
            ),
        )
    ),
);