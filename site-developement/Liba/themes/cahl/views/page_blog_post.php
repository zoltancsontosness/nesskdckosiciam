<ion:partial view="header" />

		<section class="main-content wrapper clearfix">
			<div class="articles left col-xs-12 col-md-12 col-lg-10">

				<ion:page:article>
			
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
						<ion:content />
					</div>
				</article>	

				</ion:page:article>
		
			</div>
			
			<ion:partial view="aside" />
			
		</section>

<ion:partial view="footer" />