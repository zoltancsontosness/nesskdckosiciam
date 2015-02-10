<ion:partial view="header" />

		<!-- =======================================================================
			 Main content 
			 ======================================================================= -->
		<section class="article">
			<ion:page>
				<ion:article>
					<article class="clearfix">
						<h2><a href="<ion:url />"><ion:title /></a></h2>
						<div id="breadcrumb" class="detail clearfix">
							<ion:page:breadcrumb home="true" separator=" &gt; " article="true" />
						</div>						
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
						<div id="article-gallery">
							<ion:medias size="800,400" type="picture" method="adaptive">
							<div class="thumb<ion:media:index is="1"> big</ion:media:index>">
								<a class="fancybox-button" rel="fancybox-button" href="<ion:media:src />" title="<ion:media:alt />">
									<img src="<ion:media:src />" alt="<ion:media:alt />" />
								</a>
							</div>					
							</ion:medias>
						</div>					
						
						<ion:content />
						
						<div id="video-gallery">
							<ion:medias type="video">
								<h2><ion:lang key="linked_videos" /></h2>
								<ion:media>
									<iframe frameborder="0" width="667" height="400" src="<ion:src />"></iframe>
								</ion:media>
							</ion:medias>
						</div>							
						
						<div class="article-controlls clearfix">
							<div class="social left">
								<a href="<ion:url />" class="twitter-share-button" data-count="horizontal" data-size="small">Tweet</a>
								<div class="fb-like" data-href="<ion:url />" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false" data-font="trebuchet ms"></div>
							</div>
						</div>
						
						<ion:extend:forum:value is="true">
							<div id="disqus_thread"></div>
							<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
						</ion:extend:forum:value>						
						
					</article>						
				</ion:article>
				
			</ion:page>		
		</section><!-- /main content -->

		<ion:partial view="partials/aside" />
		
<ion:partial view="footer" />

