			<div class="contact" id="contact">
				<div class="wrap">
					<div class="contact-left">
						<ion:page id="kontakt">
						<div class="contact-head">
							<span> </span>
							<h3><ion:title /></h3>
							<?php /*
								Success message
								Displayed if the form was successfuly validated
							*/ ?>
							<ion:form:contact:validation:success is="true">
								<ion:lang key="form_contact_success_title" tag="h4" />
								<ion:lang key="form_contact_success_message" tag="p" class="success" />
							</ion:form:contact:validation:success>

							<?php /*
								Error message
								Displayed if the form doesn't pass the validation
								the 'form_message_error' key is located in : themes/your_theme/language/xx/tags_lang.php

							*/ ?>
							<ion:form:contact:validation:error is="true" >
								<ion:lang key="form_contact_error_title" tag="h4" />
								<ion:lang key="form_contact_error_message" tag="p" class="error" />
							</ion:form:contact:validation:error>
						</div>
						<form class="form-horizontal" method="post" action="#contact">
							<input type="hidden" name="form" value="contact" />						
							<div class="form-left">
                                <input name="name" type="text" id="form_name"<ion:form:contact:error:name is="true"> class="error" </ion:form:contact:error:name>placeholder="<ion:lang key='form_label_name' />" value="" />
                                <input name="email" type="text" id="email"<ion:form:contact:error:email is="true"> class="error" </ion:form:contact:error:email>placeholder="<ion:lang key='form_label_email' />" value="<ion:form:contact:field:email />" />
								<input name="subject" type="text" id="subject"<ion:form:contact:error:subject is="true"> class="error" </ion:form:contact:error:subject>placeholder="<ion:lang key='form_label_subject' />" value="<ion:form:contact:field:subject />" />
							</div>
							<div class="form-right">
								<textarea name="message" id="message" rows="2" cols="70"<ion:form:contact:error:message  is="true"> class="error" </ion:form:contact:error:message>placeholder="<ion:lang key="form_label_message" />"><ion:form:contact:field:message /></textarea>			
							</div>
							<div class="clear"> </div>						
							<input type="submit" value="<ion:lang key="form_button_send" />" />
							<div class="clear"> </div>
						</form>
						</ion:page>
					</div>
					<ion:page id="footer-kontakt">
						<ion:articles limit="1">
							<ion:article>
							<div class="contact-right">
								<div class="contact-head">
										<span> </span>
										<h3><ion:title /></h3>
								</div>
								<br />
								<div class="contact-content">
									<ion:content />
								</div>
							</div>
							</ion:article>
						</ion:articles>
					</ion:page>
					<div class="clear"> </div>
				</div>
			</div>