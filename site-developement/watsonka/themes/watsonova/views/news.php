<ion:page id="novinky">
<div class="one_first">
	<aside class="widget widget_text">
		<div class="textwidget">
			<section class="post_type_shortcode four_blocks">
				<h3 class="cms_title"><ion:title/></h3>
				<script type="text/javascript">
					jQuery(document).ready(function () { 
						jQuery('.post_type_list').cmsmsResponsiveContentSlider( { 
							sliderWidth : '100%', 
							sliderHeight : 'auto', 
							animationSpeed : 500, 
							animationEffect : 'slide', 
							animationEasing : 'easeInOutExpo', 
							pauseTime : 0, 
							activeSlide : 1, 
							touchControls : false, 
							pauseOnHover : false, 
							arrowNavigation : true, 
							slidesNavigation : false 
						} );
					} );
				</script>				
				<ul class="post_type_list responsiveContentSlider">					
					<li class="latest_item">
						<ion:articles>
							<ion:article>
								<article class="portfolio format-album">
									<div class="portfolio_inner">
										<a href="<ion:article:url />"></a>
										<figure>
											<ion:medias type="picture">
												<ion:media>
													<img src="<ion:media:src />" alt="" class="fullwidth" />
												</ion:media>
											</ion:medias>

										</figure>
										<div class="project_rollover" style="background-color:#6cc437;">
											<header class="entry-header">
												<h6 class="entry-title"><a href="<ion:article:url />"><ion:title /></a></h6>
												<!--ul class="cmsms_category">
													<li><a href="#">Design</a>, </li>
													<li><a href="#">Corporate</a><li>
												</ul>
												<span class="cmsms_post_img"></span-->
											</header>
											<span class="entry-content">
												<p><ion:content paragraph="1" /></p>
											</span>
										</div>
									</div>
								</article>
							</ion:article>	
						</ion:articles>		
					</li>					
				</ul>				
			</section>
		</div>
	</aside>
</div>
<div class="cl"></div>

</ion:page>
</div>


			<!--div class="latest-news" id="news">
				<div class="wrap">
					<ion:page id="novinky">
					<div class="head">
						<span> </span>
						<h3><ion:title /></h3>
					</div>
					script type="text/javascript" src="<ion:theme_url />js/jquery.flexisel.js"></script>
					<script type="text/javascript">
					$(window).load(function() {
					    $("#flexiselDemo3").flexisel({
					        visibleItems: 3,
					        animationSpeed: 1000,
					        autoPlay: true,
					        autoPlaySpeed: 3000,            
					        pauseOnHover: true,
					        enableResponsiveBreakpoints: true,
					        responsiveBreakpoints: { 
					            portrait: { 
					                changePoint:480,
					                visibleItems: 1
					            }, 
					            landscape: { 
					                changePoint:640,
					                visibleItems: 2
					            },
					            tablet: { 
					                changePoint:768,
					                visibleItems: 3
					            }
					        }
					    });
					});
					</script
					<ion:articles tag="ul" id="flexiselDemo3">
						<ion:article>
						<li>
							<div class="latest-news-grid">
								<h3><a href="<ion:url />"><ion:date format="d/m/Y" /></a></h3>
								<ion:content ellipsize="100" />
							</div>
						</li>
						</ion:article>
					</ion:articles>
					</ion:page>
					<div class="clear"> </div>
					<div class="bottom-border">
						<span> </span>
					</div>
				</div>
			</div-->