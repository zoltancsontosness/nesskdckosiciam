<ion:partial view="header" />

		<section class="main-content wrapper clearfix">
			<div class="articles left col-xs-12 col-md-12 col-lg-10">
				<!-- News -->
				<ion:page>
					<ion:articles>
						<ion:article>
					
						<article class="col-sm-12 clearfix">
							<h3><ion:title /></h3>
							<div class="social left col-xs-12 col-md-1">
								<time class="red-background clearfix white" datetime="<ion:date format="Y-d-m H:i" />">
									<strong><ion:date format="d" /></strong>
									<ion:date format="M" />
								</time>
								<ion:partial view="widgets/social" />
							</div>
							<div class="text silver left col-xs-12 col-sm-12 col-md-11">
								<!-- Get the pictures only -->
								<ion:medias type="picture" size="569,356">							 
									<img class="article-img" src="<ion:media:src />" alt="<ion:media:alt />" />
								</ion:medias>						
								<ion:content characters="700" />
								<a href="<ion:url />" class="btn btn-danger pull-right"><ion:lang key="read_more" /></a>
							</div>
						</article>	
						
						</ion:article>
					</ion:articles>
					
					<?php
						$count = "<ion:page:articles:count />";
					?>
					
					<?php if ($count == "") { ?>
						<!-- No articles -->
						<article class="clearfix">
							<h3><ion:lang key="no-content-notice" /></h3>
						</article>							
					<?php } else { ?>
					
					<!-- Pagination -->
					<article class="clearfix">
						<div id="pagination" class="text silver left">
							<ion:articles:pagination />
						</div>
					</article>
					
					<?php } ?>
					
				</ion:page>			
		
			</div>
			
			<ion:partial view="aside" />
			
		</section>

<ion:partial view="footer" />