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
 * Sign up TagManager
 */
class TagManager_Sign_up extends TagManager
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
		$form_name = self::$ci->input->post('form');

		if (TagManager_Form::validate($form_name))
		{

			$post = self::$ci->input->post();
			$go_further = TRUE;
			$results = Event::fire('Form.contact.check', $post);

			if (is_array($results))
			{
				foreach($results as $result)
					if ( ! $result)
						$go_further = FALSE;
			}

			if ($go_further)
			{
				TagManager_Email::send_form_emails($tag, $form_name, $post);
				$message = TagManager_Form::get_form_message('success');
				TagManager_Form::set_additional_success($form_name, $message);
			}

			$redirect = TagManager_Form::get_form_redirect();
			if ($redirect !== FALSE) redirect($redirect);
		}
		
	}
}