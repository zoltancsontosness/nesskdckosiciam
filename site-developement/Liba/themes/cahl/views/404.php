<ion:partial view="header" />
	<ion:page:articles type="">
		<section class="main-content wrapper clearfix">
			<div class="articles left">

				<ion:article>
			
				<article class="clearfix">
					<h3><a href="#"><ion:title /></a></h3>
					<div class="social left">		
					</div>
					<div class="text silver left">
						<!-- Get the pictures only -->
						<ion:medias type="picture" size="569,356">							 
							<img src="<ion:media:src />" alt="<ion:media:alt />" />
						</ion:medias>						
						<ion:content />
						
						<ion:extend:forum:value is="enabled">
						<!-- Discuss thread -->
						<div id="disqus_thread"></div>
						<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
						<a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
						</ion:extend:forum:value>
					</div>
				</article>	

				</ion:article>
		
			</div>
			
			<ion:partial view="aside" />
			
		</section>
	</ion:page:articles>
<ion:partial view="footer" />