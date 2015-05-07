<ion:partial view="header" />
	<section class="main-content wrapper clearfix">
		<div class="articles left col-xs-12 col-md-12 col-lg-10">
			<ion:page>
				<article class="col-sm-12 clearfix">
					<ion:article>
						<h3><ion:title /></h3>
						<ion:medias type="picture" size="569,356">	
						<div class="col-sm-6 col-sm-6 col-md-4 col-lg-3">
							<a href="<ion:media:src />" class="thumbnail" data-lightbox="image-1" data-title="<ion:media:title />">
								<img src="<ion:media:src />" alt="<ion:media:alt />" />
							</a>
							<div class="caption">
								<ion:media:title tag="h4" class="text-center"/>
							</div>
						</div>						 
						</ion:medias>
					</ion:article>
				</article>
			</ion:page>
		</div>

		<ion:partial view="aside" />

	</section>

<ion:partial view="footer" />