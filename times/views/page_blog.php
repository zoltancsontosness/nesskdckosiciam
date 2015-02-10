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
						<article class="clearfix">
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
							<ion:medias size="800,400" type="picture" limit="1" method="adaptive">
							<div class="thumb<ion:article:index is="1"> big</ion:article:index>">
								<img src="<ion:media:src />" alt="<ion:media:alt />" />
							</div>					
							</ion:medias>
							<ion:content paragraph="2" />
							<div class="article-controlls clearfix">
								<a href="<ion:url />" class="read-more"><ion:lang key="read_more" /></a>
								<div class="social">
									<a href="<ion:url />" class="twitter-share-button" data-count="horizontal" data-size="small">Tweet</a>
									<div class="fb-like" data-href="<ion:url />" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false" data-font="trebuchet ms"></div>
								</div>
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
						<br />
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

