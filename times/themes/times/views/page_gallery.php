<ion:partial view="header" />

		<!-- =======================================================================
			 Main content 
			 ======================================================================= -->
		<section class="article">
			<ion:page>
				<h1><ion:page:title /></h1>
				<div id="breadcrumb" class="clearfix">
					<ion:page:breadcrumb home="true" separator=" &gt; " article="true" />
				</div>				
				<ion:articles>
					<ion:article>
						<article class="gallery clearfix">
							<h2><a href="<ion:url />"><ion:title /></a></h2>
							<div class="post-details">
								<strong><ion:lang key="date" />: </strong>
								<time datetime="<ion:date format="Y-d-m H:i" />">
									<ion:date format="d" />. <ion:date format="M" /> <ion:date format="Y" />
								</time>
								<strong><ion:lang key="author" />:</strong>
								<address>
									<ion:article:writer who="updater">
									<a href="#<ion:firstname />-<ion:lastname />">
										<ion:firstname /> <ion:lastname />
									</a>
									</ion:article:writer>								
								</address>
							</div>
							<div class="thumbs">
								<ion:medias size="250,180" type="picture" limit="4" method="adaptive">
								<div class="thumb">
									<img src="<ion:media:src />" alt="<ion:media:alt />" />
								</div>					
								</ion:medias>
							</div>
						</article>						
					</ion:article>
				</ion:articles>
				
				<?php
					$count = "<ion:articles:count />";
				?>
				
				<?php if ($count == "") { ?>
					<!-- No articles -->
					<article class="clearfix">
						<h2><ion:title /></h2>
						<p>
							<ion:lang key="no_content_message" />
						</p>
					</article>							
				<?php } ?>
				
				<div id="pagination">
					<ion:articles:pagination />
				</div>
				
			</ion:page>		
		</section><!-- /main content -->

		<ion:partial view="partials/aside" />
		
<ion:partial view="footer" />

