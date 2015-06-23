<section id="stories" class="gutter-bottom">
	<ion:articles type="stories">
		<ion:article>
			<div class="gutter-bottom row">
				<div class="col-sm-11">
					<div class="row">
						<ion:medias type="picture" range="1,4" size="360,360" method="adaptive">
							<div class="item col-xs-6 col-sm-3">
								<a href="<ion:base_url />success-stories/<ion:media:link />">
									<div class="overlay overlay-<ion:media:description />">
										<p class="perex"><ion:media:title /></p>
									</div>
									<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive" />
								</a>
							</div>
						</ion:medias>
					</div>
					<div class="row">
						<ion:medias type="picture" range="5,6" size="360,360" method="adaptive">
							<div class="item col-xs-6 col-sm-3">
								<a href="<ion:base_url />success-stories/<ion:media:link />">
									<div class="overlay overlay-<ion:media:description />">
										<p class="perex"><ion:media:title /></p>
									</div>
									<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
								</a>
							</div>
						</ion:medias>
						<div class=" col-xs-12 col-sm-6">
							<h1 class="hero">
								<a href="<ion:base_url />success-stories">
									<ion:article:title />
								</a>
							</h1>
							<span class="border"></span>
						</div>
					</div>
				</div>
			</div>
		</ion:article>
	</ion:articles>

	<ion:articles type="labs">
		<ion:article>
			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-5">
					<ion:article:content />
				</div>
				<div class="logos col-xs-12 col-sm-12 col-md-5 col-md-offset-1">
					<ion:medias type="picture" limit="1">
						<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
					</ion:medias>
				</div>
			</div>
		</ion:article>
	</ion:articles>	
</section>