	<ion:page id="slideshow">
	<div class="camera_wrap camera_azure_skin" id="homepage_slider">
		<ion:articles>
			<ion:article>
				<ion:medias type="picture">
					<ion:media>
						<div data-src="<ion:media:src />">
							<div class="camera_caption"><ion:article:title /></div>
						</div>
					</ion:media>
				</ion:medias>
			</ion:article>
		</ion:articles>
	</div>
	</ion:page>
  
  <div class="cl"></div>

<script>
$(document).ready(function(){
	jQuery('.camera_wrap').camera();
});
</script>