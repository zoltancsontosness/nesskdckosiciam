		<!-- Newsreader -->
		<section id="newsreader">
			<div class="wrapper-wide clearfix relative">
				
				<!-- League logo -->
				<h1 id="logo-big" class="center">
					<a href="<ion:home_url />">
						<img src="<ion:theme_url />img/liba-logo.png" alt="Igor Liba academy" />
					</a>
				</h1>
				
				<!-- Left button -->
				<a class="absolute-left white arrow" data-direction="left">&lt;</a>
				
				<ion:page id="11">
				
				<!-- Slides -->				
				<ul id="news-slider">	
				
				<ion:page:articles>				

					<ion:article>
					<li class="clearfix<ion:article:index is="1"> active</ion:article:index>">
						<h2 class="red-opaque-background white right"><a href="<ion:url />"><ion:title /></a></h2>					
						<strong class="blue-opaque-background white right"><ion:content paragraph="1" /></strong>					
					</li>
					</ion:article>

				</ion:page:articles>
				
				</ul>

				
				<!-- Right button -->
				<a class="absolute-right white arrow" data-direction="right">&gt;</a>
				
				<!-- Position markers -->
				<ul id="position-markers">
					<ion:page:articles>	
					<li class="toggle-slide <ion:article:index is="1">active</ion:article:index>"><a data-slide-id="<ion:article:index />"></a></li>
					</ion:page:articles>
				</ul>
				
				</ion:page>
				
			</div>
		</section>