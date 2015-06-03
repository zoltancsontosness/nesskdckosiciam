<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>

<div class="container">
  <section>
    <ion:articles limit="1">
      <h1 class="hero gutter-bottom-small"><ion:article:title /></h1>
      <div class="row">     
        <ion:article>
          	<div class="col-sm-11 col-md-12">
          		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div id="map" style="overflow:hidden;"><div id="gmap_canvas"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type="text/javascript"> function init_map(){var myOptions = {zoom:16,center:new google.maps.LatLng(48.7078014,21.246631500000035),mapTypeId: google.maps.MapTypeId.TERRAIN};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(48.7078014, 21.246631500000035)});infowindow = new google.maps.InfoWindow({content:"<b>NESS KDC, s.r.o.</b><br/>Moldavsk&aacute; cesta 10/B<br/>040 11 Ko&scaron;ice" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
	        	<div class="col-sm-7 col-md-8">
	        		<!--h2>Tell us something ...</h2-->
	            	<!-- Start form -->
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
	                    <!-- The form name must be set so the tags identify it -->
	                    <input type="hidden" name="form" value="contact" />

	                	<!-- Input : name -->
	                    <input name="name" type="text" class="input-lg form-control form-group" id="name" value="<ion:form:contact:error:name is="true"><ion:form:contact:field:name /></ion:form:contact:error:name>"<ion:form:contact:error:name is="true"> class="error" </ion:form:contact:error:name> placeholder="Name..."/>
	                    <ion:form:contact:error:name tag="small" class="error" />
	               		<!-- Input : Email -->
	                    <input name="email" type="text" class="input-lg form-control form-group" id="email" value="<ion:form:contact:field:email />"<ion:form:contact:error:email is="true"> class="error" </ion:form:contact:error:email> placeholder="Email..." />
	                    <ion:form:contact:error:email tag="small" class="error" />
	                	<!-- Input : Message -->
						<textarea name="message" id="message" class="input-lg form-control form-group" rows="7" placeholder="Message..." /><ion:form:contact:error:message is="true"> class="error" </ion:form:contact:error:message><ion:form:contact:field:message /></textarea>
						<ion:form:contact:error:message tag="small" class="error" />

	                    <input type="submit" class="btn btn-lg btn-block btn-green" value="Send" />
		            </form>
	            </div>
	            <div class="col-sm-5 col-md-4">
	             	<ion:article:content />
	            </div>   
	        </div>
        </ion:article>
      </div>      
    </ion:articles>    
  </section>
</div>

<ion:partial view="footer" />