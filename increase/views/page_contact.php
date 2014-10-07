<ion:partial view="header" />

<!-- __________________________________________________ Start Middle -->

	<ion:page>

			<div class="wrap_headline">

				<div class="headline">

					<ion:title tag="h1" />	

				</div>

			</div>

			<div class="wrap_cont_nav">

				<div class="cont_nav">

					<ion:page:breadcrumb tag="a" article="true" separator="&nbsp; &#47; &nbsp;" />

				</div>

			</div>

			<div class="container">			

				<section id="middle">

					<div class="middle_inner">

<!-- __________________________________________________ Start Content -->


				    <!-- Articles iterator -->
					<ion:articles limit="1">
				 
						<!-- Article -->
						<ion:article>
				 
						<div class="content_wrap">

							<section id="content">

								<div class="entry">

									<ion:title tag="h2" />

									<br />

									<div class="resizable_block">

										<div id="google_map_5" class="google_map fullwidth"></div>

									</div>

									<script type="text/javascript">

										jQuery(document).ready(function () { 

											jQuery('#google_map_5').gMap( { 

												zoom : 17, 

												markers : [ { 

													address : '', 

													latitude : 48.7077041, 

													longitude : 21.2467871, 

													html : 'Business Center Moldavská, Moldavská cesta 10/B, Košice-Juh', 

													mapTypeControl : false, 

													popup : true 

												} ], 

												controls : [], 

												scrollwheel : true 

											} );

										} );

									</script>

									<br /><br /><br />

									<ion:lang key="contact_form_header" tag="h2" />

									<div class="cmsms-form-builder">

										<div class="box success_box" style="display:none;">

											<table>

												<tr>

													<td>&nbsp;</td>

													<td>Thank You!<br>Your message has been sent successfully.</td>

												</tr>

											</table>

										</div>

										<script type="text/javascript">

											jQuery(document).ready(function () { 

												jQuery('#contactform').validationEngine('init');

												

												jQuery('#contactform a#contact_form_formsend').click(function () { 

													var form_builder_url = jQuery('#contact_form_url').val();

													

													jQuery('#contactform .loading').animate( { opacity : 1 }, 250);

													

													var var_cmsms_check = '';

													

													jQuery('input[name="cmsms_check"]:checked').each(function () { 

														var_cmsms_check += jQuery(this).val() + ', ';

													} );

													

													if (var_cmsms_check !== '') {

														var_cmsms_check = var_cmsms_check.slice(0, -2);

													}

													

													if (jQuery('#contactform').validationEngine('validate')) { 

														jQuery.post(form_builder_url, { 

															contact_name : jQuery('#contact_name').val(), 

															contact_email : jQuery('#contact_email').val(), 

															contact_url : jQuery('#contact_url').val(), 

															contact_subject : jQuery('#contact_subject').val(), 

															contact_message : jQuery('#contact_message').val(), 

															cmsms_check : var_cmsms_check, 

															cmsms_radiobutton : jQuery('input[name="cmsms_radiobutton"]:checked').val(), 

															cmsms_options : jQuery('#cmsms_options').val(), 

															formname : 'contact_form', 

															formtype : 'contactf' 

														}, function () { 

															jQuery('#contactform .loading').animate( { opacity : 0 }, 250);

															

															document.getElementById('contactform').reset();

															

															jQuery('#contactform').parent().find('.box').hide();

															jQuery('#contactform').parent().find('.success_box').fadeIn('fast');

															jQuery('html, body').animate( { scrollTop : jQuery('#contactform').offset().top - 100 }, 'slow');

															jQuery('#contactform').parent().find('.success_box').delay(5000).fadeOut(1000);

														} );

														

														return false;

													} else { 

														jQuery('#contactform .loading').animate( { opacity : 0 }, 250);

														

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
											<ion:form:contact:validation:success is="true">
												<ion:lang key="form_alert_success_title" tag="strong" id="message" class="success" />
											</ion:form:contact:validation:success>

											<!--
												Error message
												Displayed if the form doesn't pass the validation
												the 'form_message_error' key is located in : themes/your_theme/language/xx/tags_lang.php
											-->
											<ion:form:contact:validation:error is="true" >
												<ion:lang key="form_alert_error_title" tag="strong" id="message" class="error" />
											</ion:form:contact:validation:error>
										
										
											<input type="hidden" name="form" value="contact" />
											<p><ion:lang key="contact_form_required_fields" /> <span class="color2">*</span></p>

											<div class="form_info cmsms_input">

												<label for="name"><ion:lang key="form_label_name" /> <span class="color2">*</span></label>

												<input type="text" name="name" value="" size="22" tabindex="3" class="validate[required,minSize[3],maxSize[100],custom[onlyLetterSp]]"/>

											</div>

											<div class="cl"></div>

											<div class="form_info cmsms_input">

												<label for="email"><ion:lang key="form_label_email" /> <span class="color2">*</span></label>

												<input type="text" name="email" value="" size="22" tabindex="4" class="validate[required,custom[email]]" />

											</div>

											<div class="cl"></div>

											<div class="form_info cmsms_textarea">

												<label for="message"><ion:lang key="form_label_message" /> <span class="color2">*</span></label>

												<textarea name="message" cols="28" rows="6" tabindex="7" class="validate[required,minSize[3]]" ></textarea>

											</div>

											<div class="cl"></div>

											<div><input type="hidden" name="contact_form_url" id="contact_form_url" value="http://increase-html.cmsmasters.net/php/sendmail.php" /></div><!-- Here you need to set the path to the sendmail file -->

											<div><input type="submit" class="button" value="<ion:lang key="form_label_send" />" /></div>

										</form>

									</div>

								</div>

							</section>

<!-- __________________________________________________ Finish Content -->		



<!-- __________________________________________________ Start Sidebar -->

				

							<section id="sidebar">

								<div class="one_first">

									<aside>

										<ion:content />

									</aside>	

								</div>

							</section>

<!-- __________________________________________________ Finish Sidebar -->	



						</div>

					</div>

				</section>

<!-- __________________________________________________ Finish Middle -->


			</div>

		</section>
		
		</ion:article>
    </ion:articles>
		
	</ion:page>
		
<ion:partial view="footer" />