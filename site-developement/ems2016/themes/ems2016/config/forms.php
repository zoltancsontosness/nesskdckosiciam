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
                'rules' => 'trim|xss_clean|min_length[5]',
                'label' => 'form_label_subtitle',
            ),
            'facility' => array(
                'rules' => 'trim|xss_clean|min_length[5]',
                'label' => 'form_label_subtitle',
            ),
            'address' => array(
                'rules' => 'trim|xss_clean|min_length[5]',
                'label' => 'form_label_subtitle',
            ),
            'phone' => array(
                'rules' => 'trim|xss_clean|min_length[5]',
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
                'rules' => 'required',
                'label' => 'form_label_content',
            ),
            
        )
    ),
);