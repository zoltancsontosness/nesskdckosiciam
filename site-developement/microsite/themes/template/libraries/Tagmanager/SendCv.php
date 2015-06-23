<?php
/**
 * Ionize
 *
 * @package		Ionize
 * @author		Ionize Dev Team
 * @license		http://doc.ionizecms.com/en/basic-infos/license-agreement
 * @link		http://ionizecms.com
 * @since		Version 0.9.9
 *
 */


/**
 * SendCV TagManager
 *
 * This tag manager is one example of user defined tag managers.
 * It belongs to the user theme
 *
 */
class TagManager_SendCv extends TagManager
{
	/**
	 * Processes the form POST data.
	 *
	 * @param FTL_Binding		'init' tag (not the user one because this method is run before any tag parsing)
	 *							This tag is supposed to be only used to send Emails.
	 * 							With this tag, Emails views have access to the global tags, but not to any other
	 * 							object tag.
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

			$post = self::$ci->input->post();

			// Config for files
			$config['upload_path'] = '/uploads';
			//$config['allowed_types'] = 'pdf|doc|docx';
			$config['allowed_extensions'] = array('pdf', 'doc', 'docx');
			$config['max_size']	= '1024';
			$config['max_width'] = '0';
			$config['max_height'] = '0';

			// Set subject of email to name of vacancy name
			$subject = "Apply to this job - " . $post["position"];
			
			
			self::$ci->load->library('upload', $config);

			if( ! self::$ci->upload->do_upload() )
			{
				// Upload aborted: Add one custom error message
				$message = TagManager_Form::get_form_message('error');
				TagManager_Form::set_additional_error($form_name, self::$ci->upload->display_errors('<p>', '</p>'));
			}			
			else
			{
				// Upload successfull
				$post_data = array_merge($post, self::$ci->upload->data());
				$message = TagManager_Form::get_form_message('success');
				TagManager_Form::set_additional_success($form_name, $message);
				TagManager_Email::send_email_with_attachment($tag, $subject, $form_name, $post_data, $post_data["full_path"]);
				unlink($post_data["full_path"]);
			}
	


			$redirect = TagManager_Form::get_form_redirect();
			if ($redirect !== FALSE) redirect($redirect);
		}
	}
}