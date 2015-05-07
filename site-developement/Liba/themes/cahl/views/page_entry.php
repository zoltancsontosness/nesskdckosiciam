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
                                    <ion:content />
                                    <ion:form:entry:validation:success is="true">
                                        <!--
                                            Success message
                                            Displayed if the form was successfuly validated
                                        -->
                                        <div id="message" class="success">
                                            <ion:lang key="form_alert_success_title" tag="h4" />
                                            <ion:lang key="form_alert_success_message" tag="p" />
                                        </div>
                                    </ion:form:entry:validation:success>

                                    <ion:form:entry:validation:error is="true" >
                                        <!--
                                            Error message
                                            Displayed if the form doesn't pass the validation
                                        -->
                                        <div id="message" class="error">
                                            <ion:lang key="form_alert_error_title" tag="h4" />
                                            <ion:lang key="form_alert_error_message" tag="p" />
                                        </div>
                                    </ion:form:entry:validation:error>

                                    
                                    <!-- Sign up form -->
                                    <form name="entry" action="#message" method="post">
                                        <h4 class="highlight">Údaje potrebné na prihlásenie dieťaťa:</h4>
                                        <fieldset>

                                            <!-- The form name must be set so the tags identify it -->
                                            <input type="hidden" name="form" value="entry" />
                                             <!-- Input : firstname -->
                                            <p>
                                                <label for="firstname">Meno</label>
                                                <input name="firstname" type="text" class="validate required" id="firstname" value="<ion:form:entry:error:firstname is="true"><ion:form:entry:field:firstname /></ion:form:entry:error:firstname>"<ion:form:entry:error:firstname is="true"> class="error" </ion:form:entry:error:firstname>/>
                                                <ion:form:entry:error:firstname tag="small" class="error" />
                                            </p>

                                            <!-- Input : firstname -->
                                            <p>
                                                <label for="firstname">Meno</label>
                                                <input name="firstname" type="text" class="validate required" id="firstname" value="<ion:form:entry:error:firstname is="true"><ion:form:entry:field:firstname /></ion:form:entry:error:firstname>"<ion:form:entry:error:firstname is="true"> class="error" </ion:form:entry:error:firstname>/>
                                                <ion:form:entry:error:firstname tag="small" class="error" />
                                            </p>
                                            <!-- Input : lastname -->
                                            <p>
                                                <label for="lastname">Priezvisko</label>
                                                <input name="lastname" type="text" class="validate required" id="lastname" value="<ion:form:entry:error:lastname is="true"><ion:form:entry:field:lastname /></ion:form:entry:error:lastname>"<ion:form:entry:error:lastname is="true"> class="error" </ion:form:entry:error:lastname>/>
                                                <ion:form:entry:error:lastname tag="small" class="error" />
                                            </p>
                                            <!-- Input : address -->
                                            <p>
                                                <label for="address">Adresa</label>
                                                <input name="address" type="text" class="validate required" id="address" value="<ion:form:entry:error:address is="true"><ion:form:entry:field:address /></ion:form:entry:error:address>"<ion:form:entry:error:address is="true"> class="error" </ion:form:entry:error:address>/>
                                                <ion:form:entry:error:address tag="small" class="error" />
                                            </p>
                                            <!-- Input : birthday -->
                                            <p>
                                                <label for="birthday">Dátum narodenia</label>
                                                <input name="birthday" type="text" class="validate required" id="birthday" value="<ion:form:entry:error:birthday is="true"><ion:form:entry:field:birthday /></ion:form:entry:error:birthday>"<ion:form:entry:error:birthday is="true"> class="error" </ion:form:entry:error:birthday>/>
                                                <ion:form:entry:error:birthday tag="small" class="error" />
                                            </p>
                                            <h4 class="highlight">Informácie o zákonnom zástupcovi:</h4>
                                            <!-- Input : adult_firstname -->
                                            <p>
                                                <label for="adult_firstname">Meno</label>
                                                <input name="adult_firstname" type="text" class="validate required" id="adult_firstname" value="<ion:form:entry:error:adult_firstname is="true"><ion:form:entry:field:adult_firstname /></ion:form:entry:error:adult_firstname>"<ion:form:entry:error:adult_firstname is="true"> class="error" </ion:form:entry:error:adult_firstname>/>
                                                <ion:form:entry:error:adult_firstname tag="small" class="error" />
                                            </p>
                                            <!-- Input : adult_lastname -->
                                            <p>
                                                <label for="adult_lastname">Priezvisko</label>
                                                <input name="adult_lastname" type="text" class="validate required" id="adult_lastname" value="<ion:form:entry:error:adult_lastname is="true"><ion:form:entry:field:adult_lastname /></ion:form:entry:error:adult_lastname>"<ion:form:entry:error:adult_lastname is="true"> class="error" </ion:form:entry:error:adult_lastname>/>
                                                <ion:form:entry:error:adult_lastname tag="small" class="error" />
                                            </p>
                                            <!-- Input : phone -->
                                            <p>
                                                <label for="phone">Telefónne číslo</label>
                                                <input name="phone" type="text" class="validate required" id="phone" value="<ion:form:entry:error:phone is="true"><ion:form:entry:field:phone /></ion:form:entry:error:phone>"<ion:form:entry:error:phone is="true"> class="error" </ion:form:entry:error:phone>/>
                                                <ion:form:entry:error:phone tag="small" class="error" />
                                            </p>

                                            <!-- Input : Email -->
                                            <p>
                                                <label for="email">Email</label>
                                                <input name="email" type="text" class="validate required email" id="email" value="<ion:form:entry:field:email />"<ion:form:entry:error:email is="true"> class="error" </ion:form:entry:error:email> />
                                                <ion:form:entry:error:email tag="small" class="error" />
                                            </p>
                                             <!-- Input : Rule -->
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="rule" value="true" <ion:form:entry:checkbox:rule value="true" /> />
                                                    Odoslaním tohoto prihlasovacieho formulára sa zaručujem, že moje dieťa je spôsobilé po zdravotnej stránke a 
                                                    môže navštevovať hokejové podujatie, som si vedomý jeho zdravotného stavu a o všetkých zdravotných problémoch 
                                                    som informoval organizátorov hokejového podujatia. Škody spôsobené úmyselným konaním budú prekonzultované s rodičom,
                                                    poškodenou stranou a hradené až do výšky ako určí majiteľ alebo prevádzkovateľ zariadenia, kde táto škoda vznikla.
                                                </label>
                                                <ion:form:entry:error:rule tag="small" class="error" />
                                            </div>
                                            
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