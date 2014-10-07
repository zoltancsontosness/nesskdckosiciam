<ion:page id="novinky">
<div class="border"></div>
<div class="row">
	<div class="col-md-12">
	<!-- Image blocks starts -->
		<ul class="hover-block">
			<ion:articles>
				<ion:article>
					<li>
						<a href="<ion:article:url />">
						<!-- Image -->
						<ion:medias type="picture">
							<ion:media>
								<img class="img-responsive" src="<ion:media:src />" alt="" /> 
							</ion:media>
						</ion:medias>
							<!-- Content with background color Class -->
							<div class="hover-content b-orange">
								<h6><ion:title /></h6>
								<!--ion:content paragraph="1" / Content with background color Class -->
							</div>
						</a>
					</li>    
				</ion:article>	
			</ion:articles>
		</ul>
		<!-- Image blocks ends -->
	</div>
</div>
</ion:page>
<div class="clearfix"></div>

<!--script>

$(function() {

$('ul.hover-block li').hover(function(){

$(this).find('.hover-content').animate({top:'-3px'},{queue:false,duration:500});

}, function(){

$(this).find('.hover-content').animate({top:'130px'},{queue:false,duration:500});

});

});
</script-->