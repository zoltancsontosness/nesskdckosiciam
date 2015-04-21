<ion:partial view="header" />

		<section class="main-content wrapper clearfix">
			<div class="articles left">
			
			<ion:search>
				<h2><ion:page:title suffix="lang('for')" />"<ion:realm />"</h2>
				<ion:results:count is_not="0">
					<ion:results:result>
					<article class="clearfix">
						<h3><a href="<ion:url />"><ion:title /></a></h3>
						<div class="social left">
							<time class="red-background clearfix white" datetime="<ion:date format="Y-d-m H:i" />">
								<strong><ion:date format="d" /></strong>
								<ion:date format="M" />
							</time>					
						</div>
						<div class="text silver left">						
							<ion:content paragraph="1" />
							<a href="<ion:url />" class="red read-more"><ion:lang key="read_more" /></a>
						</div>
					</article>
					</ion:results:result>
				</ion:results:count>
				<!-- No results found -->
				<ion:else>
					<article class="clearfix">				
						<h3><ion:lang key="no_search_results" /></h3>
					</article>
				</ion:else>
			</ion:search>			
		
			</div>
			
			<ion:partial view="aside" />
			
		</section>

<ion:partial view="footer" />