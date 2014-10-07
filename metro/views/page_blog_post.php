<ion:partial view="header" />

<div class="content blog">

	<div class="container">
	
		<ion:page:title tag="h2" />
		<hr />
				
		<div class="row">
			<div class="col-md-9 col-sm-9">					
				<div class="posts">
					<!-- Each posts should be enclosed inside "entry" class" -->
					<!-- Post one -->
					<ion:article>
						<div class="entry">
						 <h2><a href="<ion:article:url />"><ion:title /></a></h2>
						 
						 <!-- Meta details -->
						 <div class="meta">
							<i class="fa fa-calendar"></i> <ion:article:date /> <i class="fa fa-user"></i></span>
						 </div>
						 
						 <!-- Thumbnail -->
						 <div class="bthumb">
							<ion:medias type="picture" method="height">
								<ion:media>
									<a href="<ion:link />"><img src="<ion:media:src method='width' size='200' unsharp='true' />" alt="<ion:media:alt />" class="img-responsive" /></a>
								</ion:media>
							</ion:medias>
						 </div>
						 
						 <!-- Para -->
						 <ion:content />

						</div>
					</ion:article>	
				</div>			
			</div>
			
			<div class="col-md-3 col-sm-3">
			  <!-- Sidebar 2 -->
			   <div class="sidebar">
				  <div class="widget">
					 <ion:page:title tag="h4" />
					 <ul>
						<ion:articles limit="5" order_by="date DESC">
							<ion:article>
								<li><a href="<ion:article:url />"><ion:title /></a></li>
							</ion:article>
						</ion:articles>
					 </ul>
				  </div>
				  
			   </div>                                                

			</div>
		</div>
</div>
 
<ion:partial view="footer" />
