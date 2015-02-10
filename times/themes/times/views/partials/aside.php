			<!-- Sidebar assets -->
			<aside>
				
				<!-- Search -->
				<div id="search" class="clearfix">
					<form id="search-query" action="/search-results" method="post">
						<input type="hidden" name="form" value="search" />
						<input type="text" id="search-box" name="realm" placeholder="<ion:lang key="search" />" />
						<a href="#" class="icon-search icon-large search-submit"></a>
					</form>
				</div>
				
				<!-- Recent news -->
				<section id="recent" class="clearfix">
					<!-- Tabs -->
					<div class="tabs clearfix">
						<a href="#" class="selected" data-tab="js-most-readed-articles"><ion:lang key="newest" /></a>
						<a href="#" data-tab="js-featured-articles"><ion:lang key="recommended" /></a>
					</div>
					
					<ol id="js-most-readed-articles" class="clearfix">
						<ion:navigation>
							<ion:articles order_by="date DESC">
								<ion:article>
									<li><a href="<ion:url />"><ion:title characters="22" />...</a></li>
								</ion:article>
							</ion:articles>
						</ion:navigation>					
					</ol>
					
					<ol id="js-featured-articles" class="clearfix">
						<ion:navigation>
							<ion:articles type="recomended" order_by="date DESC">
								<ion:article>
									<li><a href="<ion:url />"><ion:title characters="22" />...</a></li>
								</ion:article>
							</ion:articles>
						</ion:navigation>
					</ol>					
					
				</section><!-- /recent news -->
				
				<!-- Gallery -->
				<section id="aside-gallery" class="clearfix">
					
					<!-- controlls -->
					<div class="controlls">
						<a class="icon-caret-left icon-large controll" data-direction="left"></a>
						<h3><ion:lang key="galleries" /></h3>
						<a class="icon-caret-right icon-large controll" data-direction="right"></a>
					</div>
					
					<ul class="active">
					<ion:page id="12">
						<ion:articles>
							<ion:article>
									<ion:medias type="picture" limit="1" size="170" method="square">
									<li>
										<div class="image">
											<img src="<ion:media:src />" alt="<ion:title />" />
										</div>
										<a href="<ion:url />"><ion:article:title /></a>
									</li>
									</ion:medias>
								<ion:index expression="index%2==0">									
								</ul><ul>					
								</ion:index>
							</ion:article>
						</ion:articles>
					</ion:page>
					</ul>
					
				</section><!-- /gallery -->	

				<section id="like-box" class="clearfix">
					<div class="fb-like-box" 
						 data-href="https://www.facebook.com/FacebookDevelopers" 
						 data-width="269" 
						 data-height="400" 
						 data-colorscheme="light" 
						 data-show-faces="true" 
						 data-header="true" 
						 data-stream="true" 
						 data-show-border="true">
					</div>				
				</section>
				
			</aside><!-- /sidebar -->