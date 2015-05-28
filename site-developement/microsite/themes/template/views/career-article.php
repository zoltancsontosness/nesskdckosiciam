<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>
<div class="container">
	<ion:page>
		<section class="careers gutter-bottom row">
			<div class="col-sm-9">
				<h1 class="hero"><ion:article:title /></h1>
				<ion:article:content />
			</div>
			<div class="col-sm-3">
				<div class="gutter-bottom-small">
					<h2 class="right-column-heading text-center">Are you interested? </h2>
					<a href="#" class="btn btn-green btn-lg btn-block send-cv">Send Your CV Now!</a>
				</div>
				<?php if('<ion:article:medias:count />' > 0) : ?>
					<div class="separator"></div>
					<h2 class="right-column-heading text-center subHero">Who Need You?</h2>
					<ion:article:medias>
						<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive center"/>
					</ion:article:medias>
				<?php endif; ?>
			</div>
		</section>
	</ion:page>
</div>
<ion:partial view="footer" />