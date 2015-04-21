<ion:partial view="header" />

		<section class="main-content wrapper clearfix">
			<div class="articles left">
				<!-- News -->
				<ion:page>
					<ion:articles>
						<ion:article>
					
						<article class="clearfix">
							<h3><a href="<ion:url />"><ion:title /></a></h3>
							<div class="social left">
								<time class="red-background clearfix white" datetime="<ion:date format="Y-d-m H:i" />">
									<strong><ion:date format="d" /></strong>
									<ion:date format="M" />
								</time>
								<ion:partial view="widgets/social" />
							</div>
							<div class="text silver left">
								<!-- Get the pictures only -->
								<ion:medias type="picture" size="569,356">							 
									<img src="<ion:media:src />" alt="<ion:media:alt />" />
								</ion:medias>						
								<ion:content paragraph="2" />
								<a href="<ion:url />" class="red read-more"><ion:lang key="read_more" /></a>
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