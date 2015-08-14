<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

$config['forms'] = array
(
    'facilities' => array
    (
        'process' => 'TagManager_Facilities::process_data',
        'redirect' => 'referer',
        'messages' => array(
            'success' => 'new_article_message_success',
            'error' => 'new_article_message_error',
        ),
 
        'fields' => array
        (
            'operator' => array
            (
                'rules' => 'trim|required|min_length[3]|xss_clean',
                'label' => 'form_label_title',
            ),
            'ico' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
                'label' => 'form_label_subtitle',
            ),
            'facility' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
                'label' => 'form_label_subtitle',
            ),
            'address' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
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
            'rules_2' => array(
                'rules' => 'xss_clean|required',
                'label' => 'form_label_rules_2'
            ),
            
        )
    ),
    
    //EVENTS
    'events' => array
    (
        'process' => 'TagManager_Events::process_data',
        'redirect' => 'referer',
        'messages' => array(
            'success' => 'new_article_message_success',
            'error' => 'new_article_message_error',
        ),

        'fields' => array
        (
            'organizer' => array
            (
                'rules' => 'trim|required|min_length[3]|xss_clean',
                'label' => 'form_label_title',
            ),
            'ico' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
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
            'rules_2' => array(
                'rules' => 'xss_clean|required',
                'label' => 'form_label_rules_2'
            ),
        )
    ),

    //CLUBS
    'clubs' => array
    (
        'process' => 'TagManager_Clubs::process_data',
        'redirect' => 'referer',
        'messages' => array(
            'success' => 'new_article_message_success',
            'error' => 'new_article_message_error',
        ),

        'fields' => array
        (
            'organizer' => array
            (
                'rules' => 'trim|required|min_length[3]|xss_clean',
                'label' => 'form_label_title',
            ),
            'ico' => array(
                'rules' => 'trim|xss_clean|min_length[5]|required',
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
            'rules_2' => array(
                'rules' => 'xss_clean|required',
                'label' => 'form_label_rules_2'
            ),
        )
    ),
);