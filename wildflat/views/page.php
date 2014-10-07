<ion:partial view="header" />

	<div class="header-divider"></div>

	<div class="services" id="services">
		<div class="wrap">
			<ion:article>
			<div class="head">
				<span> </span>
				<h3><ion:title /></h3>
			</div>
			
			<div id="text-content-wrapper">
			
				<ion:medias type="picture" tag="ul" class="thumbnails">
					<ion:media>
						<li class="span4">
							<img src="<ion:src size="200" unsharp="false" />" title="<ion:title />" alt="<ion:alt />" />
						</li>
					</ion:media>
				</ion:medias>
				<ion:medias type="picture" limit="1">
					<script>
					jQuery.browser = {};
					(function () {
						jQuery.browser.msie = false;
						jQuery.browser.version = 0;
						if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
							jQuery.browser.msie = true;
							jQuery.browser.version = RegExp.$1;
						}
					})();
					</script>
					<script type="text/javascript" src="<ion:theme_url />js/jquery.fancybox.pack.js"></script>
					<script type="text/javascript" src="<ion:theme_url />js/jquery.mousewheel.min.js"></script>
					<script type="text/javascript">
						$('.fancybox').fancybox({
							helpers : {
								buttons : {}
							}
						});
					</script>
				</ion:medias>
			
				<ion:content />
			
				<div id="social-block">
					<div class="fb-like" data-href="<ion:url lang="true"/>" data-layout="box_count" data-action="like" data-show-faces="true" data-share="false"></div>
					<div class="google">
						<div class="g-plusone" data-size="tall"></div>
					</div>
					<div class="twitter">                              
						<a href="<ion:url lang="true"/>" 
						   class="twitter-share-button" 
						   data-count="vertical" 
						   data-size="small"
						   style="width:39px;">Tweet</a>
					</div>
					
				</div>							
			
			</div>		
			
			</ion:article>
		</div>
	</div>

<ion:partial view="footer" />
