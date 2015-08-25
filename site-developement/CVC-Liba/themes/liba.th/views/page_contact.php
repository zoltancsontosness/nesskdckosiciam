<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <div class="row">
    <ion:articles:article>
      <div class="col-md-12 text-center">
        <ion:content/>
      </div>
    </ion:articles:article>
  </div>

  <div class="row">
    <div class="col-md-12 padding-0">
      <hr />
      <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
      <div style="overflow:hidden;height:400px;width:100%;"><div id="gmap_canvas" style="height:400px;width:100%;"></div>
      <style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
      <a class="google-map-code" href="http://www.map-embed.com" id="get-map-data">map-embed.com</a>
      </div>
      <script type="text/javascript"> function init_map(){var myOptions = {zoom:14,center:new google.maps.LatLng(48.7160908,21.20893920000003),mapTypeId: 
      google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker
      ({map: map,position: new google.maps.LatLng(48.7160908, 21.20893920000003)});infowindow = new google.maps.InfoWindow
      ({content:"<b>Elokovan&eacute; pracovisko </b><br/>Janigova 2, Ko&scaron;ice<br/> Ko&scaron;ice" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});
      infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
      <br />
    </div>
  </div>
</ion:page>

<ion:partial view="footer" />