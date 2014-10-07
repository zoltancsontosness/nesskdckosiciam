			<div class="footer">
				<div class="wrap"> 
				<div class="footer-left">
					<ion:page id="thank-you-for-your-visit">
						<ion:page:subtitle tag="h2" />
					</ion:page>
				</div>
				<div class="footer-right">
					<ul>
						<ion:page id="social-content">
							<ion:element:social>
								<ion:items>
								<li>
									<a href="<ion:provider-url:value" />">
										<img src="<ion:theme_url />images/social/<ion:provider-ico:value />.png" alt="<ion:provider:value />" />
									</a>
								</li>									
								</ion:items>
							</ion:element:social>
						</ion:page>
						<div class="clear"> </div>
					</ul>		
				</div>
				<div class="clear"> </div>
				</div>
			</div>
			<div class="copy-right">
				<ion:page id="footer">
					<small><ion:page:subtitle /></small>
				</ion:page>				
				<div class="wrap">
					<a href="#move-top" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
			</div>
		<script> 
			addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
			$(function() {
				$('nav#menu-left').mmenu();
			});
		</script>		
		
		<script>
			jQuery.browser = {};
			(function () {
				jQuery.browser.msie = function() { return false };
				jQuery.browser.version = 0;
				if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
					jQuery.browser.msie = true;
					jQuery.browser.version = RegExp.$1;
				}
			})();
		</script>		
		
		<script type="text/javascript" src="<ion:theme_url />js/move-top.js"></script>
		<script src="<ion:theme_url />js/camera.js"></script>		
		<script type="text/javascript">
				$(function() {
				  $('a[href*=#]:not([href=#])').click(function() {
					if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
			
					  var target = $(this.hash);
					  target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
					  if (target.length) {
						$('html,body').animate({
						  scrollTop: target.offset().top
						}, 1000);
						return false;
					  }
					}
				  });
				});
		</script>
		<script type="text/javascript">
			$(document).ready(function() {
				
				$('#toTopHover').on('click', function() {
					$('html, body').animate({
						scrollTop: 0
					});
				});
								
			});
		</script>		
		
		<div id="fb-root"></div>
		<script>(function(d, s, id) {
			  var js, fjs = d.getElementsByTagName(s)[0];
			  if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&appId=1460324120880238&version=v2.0";
			  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>
		
		<script>
        !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)) {
            js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);
        }}(document,"script","twitter-wjs");
		</script>		
		
		<script type="text/javascript" src="https://apis.google.com/js/plusone.js" gapi_processed="true"></script>
		
		<script type="text/javascript">
			$(function() {
			/*
				$('#homepage_slider').camera({
					thumbnails: true
				});
			*/
			});
		</script>		
		
		<ion:google_analytics />
		
	</body>
</html>