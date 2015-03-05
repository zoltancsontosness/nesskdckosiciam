<ion:partial view="header" />


<!-- __________________________________________________ Start Middle -->
				<ion:page>
					<ion:article>
			<div class="wrap_headline">
				<div class="headline">
					<div class="cmsms_title">
						<h1 class="entry-title"><ion:page:title /></h1>
					</div>
				</div>
			</div>
			<div class="wrap_cont_nav">
				<div class="cont_nav">
					<ion:page:breadcrumb tag="a" article="true" separator="&nbsp; &#47; &nbsp;" />
				</div>
			</div>
			<div class="container">
				<section id="middle">
					<div class="middle_inner">
<!-- __________________________________________________ Start Content -->

						<div class="content_wrap">
							<section id="content">
								<div class="entry">
									<section class="blog opened-article format-standard">
										<article class="post format-standard">
											<div class="cmsms_info">
												<div class="published">
													<span class="cmsms_date_day"><ion:article:date format="d" />.</span>
													<span class="cmsms_date_year_mounth"><ion:article:date format="Y" /><br /><span class="mounth"><ion:article:date format="m" /></span></span>
												</div>
											</div>
											<div class="ovh">
												<header class="entry-header">
													<ion:title tag="h2" />
													<div class="cmsms_media">
														<figure>
															<ion:medias type="picture" method="height">
																<ion:media>
																	<a href="<ion:link />">
																		<img src="<ion:media:src method='width' size='300' unsharp='true' />" alt="<ion:media:alt />" />
																	</a>
																</ion:media>
															</ion:medias>
														</figure>
													</div>
												</header>
												<div class="entry-content">
													<ion:content />
												</div>
												<div class="divider"></div>
											</div>							
										</article>
										<div class="cl"></div>
									</section>
								</div>
							</section>
<!-- __________________________________________________ Finish Content -->		

<!-- __________________________________________________ Start Sidebar -->
				
							<section id="sidebar">
								<div class="one_first">
									<aside class="widget widget_custom_latest_popular_recent_entries">
										<h2 class="widgettitle"><ion:lang key='latest_news' /></h2>
										<div class="tab lpr">
											<div class="tab_content">
												<div class="tabs_tab" style="display: block;">
													<ion:articles tag="ul" order_by="date DESC" limit="5">
													<!-- Article -->
														<ion:article>
															<li>
																<div class="alignleft">
																	<figure>
																		<ion:medias type="picture" method="height">
																			<ion:media>
																				<a href="<ion:link />">
																					<img src="<ion:media:src method='width' size='15' unsharp='true' />" alt="<ion:media:alt />" />
																				</a>
																			</ion:media>
																		</ion:medias>
																	</figure>
																</div>
																<div class="ovh">
																	<a title="<ion:title />" href="<ion:article:url />"><ion:title /></a>
																	<abbr title="<ion:article:date format="d-m-Y" />" class="published"><ion:article:date format="d/m/Y" /></abbr>
																</div>
																<div class="cl"></div>
															</li>
														</ion:article>
													</ion:articles>
												</div>
											</div>
										</div>
									</aside>
								</div>
							</section>
<!-- __________________________________________________ Finish Sidebar -->	

						</div>	
					</div>		
					</ion:article>
				</ion:page>
				</section>
<!-- __________________________________________________ Finish Middle -->


<!-- ****************************************  WILDFLAT MARKUP  ********************************************* -->


<!--div class="container">

	<div class="row-fluid">
		<div class="span12 page-header">
			<h1>
				<ion:page:title />
				<ion:page:subtitle tag="small" />
			</h1>
		</div>
	</div>

	<div class="row-fluid">
		<div class="span12">
			<ion:page:breadcrumb tag="ul" article="true" child-tag="li" class="breadcrumb" />
		</div>
	</div>

	<div class="row-fluid">

		<div class="span8">
			<ion:page>
				<ion:article>

					<ion:medias type="picture" limit="1" method="width">
						<img class="img-polaroid" src="<ion:media:src method='width' size='760' unsharp='true' />" alt="<ion:media:alt />" />
					</ion:medias>

					<ion:title tag="h2" />
					<ion:content />

					<hr />

					<ion:medias type="picture" tag="ul" class="thumbnails">
						<ion:media>
							<li class="span2 <ion:index /> <ion:if key="index" expression="index != 1 && (index-1) %4!=0">ml10</ion:if>">
								<a href="<ion:src />" class="thumbnail fancybox" data-fancybox-group="thumb<ion:article:get key="id_article" />">
									<img src="<ion:src method="adaptive" size="160,100" unsharp="true" />" title="<ion:title />" alt="<ion:alt />" />
								</a>
							</li>
						</ion:media>
					</ion:medias>

					<script type="text/javascript" src="<ion:theme_url />assets/js/jquery.fancybox.pack.js"></script>
					<script type="text/javascript" src="<ion:theme_url />assets/js/jquery.mousewheel.min.js"></script>
					<script type="text/javascript">
						$('.fancybox').fancybox({
							helpers : {
								buttons : {}
							}
						});
					</script>

					<hr />

					<p class="center">
						<ion:article:writer><ion:name /></ion:article:writer> |
						<ion:date format="long" /> |
						<ion:article:categories:list link="true" separator=", " prefix="lang('categories') : " /> |
						<ion:article:tags:list link="true" separator=", " prefix="lang('title_tags') : " />

					</p>

				</ion:article>
			</ion:page>
		</div>

		<div class="span4">

			<h3 class="dotted-title"><ion:lang key="title_categories" /></h3>

			<ion:page:categories tag="ul" class="nav nav-pills nav-stacked">
				<ion:category>
					<li><a href="<ion:url />"><ion:title /></a></li>
				</ion:category>
			</ion:page:categories>

			<h3 class="dotted-title"><ion:lang key="title_archives" /></h3>

			<ion:archives with_month="true" tag="ul" class="nav nav-pills nav-stacked">
				<li><a class="<ion:archive:active_class />" href="<ion:archive:url />"><ion:archive:period /></a></li>
			</ion:archives>

		</div>
	</div>

</div--> <!-- Container End -->

<ion:partial view="footer" />
