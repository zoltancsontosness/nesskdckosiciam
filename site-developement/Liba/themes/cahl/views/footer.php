		<footer class="bottom-grill clearfix">
			<div class="wrapper white">
				<div class="clearfix">
					<!-- Info -->
					<ion:page id="14">
					<ul class="links">
						<ion:articles>
						<li><a href="<ion:article:url />"><ion:article:title /></a></li>
						</ion:articles>
					</ul>
					</ion:page>
					<!-- Links -->
					<ion:page id="13">
					<ul class="links">
						<ion:articles>
						<li><a href="<ion:article:url />"><ion:article:title /></a></li>
						</ion:articles>
					</ul>
					</ion:page>
				</div>
				<div class="copyright white center"><ion:lang key="copyright" /></div>
				<a href="<ion:home_url />" id="logo-small" class="center">
					<img src="<ion:theme_url />img/cahl-logo-small.png" alt="<ion:site_title />" />
				</a>
			</div>
		</footer>
		
		<div id="small-footer" class="clearfix">
			Designed & developed by <a class="red" href="http://www.gigup.eu">gigUp, s.r.o.</a>, in 2014, title photo copyright: <a class="red" href="http://photo.elsoar.com">http://photo.elsoar.com</a>
		</div>
		
		<div id="fb-root"></div>

		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
		<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>

        <!-- <script src="js/main.js"></script> -->
        <script src="<ion:theme_url />js/main.min.js"></script>
		<script src="<ion:theme_url />js/jquery.jaysValidation.plugin.js"></script>
		
		<!-- Countdown init -->
		<script>
			$(document).ready(function() {
				// Countdown
				var translations = {
					dayLabel : '<ion:lang key="countdown_days" />',
					hrLabel : '<ion:lang key="countdown_hours" />',
					minLabel : '<ion:lang key="countdown_mins" />',
					secLabel : '<ion:lang key="countdown_secs" />'
				};
				Cahl.CountDown.init('#countdown-timer', new Date('2015/09/01 16:00'), translations);
				// Form pre validation
				
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
		
		<!-- Discuss -->
		<script type="text/javascript">
			var disqus_shortname = 'cahlsk';
			(function() {
				var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
				dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
				(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
			})();
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