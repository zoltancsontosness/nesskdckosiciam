# RECaptcha Module For [Ionize CMS](http://ionizecms.com "Ionize CMS") #
----------
> RECaptcha module allowing you to make secure your forms...

**Author :** [İskender TOTOĞLU](http://altivebir.com.tr "ALTI ve BIR IT.")

**Version :** 0.9

**Ionize Version :** 1.0.4

----------
**Usage :**
> Ionize tag 

    <ion:recaptcha:html />
>Example for contact form ([Usage for Doc Example](http://doc.ionizecms.com/en/tags-reference/form-tags "Usage for Doc Example"))

> View File

    <h2>Contact form</h2>
	<!--
	    Success message
	    Displayed if the form was successfully validated
	-->
	<ion:form:contact:validation:success tag="p" class="green" />
 
	<!--
	    Error message
	    Displayed if the form doesn't pass the validation
	    the 'form_message_error' key is located in : themes/your_theme/language/xx/tags_lang.php
	-->
	<ion:form:contact:validation:error is="true" >
	    <span class="red">
	        Error : Some form data are missing or seem to be incorrect.
	    </span>
	</ion:form:contact:validation:error>
 
	<!--
	    Form has no action because the same page will process the data.
	    POST data are catched by the global Tagmanager and processed by the Tagmanager's library method 'process_data'
	    defined in : /themes/your_theme/libraries/Tagmanager/Contact.php
	    as declared in the form config file : /themes/your_theme/config/forms.php
	-->
	<form method="post" action="">
	 
	    <!--
	        The form name must be set so the tags identify it.
	        Same name than the one declared in forms.php
	    -->
	    <input type="hidden" name="form" value="contact" />
	 
	    <!--
	        Input : Name
	    -->
	    <label for="name">Name</label>
	 
	    <!-- Fills again the user input in case of failed validation -->
	    <input type="text" id="name" name="name" value="<ion:form:contact:field:name />"/>
	 
	    <!-- Displays the error linked to this input in the validation fails -->
	    <ion:form:contact:error:name tag="p" class="input-error" />
	 
	 
	    <!--
	       Input : Company
	     -->
	    <label for="company">Company</label>
	    <input type="text" id="company" name="company" value="<ion:form:contact:field:company />"/>
	    <ion:form:contact:error:company tag="p" class="input-error" />
	 
	 
	    <!--
	       Input : Email
	       -->
	    <label for="email">
	        Email
	        <span class="note">The form data will be send to this email address.</span>
	    </label>
	    <input type="text" id="email" name="email" value="<ion:form:contact:field:email />"/>
	    <ion:form:contact:error:email tag="p" class="input-error" />
	 
	 
	    <!--
	       Input : You heard about our company...
	       -->
	    <label>You heard about our company on...</label>
	 
	    <div>
	 
	        <!-- Fills again the user input in case of failed validation -->
	        <input type="radio" name="heard" id="heard-contact-facebook" value="Facebook" class="left" <ion:form:contact:radio:heard value="Facebook" /> />
	        <label for="heard-contact-facebook">
	            <ion:lang key="form_label_heard_facebook" />
	        </label>
	 
	        <input type="radio" name="heard" id="heard-contact-friend" value="one very good friend" class="clear left" <ion:form:contact:radio:heard value="one very good friend"  default="true" /> />
	        <label for="heard-contact-friend" >
	            <ion:lang key="form_label_heard_friend" />
	        </label>
	 
	        <input type="radio" name="heard" id="heard-contact-website" value="another website" class="clear left" <ion:form:contact:radio:heard value="another website" /> />
	        <label for="heard-contact-website" >
	            <ion:lang key="form_label_heard_website" />
	        </label>
	 
	        <ion:form:contact:error:heard tag="p" class="error" />
	    </div>
		
		<!--
	       RECaptcha
	       -->
	    <label for="email">
	        <ion:lang key="module_recaptcha_label_security_code" />
	        <ion:recaptcha:html />
	    </label>
	 
	    <!--
	        Submit button
	    -->
	    <input type="submit" value="Send the data" />
	 
	</form>

>Process the form

>For proccesing data we have condition after form validation done

	// Load REcaptcha Library
    self::$ci->load->library('recaptcha');

	// Call to recaptcha to get the data validation set within the class.
    self::$ci->recaptcha->recaptcha_check_answer();

	// Check recaptcha is valid?
	if(self::$ci->recaptcha->getIsValid())
	{
        // Do Action
	}
	else
	{
		// Show error message
		TagManager_Form::set_additional_error($form_name, lang('module_recaptcha_label_security_code_incorrect'));
	}

>And here is full example from doc with recaptcha condition

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
				// Load REcaptcha Library
	            self::$ci->load->library('recaptcha');

				// Call to recaptcha to get the data validation set within the class.
	            self::$ci->recaptcha->recaptcha_check_answer();

				// Check recaptcha is valid?
				if(self::$ci->recaptcha->getIsValid())
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
				else
				{
					TagManager_Form::set_additional_error($form_name, lang('module_recaptcha_label_security_code_incorrect'));
				}
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