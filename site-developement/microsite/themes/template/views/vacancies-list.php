<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>
<div class="container">
  <ion:page>
    <h1 class="hero hero-gutter"><ion:page:title /></h1>
    <ion:breadcrumb separator="" tag="ol" child-tag="li" class="breadcrumb" home="true" article="true"/>
    <section class="careers gutter-bottom">
      <?php if('<ion:articles:count type="development, NULL"/>' > 0) : ?>
       <div class="gutter-bottom-small">
					<h2 class="subHero">Development</h2>
					<div class="separator"></div>
					<div class="row">
						<ion:articles type="development, NULL">
							<ion:article>
								<div class="col-sm-4 column-item">
									<h2 class="vacancy-title"><ion:title /></h2>
									<div class="vacancy-desc">
										<ion:subtitle tag="p" characters="255" />
									</div>
									<div class="more-info">
										<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
									</div>
								</div>
								<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
							</ion:article>
						</ion:articles> 
					</div>
        </div>
      <?php endif; ?>
      <?php if('<ion:articles:count type="databases, NULL"/>' > 0) : ?>
       <div class="gutter-bottom-small">
					<h2 class="subHero">Databases</h2>
					<div class="separator"></div>
					<div class="row">
						<ion:articles type="databases, NULL">
							<ion:article>
								<div class="col-sm-4 column-item">
									<h2 class="vacancy-title"><ion:title /></h2>
									<div class="vacancy-desc">
										<ion:subtitle tag="p" characters="255" />
									</div>
									<div class="more-info">
										<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
									</div>
								</div>
								<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
							</ion:article>
						</ion:articles> 
					</div>
			</div>
      <?php endif; ?>
      <?php if('<ion:articles:count type="testing, NULL"/>' > 0) : ?>
       <div class="gutter-bottom-small">
					<h2 class="subHero">Testing</h2>
					<div class="separator"></div>
					<div class="row">
						<ion:articles type="testing, NULL">
							<ion:article>
								<div class="col-sm-4 column-item">
									<h2 class="vacancy-title"><ion:title /></h2>
									<div class="vacancy-desc">
										<ion:subtitle tag="p" characters="255" />
									</div>
									<div class="more-info">
										<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
									</div>
								</div>
								<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
							</ion:article>
						</ion:articles> 
					</div>
			</div>
      <?php endif; ?>
      <?php if('<ion:articles:count type="project-management, NULL"/>' > 0) : ?>
       <div class="gutter-bottom-small">
					<h2 class="subHero">Project Management</h2>
					<div class="separator"></div>
					<div class="row">
						<ion:articles type="project-management, NULL">
							<ion:article>
								<div class="col-sm-4 column-item">
									<h2 class="vacancy-title"><ion:title /></h2>
									<div class="vacancy-desc">
										<ion:subtitle tag="p" characters="255" />
									</div>
									<div class="more-info">
										<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
									</div>
								</div>
								<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
							</ion:article>
						</ion:articles> 
					</div>
			</div>
      <?php endif; ?>
      <?php if('<ion:articles:count type="customer-support, NULL"/>' > 0) : ?>
       <div class="gutter-bottom-small">
					<h2 class="subHero">Customer Support</h2>
					<div class="separator"></div>
					<div class="row">
						<ion:articles type="customer-support, NULL">
							<ion:article>
								<div class="col-sm-4 column-item">
									<h2 class="vacancy-title"><ion:title /></h2>
									<div class="vacancy-desc">
										<ion:subtitle tag="p" characters="255" />
									</div>
									<div class="more-info">
										<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
									</div>
								</div>
								<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
							</ion:article>
						</ion:articles> 
					</div>
			</div>
      <?php endif; ?>
      <?php if('<ion:articles:count type="professional-services, NULL"/>' > 0) : ?>
       <div class="gutter-bottom-small">
					<h2 class="subHero">Professional Services</h2>
					<div class="separator"></div>
					<div class="row">
						<ion:articles type="professional-services, NULL">
							<ion:article>
								<div class="col-sm-4 column-item">
									<h2 class="vacancy-title"><ion:title /></h2>
									<div class="vacancy-desc">
										<ion:subtitle tag="p" characters="255" />
									</div>
									<div class="more-info">
										<a href="<ion:url />" class="btn btn-transparent btn-lg blue border-blue">More info...</a>
									</div>
								</div>
								<ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
							</ion:article>
						</ion:articles> 
					</div>
			</div>
      <?php endif; ?>

    </section>
  </ion:page>
</div>


<ion:partial view="footer" />