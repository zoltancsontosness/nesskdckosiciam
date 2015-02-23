<ion:partial view="header" />

  <!-- Content START -->
  <div class="divPanel notop nobottom">
    <div class="row-fluid">
      <div class="span12">
        <h1><ion:page:title /></h1>         
        <hr>
        <div id="headerSeparator2"></div>						
      </div>
    </div>
  </div>

  <div class="contentArea">
    <div class="divPanel notop page-content"> 
      <div class="row-fluid">
        <div class="span12" id="divMain">

  <!--Edit Main Content here-->
  <div class="row-fluid" style="margin-bottom: 30px;">
  <ion:page:articles>
    <ion:article:content />
    <div style="position: relative; width: 100%; height: 20px; clear: both;"></div>
  </ion:page:articles>
  </div>

  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
  <div style="overflow:hidden;height:400px;width:100%;">
    <div id="gmap_canvas" style="height:400px;width:100%;background:none!important"></div>
  </div>
  <script type="text/javascript"> function init_map(){var myOptions = {zoom:15,center:new google.maps.LatLng(48.7467902,21.244729099999972),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(48.7467902, 21.244729099999972)});infowindow = new google.maps.InfoWindow({content:"<b>Informa&#269;n&yacute; a vzdel&aacute;vac&iacute; in&scaron;tit&uacute;t</b><br/>Lomnick&aacute; 2<br/>040 01 Ko&scaron;ice" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
          
        </div>
      </div>
<!--End Main Content Area here-->
			
<!--Edit Footer here-->
    <div id="footerInnerSeparator"></div>
    </div>
  </div>

<!-- Content END -->
  
<!-- This includes the footer view -->
<ion:partial view="footer" />