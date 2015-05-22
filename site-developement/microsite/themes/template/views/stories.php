<section id="stories" class="gutter-bottom">
	<ion:articles type="stories">
		<ion:article>
			<div class="items row">
				<div class="col-sm-11">
					<div class="row">
						<ion:medias type="picture" range="1,4" size="360,360" method="adaptive">
							<div class="item col-xs-6 col-sm-3">
								<div class="overlay overlay-<ion:media:description />">
									<p class="perex"><ion:media:title /></p>
								</div>
								<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
							</div>
						</ion:medias>
					</div>
					<div class="row">
						<ion:medias type="picture" range="5,6" size="360,360" method="adaptive">
							<div class="item col-xs-6 col-sm-3">
								<div class="overlay overlay-<ion:media:description />">
									<p class="perex"><ion:media:title /></p>
								</div>
								<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
							</div>
						</ion:medias>
						<div class=" col-xs-12 col-sm-6">
							<h1 class="hero">
								<ion:article:title />
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
					<p>
						<ion:article:content />
					</p>
					<a href="#" class="link"><ion:article:subtitle /></a>
				</div>
				<div class="logos col-xs-12 col-sm-12 col-md-5 col-md-offset-1">
					<div class="row">
						<ion:medias type="picture" range="1,4">
							<div class="logo col-xs-6 col-sm-3">
								<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
							</div>
						</ion:medias>
					</div>
					<div class="row">
						<ion:medias type="picture" range="5,8">
							<div class="logo col-xs-6 col-sm-3">
								<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
							</div>
						</ion:medias>
					</div>
				</div>
			</div>
		</ion:article>
	</ion:articles>	
</section>