<ion:user:logged is="true">
  <!-- Footer -->
  <footer>
    <a href="#" target="_blank">NESS KDC, s.r.o.</a>
  </footer>
  </div><!-- /.container -->   
 
  <script>
    var navDropdowns = $("ul.nav").children("li").has("ul");
    navDropdowns.addClass("dropdown").children("a").addClass("dropdown-toggle").attr({"data-toggle": "dropdown", "data-hover": "dropdown", role: "button", "aria-expanded": "false"}).append(' <b class="caret"></b>');
    navDropdowns.children("ul").addClass("dropdown-menu").attr({role: "menu"});
  </script>
</ion:user:logged>
  </body>
</html>