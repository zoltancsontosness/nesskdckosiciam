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
      <div id="gmap-wrapper">
        <div id="gmap_canvas"></div>
      </div>
      <script type="text/javascript">
        function init_map() {
          var myOptions = {
            zoom: 15,
            center: new google.maps.LatLng(48.7184123, 21.21552930000007),
            mapTypeId: google.maps.MapTypeId.ROADMAP
          };
          map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);
          marker = new google.maps.Marker({
            map: map,
            position: new google.maps.LatLng(48.7184123, 21.21552930000007)
          });
          infowindow = new google.maps.InfoWindow({
            content: "<b>Dom &#318;udov&eacute;ho tanca</b><br/> Starozagorsk&aacute; 10 <br/> 040 23  Ko&scaron;ice"
          });
          google.maps.event.addListener(marker, "click", function () {
            infowindow.open(map, marker);
          });
          infowindow.open(map, marker);
        }
        google.maps.event.addDomListener(window, 'load', init_map);
      </script>
      <br />
    </div>
  </div>

  <div class="row">
    <h2 class="text-center">Kontaktný formulár</h2>

    <div class="col-md-7 col-md-offset-2">
      <ion:partial view="view_helpers/form_contact" />
    </div>
  </div>

</ion:page>

<ion:partial view="footer" />