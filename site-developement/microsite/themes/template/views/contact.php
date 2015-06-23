<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>

<div class="container">
  <section class="gutter-bottom-small">
    <ion:articles limit="1">
      <h1 class="hero hero-gutter"><ion:article:title /></h1>
      <ion:breadcrumb separator="" tag="ol" child-tag="li" class="breadcrumb" home="true" article="true"/>
      <div class="row">     
        <ion:article>
          	<div class="col-sm-11 col-md-12">
          		
	        	<div class="col-sm-7 col-md-8 row">
	            	<!-- Start form -->
	            	<ion:form:contact:validation:success is="true">
	                <div id="alert-message" class="alert alert-success">
	                    <ion:lang key="form_alert_success_title" tag="b" />
	                    <ion:lang key="form_alert_success_message" tag="" />
	                </div>
			          </ion:form:contact:validation:success>
			          <ion:form:contact:validation:error is="true" >
	                <div id="alert-message" class="alert alert-danger">
	                    <ion:lang key="form_alert_error_title" tag="b" />
	                    <ion:lang key="form_alert_error_message" tag="" />
	                </div>
            		</ion:form:contact:validation:error>

		            <!-- Contact form -->
		            <form name="contact" action="#message" method="post">
                 <!-- The form name must be set so the tags identify it -->
                  <input type="hidden" name="form" value="contact" />                	
                  <div class="form-group">
                    <!-- Input : name -->
                    <input name="name" type="text" class="input-lg form-control" id="name" value="" placeholder="Name..."/>
                    <ion:form:contact:error:name tag="small" class="error" />
                  </div>
                  <div class="form-group">
                    <!-- Input : Email -->
                    <input name="email" type="text" class="input-lg form-control" id="email" value="<ion:form:contact:field:email />" placeholder="Email..." />
                    <ion:form:contact:error:email tag="small" class="error" />
                  </div>
               		<div class="form-group">
                    <!-- Input : Message -->
                    <textarea name="message" id="message" class="input-lg form-control" rows="7" placeholder="Message..."><ion:form:contact:field:message /></textarea>
                    <ion:form:contact:error:message tag="small" class="error" />
                  </div>
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

<div class="row">
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div id="map" style="overflow:hidden;"><div id="gmap_canvas"></div></div><script type="text/javascript"> function init_map(){var myOptions = {zoom:16,center:new google.maps.LatLng(48.7078014,21.246631500000035),mapTypeId: google.maps.MapTypeId.TERRAIN};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(48.7078014, 21.246631500000035)});infowindow = new google.maps.InfoWindow({content:"<b>NESS KDC, s.r.o.</b><br/>Moldavsk&aacute; cesta 10/B<br/>040 11 Ko&scaron;ice" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
</div>

<ion:partial view="footer" />