<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>
<div class="container">
	<ion:page>
		<h1 class="hero"><ion:page:title /></h1>
		<section class="careers gutter-bottom">
			<?php if('<ion:articles:count type="development"/>' > 0) : ?>
				<h2 class="subHero">Development</h2>
				<div class="separator"></div>
				<div class="row">
					<ion:articles type="development">
						<ion:article>
							<div class="col-sm-4">
								<h2 class="ellipsis"><ion:title /></h2>
								<ion:content characters="258" />
								<div>
									<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
								</div>
							</div>
							<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
						</ion:article>
					</ion:articles>	
				</div>
			<?php endif; ?>
			<?php if('<ion:articles:count type="databases"/>' > 0) : ?>
				<h2 class="subHero">Databases</h2>
				<div class="separator"></div>
				<div class="row">
					<ion:articles type="databases">
						<ion:article>
							<div class="col-sm-4">
								<h2 class="ellipsis"><ion:title /></h2>
								<ion:content characters="258" />
								<div>
									<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
								</div>
							</div>
							<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
						</ion:article>
					</ion:articles>	
				</div>
			<?php endif; ?>
			<?php if('<ion:articles:count type="testing"/>' > 0) : ?>
				<h2 class="subHero">Testing</h2>
				<div class="separator"></div>
				<div class="row">
					<ion:articles type="testing">
						<ion:article>
							<div class="col-sm-4">
								<h2 class="ellipsis"><ion:title /></h2>
								<ion:content characters="258" />
								<div>
									<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
								</div>
							</div>
							<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
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
								<h2 class="ellipsis"><ion:title /></h2>
								<ion:content characters="258" />
								<div>
									<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
								</div>
							</div>
							<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
						</ion:article>
					</ion:articles>	
				</div>
			<?php endif; ?>
			<?php if('<ion:articles:count type="customer-support"/>' > 0) : ?>
				<h2 class="subHero">Customer Support</h2>
				<div class="separator"></div>
				<div class="row">
					<ion:articles type="customer-support">
						<ion:article>
							<div class="col-sm-4">
								<h2 class="ellipsis"><ion:title /></h2>
								<ion:content characters="258" />
								<div>
									<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
								</div>
							</div>
							<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
						</ion:article>
					</ion:articles>	
				</div>
			<?php endif; ?>
			<?php if('<ion:articles:count type="professional-services"/>' > 0) : ?>
				<h2 class="subHero">Professional Services</h2>
				<div class="separator"></div>
				<div class="row">
					<ion:articles type="professional-services">
						<ion:article>
							<div class="col-sm-4">
								<h2 class="ellipsis"><ion:title /></h2>
								<ion:content characters="258" />
								<div>
									<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
								</div>
							</div>
							<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
						</ion:article>
					</ion:articles>	
				</div>
			<?php endif; ?>

		</section>
	</ion:page>
</div>


<ion:partial view="footer" />