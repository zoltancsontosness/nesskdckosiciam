  <div id="footerOuterSeparator"></div>
  <div id="divFooter" class="footerArea shadow">
    <div class="divPanel">
      <div class="row-fluid">
        <div class="span6">
          <p class="copyright"> 
            Copyright © Ness KDC Košiciam
          </p>
          <div class="social_bookmarks">                    
            <a href="#"><div class="icon_twitter"></div></a>
            <a href="#"><div class="icon_facebook"></div></a>
            <a href="#"><div class="icon_google"></div></a>
            <a href="#"><div class="icon_pinterest"></div></a>                   
          </div>
        </div>
        <div class="span6" style="text-align: right;">
          <img src="<ion:theme_url />assets/images/logo-final.png" alt="Ness KDC Košiciam" class="img-responsive">
        </div>  
      </div>
    </div>
  </div>

  </div>
  
  <br /><br /><br />

<script src="<ion:theme_url />assets/scripts/jquery.min.js" type="text/javascript"></script> 
<script src="<ion:theme_url />assets/scripts/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<ion:theme_url />assets/scripts/default.js" type="text/javascript"></script>

<script src="<ion:theme_url />assets/scripts/carousel/jquery.carouFredSel-6.2.0-packed.js" type="text/javascript"></script><script type="text/javascript">$('#list_photos').carouFredSel({ responsive: true, width: '100%', scroll: 2, items: {width: 320,visible: {min: 2, max: 6}} });</script>
<script src="<ion:theme_url />assets/scripts/camera/scripts/camera.min.js" type="text/javascript"></script>
<script src="<ion:theme_url />assets/scripts/easing/jquery.easing.1.3.js" type="text/javascript"></script>
<script type="text/javascript">function startCamera() {$('#camera_wrap').camera({ fx: 'simpleFade, mosaicSpiralReverse', time: 2000, loader: 'none', playPause: false, navigation: true, height: '38%', pagination: true });}$(function(){startCamera()});</script>

<script src="<ion:theme_url />assets/scripts/wookmark/js/jquery.wookmark.js" type="text/javascript"></script>
<script type="text/javascript">$(window).load(function () {var options = {autoResize: true,container: $('#gridArea'),offset: 10};var handler = $('#tiles li');handler.wookmark(options);$('#tiles li').each(function () { var imgm = 0; if($(this).find('img').length>0)imgm=parseInt($(this).find('img').not('p img').css('margin-bottom')); var newHeight = $(this).find('img').height() + imgm + $(this).find('div').height() + $(this).find('h4').height() + $(this).find('p').not('blockquote p').height() + $(this).find('iframe').height() + $(this).find('blockquote').height() + 5;if($(this).find('iframe').height()) newHeight = newHeight+15;$(this).css('height', newHeight + 'px');});handler.wookmark(options);handler.wookmark(options);});</script>
<script src="<ion:theme_url />assets/scripts/yoxview/yox.js" type="text/javascript"></script>
<script src="<ion:theme_url />assets/scripts/yoxview/jquery.yoxview-2.21.js" type="text/javascript"></script>
<script type="text/javascript">$(document).ready(function () {$('.yoxview').yoxview({autoHideInfo:false,renderInfoPin:false,backgroundColor:'#ffffff',backgroundOpacity:0.8,infoBackColor:'#000000',infoBackOpacity:1});$('.yoxview a img').hover(function(){$(this).animate({opacity:0.7},300)},function(){$(this).animate({opacity:1},300)});});</script>

<script> 
  $( "ul.nav" ).children( "li" ).has( "ul" ).addClass( "dropdown" );
  $( "ul.nav" ).children( "li" ).children( "a" ).addClass( "dropdown-toggle" );
  $( "ul.nav" ).children( "li" ).has( "ul" ).children( "a" ).append( ' <b class="caret"></b>' );
  $( "ul.nav" ).has( "ul" ).children().children( "ul" ).addClass( "dropdown-menu" );
</script>

</body>
</html>