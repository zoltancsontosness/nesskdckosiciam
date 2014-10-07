			<div class="latest-news" id="news">
				<div class="wrap">
					<ion:page id="novinky">
					<div class="head">
						<span> </span>
						<h3><ion:title /></h3>
					</div>
					<script type="text/javascript" src="<ion:theme_url />js/jquery.flexisel.js"></script>
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
					</script>
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
			</div>