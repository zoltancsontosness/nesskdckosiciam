<ion:partial view="header" />

	<div class="header-divider"></div>

	<ion:page>
	<div class="services" id="services">
		<div class="wrap">
			<div class="head">
				<span> </span>
				<h1><ion:title /></h1>
			</div>
			
			<ion:articles>
				<ion:article>
				<div id="text-content-wrapper" class="dotted-bottom">
					<div class="head">
						<span> </span>
						<h2><ion:title /></h2>
					</div>					
					<ion:content words="80" /><br />
					<a class="read-more" href="<ion:url />"><ion:lang key="read_more" /></a>
				</div>		
				</ion:article>
			</ion:articles>
			
		</div>
		</ion:page>
	</div>

<ion:partial view="footer" />
