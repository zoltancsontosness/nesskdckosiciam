<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>
<div class="container overflow-hidden">
	<ion:page>
		<section class="careers gutter-bottom row">
			<div class="col-md-9">
				<h1 class="hero gutter-bottom-small"><ion:article:title /></h1>
				<div id="content">
					<ion:article:content />
				</div>
				<div id="form" class="col-sm-12 hide">
					<div class="row">
						<form action=".">
						<div class="form-group">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam felis tellus, dictum sed tincidunt mollis, 
							pharetra nec turpis. Integer vitae facilisis nulla. Aliquam erat volutpat. Donec eu mollis sapien, aliquam efficitur 
							lorem. Donec tincidunt at magna in aliquet. Cras sit amet metus in ligula pulvinar fermentum a eu odio.</p>
							<label for="email">Your Email</label>
							<input type="text" id="email" class="form-control input-lg" placeholder="Email...">
						</div>
						<div class="form-group">
							<label for="position">Position</label>
							<input type="text" id="position" class="form-control input-lg" value="<ion:article:title />" readonly="readonly" />
						</div>
						<div class="form-group">
							<label for="cv">Here upload your CV</label>
							<input type="file" id="cv" class="btn btn-transparent blue" />
						</div>
							<button type="submit" class="btn btn-green btn-lg btn-block">Send Now!</button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="gutter-bottom-small">
					<h2 class="right-column-heading text-center">Are you interested? </h2>
					<a href="#" id="send-cv" class="btn btn-green btn-lg btn-block send-cv">Send Your CV Now!</a>
					<a href="#" id="more-info" class="btn btn-transparent blue border-blue btn-lg btn-block send-cv hide">More Info</a>
				</div>
				<?php if('<ion:article:medias:count />' > 0) : ?>
					<div class="separator gutter-bottom-small"></div>
					<ion:article:medias type="picture" limit="1">
						<img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive center"/>
					</ion:article:medias>
				<?php endif; ?>
			</div>
		</section>
	</ion:page>
</div>
<ion:partial view="footer" />