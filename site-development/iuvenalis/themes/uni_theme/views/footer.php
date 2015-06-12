    <div class="container-fluid footer-bg">
      <div class="row">
        <div class="col-md-12 text-center">
         <div class="logo-social">                       
            <a href="https://www.facebook.com/pages/Musica-Iuvenalis/149072271789737" target="_blank">
               <img src="<ion:theme_url/>assets/images/Facebook_logo.png" alt="Ness KDC Košiciam" class="img-responsive logo-social-fb">
            </a> 
            <a href="https://www.youtube.com/channel/UCylv4nWt4MMA1m2QL1cpA4Q/videos" target="_blank">
               <img src="<ion:theme_url/>assets/images/logo_youtube.png" alt="Ness KDC Košiciam" class="img-responsive logo-social-youtube">
            </a>
          </div>  
          <a href="http://nesskdckosiciam.sk" target="_blank">
            <img src="<ion:theme_url />assets/images/logo-final.png" alt="Ness KDC Košiciam" class="img-responsive img-logo-nesskdckosiciam">
          </a>
          <p> 
            Webová stránka bola vytvorená v rámci projektu NESS KDC Košiciam 
          </p>            
        </div> 
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div><!-- /.container -->  

  <script>
    var navDropdowns = $("ul.nav").children("li").has("ul");
    navDropdowns.addClass("dropdown").children("a").addClass("dropdown-toggle").attr({"data-toggle": "dropdown", "data-hover": "dropdown", role: "button", "aria-expanded": "false"}).append(' <b class="caret"></b>');
    navDropdowns.children("ul").addClass("dropdown-menu").attr({role: "menu"});
  </script>
  
  </body>
</html>