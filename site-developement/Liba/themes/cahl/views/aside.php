			<!-- Aside -->
			<aside class="col-xs-12 col-md-12 col-lg-2 right">
				<h3 class="red-background white">Aktuality</h3>
				<ion:page id="news">
					<ion:articles limit="3">
						<article class="row col-md-12 silver">
							<time class="red-background white clearfix" datetime="<ion:article:date format="Y-d-m H:i" />">
								<strong>
									<ion:article:date format="d" />
								</strong>
								<ion:article:date format="M" />
							</time>
							<ion:article:content />
						</article>
					</ion:articles>
				</ion:page>
			</aside>