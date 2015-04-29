<ion:partial view="header" />

		<section class="main-content wrapper clearfix">
			<div class="articles left col-xs-12 col-md-12 col-lg-10">
				<!-- Sign up text -->
				<ion:page>
					<ion:articles limit="1">
						<ion:article>

							<article class="col-sm-12 clearfix">
								<h3><ion:title /></h3>
								<div class="text silver left col-xs-12 col-sm-12 col-md-12">

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