      <hr />
      <h2>Partneri</h2>
      <div class="row">
        <div class="col-md-12">
          <!-- owl carousel 2 -->
          <div class="owl-carousel">
            <ion:page id="sponsors">
              <ion:medias:media>
                <div><img src="<ion:media:src />" alt="<ion:media:alt />" class="sponsor-logo"/></div>
              </ion:medias:media>    
            </ion:page>
          </div>
        </div>
      </div>

    <div class="container-fluid footer-bg">
      <div class="row">
        <div class="col-md-12 text-center">
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
    navDropdowns.addClass("dropdown").children("a").addClass("dropdown-toggle").attr({"data-toggle": "dropdown","data-hover": "dropdown", role: "button", "aria-expanded": "false"}).append(' <b class="caret"></b>');
    navDropdowns.children("ul").addClass("dropdown-menu").attr({role: "menu"});

    /** Add to all tables responsive view **/
    $("table").wrap('<div class="table-responsive"></div>');
    $("table").addClass("table");
  </script>
  <script>
    $(document).ready(function(){
      $("div.owl-carousel").owlCarousel({
        loop: true,
        autoplay: true,
        responsiveClass: true,
        responsive:{
          0:{
            items:2
          },
          450:{
            items:3
          },
          600:{
            items:4
          },
          768:{
            items:6
          },
          1200:{
            items:8
          }
        }
      });
    });
  </script>
  <script>
      jQuery('#camera_wrap').camera({
        time: 2000,
        height: '40%' 
      });
    </script>
  </body>
</html>