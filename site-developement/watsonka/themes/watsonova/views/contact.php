	<div class="one_fourth">

		<aside class="widget widget_address">
		
			<ion:page id="kontakt">
			
				<ion:articles limit="1">
			
					<ion:article>

						<ion:content />			
					
					</ion:article>
					
				</ion:articles>
			
			</ion:page>			

		</aside>

	</div>
	
	<div class="one_fourth"></div>

	<div class="two_fourth">

		<aside class="widget widget_custom_contact_form_entries">

			<h2 class="widgettitle"><ion:lang key="contact_form_header" /></h2>

			<div class="cmsms-form-builder">

				<div class="widgetinfo">Thank you! <br>Your message has been sent successfully.</div>

				<script type="text/javascript">

					jQuery(document).ready(function () { 

						jQuery('#form_contact_form_widget_001').validationEngine('init');

						

						jQuery('#form_contact_form_widget_001 a#contact_form_widget_001_wformsend').click(function () { 

							var form_builder_url = jQuery('#contact_form_widget_001_wurl').val();

							

							jQuery('#form_contact_form_widget_001 .loading').animate( {

								opacity : 1

							} , 250);

							

							if (jQuery('#form_contact_form_widget_001').validationEngine('validate')) { 

								jQuery.post(form_builder_url, {

									field_003 : jQuery('#field_003').val(), 

									field_004 : jQuery('#field_004').val(), 

									formname : 'contact_form_widget_001', 

									formtype : 'widget' 

								}, function () { 

									jQuery('#form_contact_form_widget_001 .loading').animate( { opacity : 0 }, 250);

									document.getElementById('form_contact_form_widget_001').reset();

									jQuery('#form_contact_form_widget_001').parent().find('.widgetinfo').hide();

									jQuery('#form_contact_form_widget_001').parent().find('.widgetinfo').fadeIn('fast');

									jQuery('html, body').animate( { scrollTop : (jQuery('#form_contact_form_widget_001').offset().top - 100) }, 'slow');

									jQuery('#form_contact_form_widget_001').parent().find('.widgetinfo').delay(5000).fadeOut(1000);

								} );

								

								return false;

							} else { 

								jQuery('#form_contact_form_widget_001 .loading').animate( { opacity : 0 }, 250);

								

								return false;

							}

						} );

					} );

				</script>

				<form action="#message" method="post">
					<!--
						Success message
						Displayed if the form was successfuly validated
					-->
					<ion:form:fast-contact:validation:success is="true">
						<ion:lang key="form_alert_success_title" tag="strong" id="message" class="success" />
					</ion:form:fast-contact:validation:success>

					<!--
						Error message
						Displayed if the form doesn't pass the validation
						the 'form_message_error' key is located in : themes/your_theme/language/xx/tags_lang.php
					-->
					<ion:form:fast-contact:validation:error is="true" >
						<ion:lang key="form_alert_error_title" tag="strong" id="message" class="error" />
					</ion:form:fast-contact:validation:error>
					<input type="hidden" name="form" value="fast-contact" />
					<div class="form_info cmsms_input">

						<label for="field_003"><ion:lang key="form_label_email" /> *</label>

						<input type="text" name="email" id="field_003" size="22" tabindex="11" class="validate[required,custom[email]]<ion:form:fast-contact:error:name is="true"> error</ion:form:fast-contact:error:name>">

					</div>

					<div class="form_info cmsms_textarea">

						<label for="field_004"><ion:lang key="form_label_message" /> *</label>

						<textarea name="message" id="field_004" cols="28" rows="6" tabindex="13" class="validate[required,minSize[3]]<ion:form:fast-contact:error:message is="true"> error</ion:form:fast-contact:error:message>"></textarea>

					</div>

					<div class="loading"></div>

					<div><input type="hidden" name="contact_form_widget_001_wurl" id="contact_form_widget_001_wurl" value="http://magique-html.cmsmasters.net/php/sendmail.php"></div><!-- Here you need to set the path to the sendmail file -->
					
					<div><input type="submit" class="button" value="<ion:lang key="form_label_send" />" /></div>

				</form>

			</div>

		</aside>

	</div>