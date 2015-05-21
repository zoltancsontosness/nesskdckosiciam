<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>

<div class="container">
  <section id="contacts">
    <ion:articles limit="1">
      <h1 class="hero"><ion:article:title /></h1>
      <div class="row">     
        <ion:article>
          	<div class="col-sm-11 col-md-12">
          		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div id="map" style="overflow:hidden;"><div id="gmap_canvas"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type="text/javascript"> function init_map(){var myOptions = {zoom:17,center:new google.maps.LatLng(48.7078014,21.246631500000035),mapTypeId: google.maps.MapTypeId.TERRAIN};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(48.7078014, 21.246631500000035)});infowindow = new google.maps.InfoWindow({content:"<b>NESS KDC, s.r.o.</b><br/>Moldavsk&aacute; cesta 10/B<br/>040 11 Ko&scaron;ice" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
	        	<div class="col-sm-7 col-md-8">
	        		<h2>Tell us something ...</h2>
	            	<form action="">
	            		<input type="text" class="input-lg form-control form-group" placeholder="Name...">
	            		<input type="text" class="input-lg form-control form-group" placeholder="Email...">
	            		<textarea type="text" class="input-lg form-control form-group" placeholder="Message..."></textarea>

	            		<button type="submit" class="btn btn-lg btn-block btn-green">Send</button>
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

<ion:partial view="footer-no-map" />