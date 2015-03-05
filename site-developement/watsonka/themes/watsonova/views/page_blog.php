<ion:partial view="header" />

<!-- __________________________________________________ Start Middle -->
	<ion:page>
			<div class="wrap_headline">
				<div class="headline">
					<h1><ion:title /></h1>
				</div>
			</div>
			<div class="wrap_cont_nav">
				<div class="cont_nav">
					<ion:page:breadcrumb tag="a" separator="&nbsp; &#47; &nbsp;" />
				</div>
			</div>
			<div class="container">	
				<section id="middle">
					<div class="middle_inner">
<!-- __________________________________________________ Start Content -->
					
						<section id="middle_content">
							<div class="entry_summary">
								<section class="blog">
								<ion:articles>
									<ion:article>
									<article class="post hentry format-standard">
										<div class="cmsms_info">
											<div class="published">
												<span class="cmsms_date_day"><ion:article:date format="d" />. </span>
												<span class="cmsms_date_year_mounth"><ion:article:date format="Y" /> <br /><span class="mounth"><ion:article:date format="m" /></span></span>
											</div>
										</div>	
										<div class="ovh">
											<header class="entry-header">
												<ion:title tag="h2" />
												<div class="cmsms_media">
													<figure>
														<ion:medias type="picture" method="height">
																<ion:media>
																	<a href="<ion:link />">
																		<img src="<ion:media:src method='width' size='200' unsharp='true' />" alt="<ion:media:alt />" />
																	</a>
																</ion:media>
															</ion:medias>
													</figure>
												</div>
											</header>
											<div class="cl"></div>
											<div class="entry-content">
												<ion:content words="80" />
											</div>
											<a href="<ion:article:url />" class="post_link cmsms_more"><ion:lang key='button_read_more' /></a>
											<div class="divider"></div>
										</div>
									</article>
									</ion:article>
								</ion:articles>
								</section>
							</div>
						</section>

<!-- __________________________________________________ Finish Content -->		

					</div>
				</section>
				
	</ion:page>
<!-- __________________________________________________ Finish Middle -->

	<!--div class="header-divider"></div>

	<ion:page>
	<div class="services" id="services">
		<div class="wrap">
			<div class="head">
				<span> </span>
				<h1><ion:title /></h1>
			</div>
			
			<ion:articles>
				<ion:article>
				<div id="text-content-wrapper" class="dotted-bottom">
					<div class="head">
						<span> </span>
						<h2><ion:title /></h2>
					</div>					
					<ion:content words="80" /><br />
					<a class="read-more" href="<ion:url />"><ion:lang key="read_more" /></a>
				</div>		
				</ion:article>
			</ion:articles>
			
		</div>
		</ion:page>
	</div-->

<ion:partial view="footer" />
