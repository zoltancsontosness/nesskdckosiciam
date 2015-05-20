<section id="ourLife" class="gutter-bottom">
	<ion:articles type="ourlife">
		<ion:article>
			<div class="items row">
				<div class="col-sm-11 col-sm-offset-1">
					<div class="row">
						<ion:medias type="picture" range="1,4" size="360,360" method="adaptive">
							<div class="item col-xs-6 col-sm-3">
								<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
							</div>
						</ion:medias>
					</div>
					<div class="row">
						<ion:medias type="picture" range="5,6" size="360,360" method="adaptive">
							<div class="item col-xs-6 col-sm-3 pull-right">
								<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
							</div>
						</ion:medias>
						<div class=" col-xs-12 col-sm-6">
							<h1 class="hero text-right">
								<ion:article:title />
							</h1>
							<span class="border"></span>
						</div>
					</div>
				</div>
			</div>
			<div class="row lookInside">
				<div class="col-sm-11 col-sm-offset-1">
					<div class="col-sm-6">
						<a href="#" class="link"><ion:article:subtitle /></a>
					</div>
					<div class="col-sm-6">
						<ion:article:content />
					</div>
				</div>
			</div>
		</ion:article>
	</ion:articles>
</section>