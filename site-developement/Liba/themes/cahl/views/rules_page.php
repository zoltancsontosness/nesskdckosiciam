<ion:partial view="header" />

		<section class="main-content wrapper clearfix">
			<div class="articles left">
				<!-- News -->
				<ion:page id="7">
					<ion:articles limit="10">
						<ion:article>
					
						<article class="clearfix">
							<h3><a href="#"><ion:title /></a></h3>
							<div class="social left">
								<ion:partial view="widgets/social" />					
							</div>
							<div class="text silver left">
								<!-- Get the pictures only -->
								<ion:medias type="picture" size="569,356">							 
									<img src="<ion:media:src />" alt="<ion:media:alt />" />
								</ion:medias>						
								<ion:content />
							</div>
						</article>	
						
						</ion:article>
					</ion:articles>
				</ion:page>			
		
			</div>
			
			<ion:partial view="aside" />
			
		</section>

<ion:partial view="footer" />

