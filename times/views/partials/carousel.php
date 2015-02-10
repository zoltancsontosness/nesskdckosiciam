			<!-- =======================================================================
				 Carousel
				 ======================================================================= -->
			<div class="carousel-container">
				<div id="carousel">
					<ul>
						<ion:page id="10">
							<ion:articles limit="5">
								<ion:article>
									<li>
										<div class="teaser-image">
											<ion:medias type="picture" method="adaptive" size="350,268">
											<img src="<ion:media:src />" alt="<ion:media:alt />" />
											</ion:medias>
										</div>					
										<!-- Teaser image -->
										<article class="clearfix">
											<div class="text-wrapper">
												<h2 class="cyan">
													<a class="cyan-text" href="<ion:url />"><ion:title /></a>
												</h2>
												<hr />
												<div class="post-details">
													<!-- Post date -->
													<strong><ion:lang key="date" />: </strong>
													<time datetime="<ion:date format="Y-d-m H:i" />">
														<ion:date format="d" />. <ion:date format="M" /> <ion:date format="Y" />
													</time>
													
													<!-- Author -->
													<strong><ion:lang key="author" />:</strong>
													<address>
														<ion:article:writer who="updater">
														<a href="#<ion:firstname />-<ion:lastname />">
															<ion:firstname /> <ion:lastname />
														</a>
														</ion:article:writer>
													</address>
												</div>
												<ion:content paragraph="1" />
											</div>
										</article>
									</li>
								</ion:article>
							</ion:articles>						
						</ion:page>
					</ul>
					<div id="position-icons"></div>
					<!-- Carousel controlls -->
					<div class="controlls clearfix">
						<a class="icon-caret-left icon-large carousel-left-button"></a>
						<a class="icon-caret-right icon-large carousel-right-button"></a>
					</div>	
				</div><!-- /Carousel -->
			</div>
			
			<!-- Separator -->
			<div class="separator cyan-back clearfix">
				<div class="narrow-right silver-back"></div>
			</div>