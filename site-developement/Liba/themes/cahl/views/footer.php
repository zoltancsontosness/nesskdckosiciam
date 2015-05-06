        <div class="main-content wrapper">
            <h2>Partneri</h2>
            <div class="row">
                <div class="col-md-12">
                    <!-- owl carousel 2 -->
                    <div class="owl-carousel">
                        <ion:page id="sponsors">
                            <ion:medias:media>
                                <div>
                                    <img src="<ion:media:src />" alt="<ion:media:alt />" class="sponsor-logo"/>
                                </div>
                            </ion:medias:media>
                        </ion:page>
                    </div>
                </div>
            </div>
        </div> <!-- end of /.wrapper -->
        <footer class="bottom-grill clearfix">
			<div class="wrapper white">
				<div class="clearfix">
					<div class="container-fluid footer-bg">
				      <div class="row">
				        <div class="col-md-12 text-center">
				          <a href="http://nesskdckosiciam.sk" target="_blank">
				            <img src="<ion:theme_url />img/logo-final.png" alt="Ness KDC Košiciam" class="img-responsive img-logo-nesskdckosiciam">
				          </a>
				          <p> 
				            Webová stránka bola vytvorená v rámci projektu NESS KDC Košiciam
				          </p>
				        </div>
				      </div><!-- /.row -->
				    </div><!-- /.container-fluid -->
				</div>
			</div>
		</footer>
		
		<div id="fb-root"></div>
		<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>

        <!-- <script src="js/main.js"></script> -->
        <script src="<ion:theme_url />js/main.min.js"></script>
		<script src="<ion:theme_url />js/jquery.jaysValidation.plugin.js"></script>
		<script src="<ion:theme_url />js/lightbox.min.js"></script>
		<script src="<ion:theme_url />js/bootstrap-hover-dropdown.js"></script>
		
		<!-- owl carousel init -->
		<script>
			$(document).ready(function() {
				$('form[name="sign-up"]').jaysValidation({
					emptyFieldMessage: '<ion:lang key="form_empty_field" />',
					notValidEmailMessage: '<ion:lang key="form_email_not_valid" />',
					nanMessage: '<ion:lang key="form_numeric_only" />',
					notValidPhoneMessage: '<ion:lang key="form_not_valid_phone" />'
				});

				$('form[name="contact"]').jaysValidation({
					emptyFieldMessage: '<ion:lang key="form_empty_field" />',
					notValidEmailMessage: '<ion:lang key="form_email_not_valid" />',
					nanMessage: '<ion:lang key="form_numeric_only" />',
					notValidPhoneMessage: '<ion:lang key="form_not_valid_phone" />'
				});

			    var navDropdowns = $("ul#nav").children("li").has("ul");
			    navDropdowns.addClass("dropdown").children("a").addClass("dropdown-toggle").attr({"data-toggle": "dropdown", "data-hover": "dropdown", role: "button", "aria-expanded": "false"}).append(' <b class="caret"></b>');
			    navDropdowns.children("ul").addClass("dropdown-menu").attr({role: "menu"});
  

                /** Add to all tables responsive view **/
                $("table").wrap('<div class="table-responsive"></div>');
                $("table").addClass("table");

                $("div.owl-carousel").owlCarousel({
                    loop: true,
                    autoplay: true,
                    responsiveClass: true,
                    responsive:{
                        0:{
                            items:2,
                            slideBy: 2
                        },
                        450:{
                            items:3,
                            slideBy: 3
                        },
                        600:{
                            items:4,
                            slideBy: 4
                        },
                        768:{
                            items:5,
                            slideBy: 5
                        },
                        1200:{
                            items:8,
                            slideBy: 8
                        }
                    }
                });
			});
		</script>
		
		<!-- FB sdk -->
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&appId=360526674097739&version=v2.0";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>

		<!-- Twitter sdk -->
		<script>
			!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)) {
				js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);
			}}(document,"script","twitter-wjs");
		</script>
		
		<!-- Analytics -->
		<script>
		  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

		  ga('create', 'UA-54522591-1', 'auto');
		  ga('send', 'pageview');

		</script>
		
    </body>
</html>