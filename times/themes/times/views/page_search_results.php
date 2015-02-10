<ion:partial view="header" />

		<!-- =======================================================================
			 Main content 
			 ======================================================================= -->
		<section class="article">
		<ion:search>
			<h1><ion:page:title suffix=" lang('for'): " />"<ion:realm />"</h1>
			<ion:results:count is_not="0">
				<ion:results:result>
					<?php
						$index = <ion:index /> + 1;
					?>
					<article class="search-result clearfix">
						<?php echo $index; ?>. <a href="<ion:url />"><ion:title /></a>
					</article>						
				</ion:results:result>
					
				<?php
					$count = "<ion:results:count />";
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
			</ion:results:count>
			<ion:else>
				<article class="clearfix">
					<h2><ion:lang key="not_found" /></h2>
					<ion:lang key="no_results_found" />
				</article>					
			</ion:else>
		</ion:search>
		</section><!-- /main content -->

		<ion:partial view="partials/aside" />
		
<ion:partial view="footer" />

