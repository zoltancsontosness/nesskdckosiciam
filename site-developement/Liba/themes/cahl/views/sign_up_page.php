<ion:partial view="header" />

		<section class="main-content wrapper clearfix">
			<div class="articles left">
				<!-- Sign up text -->
				<ion:page id="6">
					<ion:articles limit="1">
						<ion:article>
			
							<article class="clearfix">
								<h3><a href="#"><ion:title /></a></h3>
								<div class="social left">
									<!-- Facebook like -->
									<div class="facebook">
										<div class="fb-like" data-href="<ion:url />" data-width="60" data-layout="box_count" data-action="like" data-show-faces="true" data-share="true"></div>
									</div>    
									
									<!-- Google -->
									<div class="google">
										<div class="g-plusone" data-size="tall"></div>
									</div>
									
									<div class="twitter">
										<!-- Twitter -->                                
										<a href="<ion:url />" 
										   class="twitter-share-button" 
										   data-count="vertical" 
										   data-size="small"
										   data-width="49">Tweet</a>
									</div>						
								</div>
								<div class="text silver left">
									<!--
										Success message
										Displayed if the form was successfuly validated
									-->
									<ion:form:sign-up:validation:success is="true">
										<div id="message" class="success">
											<ion:lang key="form_alert_success_title" tag="h4" />
											<ion:lang key="form_alert_success_message" tag="p" />
										</div>
									</ion:form:sign-up:validation:success>
									<!--
										Error message
										Displayed if the form doesn't pass the validation
										the 'form_message_error' key is located in : themes/your_theme/language/xx/tags_lang.php
									-->
									<ion:form:sign-up:validation:error is="true" >
										<div id="message" class="error">
											<ion:lang key="form_alert_error_title" tag="h4" />
											<ion:lang key="form_alert_error_message" tag="p" />
										</div>										
									</ion:form:sign-up:validation:error>
									
									<!-- Get the pictures only -->
									<ion:medias type="picture" size="569,356">							 
										<img src="<ion:media:src />" alt="<ion:media:alt />" />
									</ion:medias>						
									<ion:content />
									
									<!-- Sign up form -->
									<form name="sign-up" action="#message" method="post">
										<fieldset>
										
											<input type="hidden" name="form" value="sign-up" />
											
											<!-- Input : Company name -->
											<p>
												<label for="company_name"><ion:lang key="form_label_company_name" /></label>
												<input name="company_name" type="text" id="company_name" class="validate required" value="<ion:form:sign-up:field:company_name />"<ion:form:sign-up:error:company_name is="true"> class="error" </ion:form:sign-up:error:company_name>/>
												<ion:form:sign-up:error:company_name tag="small" class="error" />
											</p>
											
											<!-- Input : Adress -->
											<p>
												<label for="address"><ion:lang key="form_label_address" /></label>
												<input name="address" type="text" id="address" class="validate required" value="<ion:form:sign-up:field:address />"<ion:form:sign-up:error:address is="true"> class="error" </ion:form:sign-up:error:address>/>
												<ion:form:sign-up:error:address tag="small" class="error" />
											</p>
											
											<!-- Input : City -->
											<p>
												<label for="city"><ion:lang key="form_label_city" /></label>
												<input name="city" type="text" id="city" class="validate required" value="<ion:form:sign-up:field:city />"<ion:form:sign-up:error:city is="true"> class="error" </ion:form:sign-up:error:city>/>
												<ion:form:sign-up:error:city tag="small" class="error" />
											</p>

											<!-- Input : Zip code -->
											<p>
												<label for="zip_code"><ion:lang key="form_label_zip" /></label>
												<input name="zip_code" type="text" id="zip_code" class="validate required number" value="<ion:form:sign-up:field:zip_code />"<ion:form:sign-up:error:zip_code is="true"> class="error" </ion:form:sign-up:error:zip_code>/>
												<ion:form:sign-up:error:zip_code tag="small" class="error" />											
											</p>
											
											<!-- Input : Team name -->
											<p>
												<label for="team_name"><ion:lang key="form_label_team_name" /></label>
												<input name="team_name" type="text" id="team_name" class="validate required" value="<ion:form:sign-up:field:team_name />"<ion:form:sign-up:error:team_name is="true"> class="error" </ion:form:sign-up:error:team_name>/>
												<ion:form:sign-up:error:team_name tag="small" class="error" />											
											</p>
											
											<!-- Input : Number of players -->
											<p>
												<label for="number_of_players"><ion:lang key="form_label_number_of_players" /></label>
												<input name="number_of_players" type="text" id="number_of_players" class="validate required number" value="<ion:form:sign-up:field:number_of_players />"<ion:form:sign-up:error:number_of_players is="true"> class="error" </ion:form:sign-up:error:number_of_players>/>
												<ion:form:sign-up:error:number_of_players tag="small" class="error" />											
											</p>
											
											<!-- Input : Contact person name -->
											<p>
												<label for="contact_person_name"><ion:lang key="form_label_contact_person_name" /></label>
												<input name="contact_person_name" type="text" id="contact_person_name" class="validate required" value="<ion:form:sign-up:field:contact_person_name />"<ion:form:sign-up:error:contact_person_name is="true"> class="error" </ion:form:sign-up:error:contact_person_name>/>
												<ion:form:sign-up:error:contact_person_name tag="small" class="error" />
											</p>
											
											<!-- Input : Email -->
											<p>
												<label for="email"><ion:lang key="form_label_email" /></label>
												<input name="email" type="text" id="email" class="validate required email" value="<ion:form:sign-up:field:email />"<ion:form:sign-up:error:email is="true"> class="error" </ion:form:sign-up:error:email> />
												<ion:form:sign-up:error:email tag="small" class="error" />
											</p>

											<!-- Input : Phone-->
											<p>
												<label for="phone"><ion:lang key="form_label_phone" /></label>
												<input name="phone" type="text" id="phone" class="validate required number" value="<ion:form:sign-up:field:phone />"<ion:form:sign-up:error:phone is="true"> class="error" </ion:form:sign-up:error:phone>/>
												<ion:form:sign-up:error:phone tag="small" class="error" />	
											</p>
											
											<!-- Input : Message -->
											<p>
												<label for="text"><ion:lang key="form_label_notice" /></label>
												<textarea name="text" id="text" rows="7" placeholder="<ion:lang key="form_label_message" />"<ion:form:sign-up:error:text is="true"> class="error" </ion:form:sign-up:error:text>><ion:form:sign-up:field:text /></textarea>
												<ion:form:sign-up:error:text tag="small" class="error" />
											</p>

											<input type="submit" class="red-background white" value="<ion:lang key="form_button_send" />" />								
										
										</fieldset>
										
									</form>									
									
								</div>
							</article>	
							
						</ion:article>	
					</ion:articles>
				</ion:page>
		
			</div>
			
			<ion:partial view="aside" />
			
		</section>

<ion:partial view="footer" />