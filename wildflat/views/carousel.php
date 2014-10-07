
		<div class="slider">
			<div id="da-slider" class="da-slider">
				<ion:page id="slideshow">
					<ion:articles>
					<div class="da-slide">
						<ion:article>
							<h2><ion:title /></h2>
							<p><ion:subtitle /></p>
							<small><a href="<ion:url />"><ion:lang key="read_more" /></a></small>
						</ion:article>
					</div>
					</ion:articles>
				</ion:page>
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
			</div>		
			<script type="text/javascript" src="<ion:theme_url />js/jquery.cslider.js"></script>
			<script type="text/javascript">
				$(function() {
				
					$('#da-slider').cslider({
						autoplay	: true,
						bgincrement	: 450
					});
				
				});
			</script>
		</div>
		
		
		
		
		
	<!--div class="camera_wrap camera_azure_skin" id="homepage_slider">
		<ion:articles>
			<ion:article>
				<ion:medias type="picture" size="2000,350">
					<div data-src="<ion:media:src />">
						<div class="camera_caption"><ion:title /></div>
					</div>
				</ion:medias>
			</ion:article>
		</ion:articles>
	</div-->