<ion:partial view="header" />

		<!-- =======================================================================
			 Main content 
			 ======================================================================= -->
		<section class="article">
			<ion:page id="1">
				<ion:articles limit="1">
					<ion:article>
						<article class="clearfix">
							<h2><a href="<ion:url />"><ion:title /></a></h2>				
							
							<ion:content />			
							
						</article>						
					</ion:article>
				</ion:articles>
			</ion:page>		
		</section><!-- /main content -->

		<ion:partial view="partials/aside" />
		
<ion:partial view="footer" />

