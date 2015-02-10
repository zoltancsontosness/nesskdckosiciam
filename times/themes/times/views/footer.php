
		</div><!-- /Content wrapper -->
		
		<!-- ===========================================
        	 Footer 
			 =========================================== -->
		<footer class="clearfix">
			<div class="wrapper">
            <ion:page id="11">
				<ion:articles limit="1">
					<ion:article>
						<h3><ion:title /></h3>
						<ion:content />
					</ion:article>
				</ion:articles>
			</ion:page>
			</div>
		</footer><!-- /footer -->
 
		<!-- ===========================================
        	 Info Footer 
			 =========================================== -->		
		<div id="small-footer" class="clearfix">
			<div class="wrapper">
				built on top of: <a href="http://ionizecms.com">ionizecms</a> - by <a href="http://gigup.eu">gigUp, s.r.o.</a> | support: <a href="mailto:support@gigup.eu">support@gigup.eu</a>
			</div>
		</div>
		

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>')</script>
		<script src="<ion:theme_url />javascript/vendor/jquery.jaysCarousel.plugin.js"></script>

        <script src="<ion:theme_url />javascript/plugins.js"></script>
        <script src="<ion:theme_url />javascript/vendor/jquery.fancybox.pack.js"></script>
        <script src="<ion:theme_url />javascript/main.js"></script>
		
		<!-- Facebook SDK -->
		<div id="fb-root"></div>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&appId=391281794370580&version=v2.0";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>
			
		<!-- Twitter SDK -->
		<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>		
		
		<!-- Disqus -->
		<script type="text/javascript">
			var disqus_shortname = 'times-theme';
			(function() {
				var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
				dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
				(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
			})();
		</script>
   		
		<ion:google_analytics />		
		
    </body>
</html>
