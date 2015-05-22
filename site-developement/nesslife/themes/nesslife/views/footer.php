  <!-- Footer -->
  <footer>
    <a href="#" target="_blank">NESS KDC, s.r.o.</a>
  </footer>
  </div><!-- /.container -->   
      
  <script type="text/javascript">
    $(document).ready(function () {
      $(".responsive-calendar").responsiveCalendar({
        time: '2015-05',
        events: {
          "2015-04-30": {"url": "http://w3widgets.com/responsive-slider"},
          "2015-04-26": {"url": "http://w3widgets.com"}, 
          "2015-05-03": {}, 
          "2015-06-12": {}
        }
      });
    });    
          
    $( document ).ready( function() {
      $('.responsive-slider').responsiveSlider({
        autoplay: true,
        interval: 3000,
        transitionTime: 300
      });
    });
  </script>
 
  <script>
    var navDropdowns = $("ul.nav").children("li").has("ul");
    navDropdowns.addClass("dropdown").children("a").addClass("dropdown-toggle").attr({"data-toggle": "dropdown", "data-hover": "dropdown", role: "button", "aria-expanded": "false"}).append(' <b class="caret"></b>');
    navDropdowns.children("ul").addClass("dropdown-menu").attr({role: "menu"});
  </script>
  
  </body>
</html>