<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>
<div class="container">
	<ion:page>
		<div class="row">
			<h1 class="hero"><ion:page:title /></h1>
		</div>
		<section class="careers gutter-bottom row">
			<?php if('<ion:articles:count type="web-development"/>' > 0) : ?>
				<h2 class="subHero">Web Development</h2>
				<div class="separator"></div>
				<div class="row">
					<ion:articles type="web-development">
						<ion:article>
							<div class="col-sm-4">
								<h2><ion:title /></h2>
								<ion:content characters="258" />
								<div>
									<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
								</div>
							</div>
						</ion:article>
					</ion:articles>	
				</div>
			<?php endif; ?>
			<?php if('<ion:articles:count type="c-development"/>' > 0) : ?>
				<h2 class="subHero">C#/C++/C Developer</h2>
				<div class="separator"></div>
				<div class="row">
					<ion:articles type="c-development">
						<ion:article>
							<div class="col-sm-4">
								<h2><ion:title /></h2>
								<ion:content characters="258" />
								<div>
									<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
								</div>
							</div>
						</ion:article>
					</ion:articles>	
				</div>
			<?php endif; ?>
			<?php if('<ion:articles:count type="java-oracle-development"/>' > 0) : ?>
				<h2 class="subHero">Java Developer / Oracle Database Specialist</h2>
				<div class="separator"></div>
				<div class="row">
					<ion:articles type="java-oracle-development">
						<ion:article>
							<div class="col-sm-4">
								<h2><ion:title /></h2>
								<ion:content characters="258" />
								<div>
									<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
								</div>
							</div>
						</ion:article>
					</ion:articles>	
				</div>
			<?php endif; ?>
			<?php if('<ion:articles:count type="non-it"/>' > 0) : ?>
				<h2 class="subHero">Non IT</h2>
				<div class="separator"></div>
				<div class="row">
					<ion:articles type="non-it">
						<ion:article>
							<div class="col-sm-4">
								<h2><ion:title /></h2>
								<ion:content characters="258" />
								<div>
									<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
								</div>
							</div>
						</ion:article>
					</ion:articles>	
				</div>
			<?php endif; ?>
		</section>
	</ion:page>
</div>


<ion:partial view="footer" />