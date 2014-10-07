<?php

class Contact extends TagManager {

	/**
	 * Method responsible for sending contact form data
	 * @param FTL_Binding $tag
	 * @return void
	 */
	public function process_data(FTL_binding $tag) {
		$posted = self::input->post();
		print_r($posted);
	}

}