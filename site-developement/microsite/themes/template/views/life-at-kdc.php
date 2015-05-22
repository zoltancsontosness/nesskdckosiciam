<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>
<div class="container">
	<ion:page>
		<h1 class="hero"><ion:page:title /></h1>
		<section class="stories-list">
	      	<div class="row">
		        <ion:medias type="picture" size="756,345" range="1,3" method="adaptive">
		         	<div class="col-sm-4 col-xs-12 story">  
		        		<a href="<ion:page:url />/<ion:media:link />"><img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
		            	<div class="story-info overlay-<ion:media:description />"><ion:media:title /></div></a>
		          	</div>   
		        </ion:medias>
	      	</div>  
	      	<div class="row">
		        <ion:medias type="picture" size="756,345" range="4,6" method="adaptive">
		          	<div class="col-sm-4 col-xs-12 story">
			            <a href="<ion:media:link />"><img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
			            <div class="story-info overlay-<ion:media:description />"><ion:media:title /></div></a>
		          	</div>
		        </ion:medias>
	      	</div>
	      	<div class="row">
		        <ion:medias type="picture" size="756,345" range="7,9" method="adaptive">
		         	<div class="col-sm-4 col-xs-12 story">
		            	<a href="<ion:media:link />"><img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
		        		<div class="story-info overlay-<ion:media:description />"><ion:media:title /></div></a>
		        	</div>      
		        </ion:medias>
	      	</div>
	    </section>
	</ion:page>
</div>

<ion:partial view="footer" />