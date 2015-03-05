<ion:partial view="header" />

<!-- __________________________________________________ Start Middle -->
	
	<ion:page>
	
			<div class="wrap_headline">
				<div class="headline">
					<ion:title tag="h1" />
				</div>
			</div>
			<div class="wrap_cont_nav">
				<div class="cont_nav">
					<ion:page:breadcrumb tag="a" article="true" separator="&nbsp; &#47; &nbsp;" />
				</div>
			</div>
			<div class="container">			
				<section id="middle">
					<div class="middle_inner">
<!-- __________________________________________________ Start Content -->

		<!-- Articles iterator -->
		<ion:articles>
	 
			<!-- Article -->
			<ion:article>
						
				<ion:title tag="h2" />
				<div class="aligncenter downloadLogos">
					<ion:content />
				</div>
				
				<section id="middle_content">
					<div class="entry">
						<section class="portfolio_container four_blocks">
							<ion:medias type="picture" method="height">							
								<ion:media>
									<article class="portfolio format-album" data-category="design corporate">
										<div class="portfolio_inner">
											<a href="<ion:link />"></a>
											<figure class="preloader downloads">
												<img src="<ion:media:src />" alt="<ion:media:alt />" class="fullwidth" />
											</figure>
											<div style="background-color:#6cc437;">
												<header class="entry-header aligncenter">
													<h6 class="entry-title"><ion:title /></h6>
												</header>
											</div>
										</div>
									</article>						
								</ion:media>
							</ion:medias>
						</section>
					</div>
				</section>
				
				<div class="cl"></div>
						
			</ion:article>
		</ion:articles>			
			
<!-- __________________________________________________ Finish Content -->

			</div>
		</section>
<!-- __________________________________________________ Finish Middle -->

	</ion:page>

<ion:partial view="footer" />