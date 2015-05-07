<ion:partial view="header" />
	<section class="main-content wrapper clearfix">
		<div class="articles left col-xs-12 col-md-12 col-lg-10">
			<ion:page>
				<article class="col-sm-12 clearfix">
					<h3><ion:title /></h3>
					<ion:articles:article>
						<ion:medias type="picture" size="569,356" limit="1">	
						<div class="col-sm-6 col-sm-6 col-md-4 col-lg-3">
							<a href="<ion:article:url />" class="thumbnail">
								<img src="<ion:media:src />" alt="<ion:media:alt />" />
							</a>
							<div class="caption">
								<h4 class="text-center">
									<a href="<ion:article:url />">
										<ion:article:title />
									</a>
								</h4>
							</div>
						</div>						 
						</ion:medias>
					</ion:articles:article>
				</article>
			</ion:page>
					
		</div>

		<ion:partial view="aside" />

	</section>

<ion:partial view="footer" />