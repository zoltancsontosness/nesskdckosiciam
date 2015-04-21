<ion:partial view="header" />

		<section class="main-content wrapper clearfix">
			<div class="articles left">
				<!-- Sign up text -->
				<ion:page id="10">
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

									<ion:form:contact:validation:success is="true">
										<!--
											Success message
											Displayed if the form was successfuly validated
										-->									
										<div id="message" class="success">
											<ion:lang key="form_alert_success_title" tag="h4" />
											<ion:lang key="form_alert_success_message" tag="p" />
										</div>
									</ion:form:contact:validation:success>

									<ion:form:contact:validation:error is="true" >
										<!--
											Error message
											Displayed if the form doesn't pass the validation
										-->
										<div id="message" class="error">
											<ion:lang key="form_alert_error_title" tag="h4" />
											<ion:lang key="form_alert_error_message" tag="p" />
										</div>										
									</ion:form:contact:validation:error>
									
									<!-- Get the pictures only -->
									<ion:medias type="picture" size="569,356">							 
										<img src="<ion:media:src />" alt="<ion:media:alt />" />
									</ion:medias>						
									<ion:content />
									
									<!-- Sign up form -->
									<form name="contact" action="#message" method="post">
										<fieldset>
										
											<!-- The form name must be set so the tags identify it -->
											<input type="hidden" name="form" value="contact" />

											<!-- Input : Name -->
											<p>
												<label for="name"><ion:lang key="form_label_name" /></label>
												<input name="name" type="text" class="validate required" id="name" value="<ion:form:contact:error:name is="true"><ion:form:contact:field:name /></ion:form:contact:error:name>"<ion:form:contact:error:name is="true"> class="error" </ion:form:contact:error:name>/>
												<ion:form:contact:error:name tag="small" class="error" />
											</p>
											
											<!-- Input : Email -->
											<p>
												<label for="email"><ion:lang key="form_label_email" /></label>
												<input name="email" type="text" class="validate required email" id="email" value="<ion:form:contact:field:email />"<ion:form:contact:error:email is="true"> class="error" </ion:form:contact:error:email> />
												<ion:form:contact:error:email tag="small" class="error" />
											</p>

											<!-- Input : Topic -->
											<p>
												<label for="topic"><ion:lang key="form_label_topic" /></label>
												<input name="topic" type="text" class="validate required" id="topic" value="<ion:form:contact:field:topic />"<ion:form:contact:error:topic is="true"> class="error" </ion:form:contact:error:topic> />
												<ion:form:contact:error:topic tag="small" class="error" />
											</p>

											<!-- Input : Message -->
											<p>
												<label for="message"><ion:lang key="form_label_message" /></label>
												<textarea name="message" id="message" class="validate required" rows="7" placeholder="<ion:lang key="form_label_message" />"<ion:form:contact:error:message is="true"> class="error" </ion:form:contact:error:message>><ion:form:contact:field:message /></textarea>
												<ion:form:contact:error:message tag="small" class="error" />
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