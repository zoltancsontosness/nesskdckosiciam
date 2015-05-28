<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>
<div class="container">
	<ion:page>
		<section class="careers gutter-bottom row">
			<div class="col-md-9">
				<h1 class="hero gutter-bottom-small"><ion:article:title /></h1>
				<div id="content">
					<ion:article:content />
				</div>
				<div id="form" class="hide">
					<form action=".">
						<label for="cv">Here upload your CV</label>
						<input type="file" id="cv" class="form-control">
					</form>
				</div>
			</div>
			<div class="col-md-3">
				<div class="gutter-bottom-small">
					<h2 class="right-column-heading text-center">Are you interested? </h2>
					<a href="#" class="btn btn-green btn-lg btn-block send-cv">Send Your CV Now!</a>
				</div>
				<?php if('<ion:article:medias:count />' > 0) : ?>
					<div class="separator gutter-bottom"></div>
					<ion:article:medias type="picture" limit="1">
						<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive center"/>
					</ion:article:medias>
				<?php endif; ?>
			</div>
		</section>
	</ion:page>
</div>
<ion:partial view="footer" />