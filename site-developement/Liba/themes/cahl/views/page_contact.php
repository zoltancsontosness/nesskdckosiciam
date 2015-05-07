<ion:partial view="header" />
	<section class="main-content wrapper clearfix">
		<div class="articles left col-xs-12 col-md-12 col-lg-10">
			<ion:page>
				<ion:articles:article>
					<article class="col-sm-12 clearfix">
						<h3><ion:title /></h3>
						<ion:content />

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

                    <!-- Input : name -->
                    <p>
                        <label for="name">Meno</label>
                        <input name="name" type="text" class="validate required" id="name" value="<ion:form:contact:error:name is="true"><ion:form:contact:field:name /></ion:form:contact:error:name>"<ion:form:contact:error:name is="true"> class="error" </ion:form:contact:error:name>/>
                        <ion:form:contact:error:name tag="small" class="error" />
                    </p>
                    <!-- Input : lastname -->
                    <p>
                        <label for="phone">Telefónne číslo</label>
                        <input name="phone" type="text" class="validate required" id="phone" value="<ion:form:contact:error:phone is="true"><ion:form:contact:field:phone /></ion:form:contact:error:phone>"<ion:form:contact:error:phone is="true"> class="error" </ion:form:contact:error:phone>/>
                        <ion:form:contact:error:phone tag="small" class="error" />
                    </p>

                    <!-- Input : Email -->
                    <p>
                        <label for="email">Email</label>
                        <input name="email" type="text" class="validate required email" id="email" value="<ion:form:contact:field:email />"<ion:form:contact:error:email is="true"> class="error" </ion:form:contact:error:email> />
                        <ion:form:contact:error:email tag="small" class="error" />
                    </p>
                    <!-- Input : Message -->
					<p>
						<label for="message"><ion:lang key="form_label_message" /></label>
						<textarea name="message" id="message" class="validate required" rows="7" /><ion:form:contact:error:message is="true"> class="error" </ion:form:contact:error:message><ion:form:contact:field:message /></textarea>
						<ion:form:contact:error:message tag="small" class="error" />
					</p>
                    
                    <input type="submit" class="red-background white" value="<ion:lang key="form_button_send" />" />

                </fieldset>

            </form>
					</article>	
				</ion:articles:article>
			</ion:page>
        </div>
		<ion:partial view="aside" />
	</section>

<ion:partial view="footer" />