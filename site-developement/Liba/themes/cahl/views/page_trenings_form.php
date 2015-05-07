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
                                    <ion:form:trening_form:validation:success is="true">
                                        <!--
                                            Success message
                                            Displayed if the form was successfuly validated
                                        -->
                                        <div id="message" class="success">
                                            <ion:lang key="form_alert_success_title" tag="h4" />
                                            <ion:lang key="form_alert_success_message" tag="p" />
                                        </div>
                                    </ion:form:trening_form:validation:success>

                                    <ion:form:trening_form:validation:error is="true" >
                                        <!--
                                            Error message
                                            Displayed if the form doesn't pass the validation
                                        -->
                                        <div id="message" class="error">
                                            <ion:lang key="form_alert_error_title" tag="h4" />
                                            <ion:lang key="form_alert_error_message" tag="p" />
                                        </div>
                                    </ion:form:trening_form:validation:error>

                                    
                                    <!-- Sign up form -->
                                    <form name="trening_form" action="#message" method="post">
                                        <fieldset>

                                            <!-- The form name must be set so the tags identify it -->
                                            <input type="hidden" name="form" value="trening_form" />

                                            <h4 class="highlight">Mám záujem o:</h4>
                                            <!-- Input : type -->
                                            <label for="type">Typ tréningu</label>
                                            <select class="validate required" name="type" id="type">
                                                <option value="Brankársky tréning" <ion:form:trening_form:select:type value="Brankársky tréning" default="true" />>Brankársky tréning</option>
                                                <option value="Tréning strelca" <ion:form:trening_form:select:type value="Brankársky tréning" />>Tréning strelca</option>
                                            </select>

                                            <h4 class="highlight">Údaje potrebné na prihlásenie dieťaťa:</h4>
                                            <!-- Input : firstname -->
                                            <p>
                                                <label for="firstname">Meno</label>
                                                <input name="firstname" type="text" class="validate required" id="firstname" value="<ion:form:trening_form:error:firstname is="true"><ion:form:trening_form:field:firstname /></ion:form:trening_form:error:firstname>"<ion:form:trening_form:error:firstname is="true"> class="error" </ion:form:trening_form:error:firstname>/>
                                                <ion:form:trening_form:error:firstname tag="small" class="error" />
                                            </p>
                                            <!-- Input : lastname -->
                                            <p>
                                                <label for="lastname">Priezvisko</label>
                                                <input name="lastname" type="text" class="validate required" id="lastname" value="<ion:form:trening_form:error:lastname is="true"><ion:form:trening_form:field:lastname /></ion:form:trening_form:error:lastname>"<ion:form:trening_form:error:lastname is="true"> class="error" </ion:form:trening_form:error:lastname>/>
                                                <ion:form:trening_form:error:lastname tag="small" class="error" />
                                            </p>
                                            <!-- Input : address -->
                                            <p>
                                                <label for="address">Adresa</label>
                                                <input name="address" type="text" class="validate required" id="address" value="<ion:form:trening_form:error:address is="true"><ion:form:trening_form:field:address /></ion:form:trening_form:error:address>"<ion:form:trening_form:error:address is="true"> class="error" </ion:form:trening_form:error:address>/>
                                                <ion:form:trening_form:error:address tag="small" class="error" />
                                            </p>
                                            <!-- Input : birthday -->
                                            <p>
                                                <label for="birthday">Dátum narodenia</label>
                                                <input name="birthday" type="text" class="validate required" id="birthday" value="<ion:form:trening_form:error:birthday is="true"><ion:form:trening_form:field:birthday /></ion:form:trening_form:error:birthday>"<ion:form:trening_form:error:birthday is="true"> class="error" </ion:form:trening_form:error:birthday>/>
                                                <ion:form:trening_form:error:birthday tag="small" class="error" />
                                            </p>
                                             <!-- Input : phone -->
                                            <p>
                                                <label for="phone">Telefónne číslo</label>
                                                <input name="phone" type="text" class="validate required" id="phone" value="<ion:form:trening_form:error:phone is="true"><ion:form:trening_form:field:phone /></ion:form:trening_form:error:phone>"<ion:form:trening_form:error:phone is="true"> class="error" </ion:form:trening_form:error:phone>/>
                                                <ion:form:trening_form:error:phone tag="small" class="error" />
                                            </p>

                                            <!-- Input : Email -->
                                            <p>
                                                <label for="email">Email</label>
                                                <input name="email" type="text" class="validate required email" id="email" value="<ion:form:trening_form:field:email />"<ion:form:trening_form:error:email is="true"> class="error" </ion:form:trening_form:error:email> />
                                                <ion:form:trening_form:error:email tag="small" class="error" />
                                            </p>
                                            
                                            <h4 class="highlight">Informácie o zákonnom zástupcovi:</h4>
                                            <!-- Input : adult_firstname -->
                                            <p>
                                                <label for="adult_firstname">Meno</label>
                                                <input name="adult_firstname" type="text" class="validate required" id="adult_firstname" value="<ion:form:trening_form:error:adult_firstname is="true"><ion:form:trening_form:field:adult_firstname /></ion:form:trening_form:error:adult_firstname>"<ion:form:trening_form:error:adult_firstname is="true"> class="error" </ion:form:trening_form:error:adult_firstname>/>
                                                <ion:form:trening_form:error:adult_firstname tag="small" class="error" />
                                            </p>
                                            <!-- Input : adult_lastname -->
                                            <p>
                                                <label for="adult_lastname">Priezvisko</label>
                                                <input name="adult_lastname" type="text" class="validate required" id="adult_lastname" value="<ion:form:trening_form:error:adult_lastname is="true"><ion:form:trening_form:field:adult_lastname /></ion:form:trening_form:error:adult_lastname>"<ion:form:trening_form:error:adult_lastname is="true"> class="error" </ion:form:trening_form:error:adult_lastname>/>
                                                <ion:form:trening_form:error:adult_lastname tag="small" class="error" />
                                            </p>
                                             <!-- Input : Rule -->
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="rule" value="true" <ion:form:trening_form:checkbox:rule value="true" /> />
                                                    Odoslaním tohoto prihlasovacieho formulára sa zaručujem, že moje dieťa je spôsobilé po zdravotnej stránke a 
                                                    môže navštevovať hokejové podujatie, som si vedomý jeho zdravotného stavu a o všetkých zdravotných problémoch 
                                                    som informoval organizátorov hokejového podujatia. Škody spôsobené úmyselným konaním budú prekonzultované s rodičom,
                                                    poškodenou stranou a hradené až do výšky ako určí majiteľ alebo prevádzkovateľ zariadenia, kde táto škoda vznikla.
                                                </label>
                                                <ion:form:trening_form:error:rule tag="small" class="error" />
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