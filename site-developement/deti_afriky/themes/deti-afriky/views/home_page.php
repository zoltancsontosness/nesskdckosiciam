<ion:partial view="header"/>

<!-- start slider -->
<div class="slider_bg">
	<div class="container">
		<div id="da-slider" class="da-slider text-center">
			<ion:page:articles type="slider">
				<ion:article>
					<div class="da-slide">
						<h2>
							<ion:title/>
						</h2>
						<ion:content/>
						<h3 class="da-link"><a href="<ion:url />" class="fa-btn btn-1 btn-1e">Pozrite viac &raquo;</a>
						</h3>
					</div>
				</ion:article>
			</ion:page:articles>
		</div>
	</div>
</div>
<!-- end slider -->

<!-- start main -->
<div class="main_bg">
	<div class="container">
		<div class="main row">
			<ion:articles type="four-columns">
				<ion:article>
					<div class="col-md-3 images_1_of_4 text-center">
						<ion:medias limit="1">
							<img class="bg" src="<ion:media:src />" style="max-width: 120px;" alt="just image" />
						</ion:medias>
						<h4><a href="<ion:url />"><ion:title /></a></h4>
						<div class="para" style="min-height: 75px;"><ion:content /></div>
						<a href="<ion:url />" class="fa-btn btn-1 btn-1e">Čítať viac &raquo;</a>
					</div>
				</ion:article>
			</ion:articles>
		</div>
	</div>
</div>

<!-- start main_btm -->
<div class="main_btm">
	<div class="container">    
    <div class="main row">
      <ion:page id="ostatne-clanky">
        <ion:articles>
          <div class="col-md-6 content_left">
            <ion:article:medias type="picture" limit="1">
				      <img src="<ion:media:src />" alt="<ion:article:title />" class="img-responsive" />
            </ion:article:medias>
          </div>
          <div class="col-md-6 content_right">
				    <h4>
              <ion:article:title />
            </h4>
            <ion:article:content />
				    <a href="<ion:article:url />" class="fa-btn btn-1 btn-1e">Čítať viac &raquo;</a>
          </div>
        </ion:articles>
      </ion:page>
    </div>

		<!--start-img-cursual-->
		<h2>Podporovaní študenti</h2>

		<div id="owl-demo" class="owl-carousel text-center">

			<ion:page id="podporovani-studenti">
				<ion:articles>
					<div class="item">
						<div class="cau_left">
							<ion:article:medias type="picture" limit="1">
								<img class="lazyOwl itemFoto" src="#" data-src="<ion:media:src />" alt="<ion:article:title />" />
							</ion:article:medias>
						</div>
						<div class="cau_left">
							<h4>
								<ion:article:title/>
							</h4>
							<div class="para">
								<ion:article:subtitle/>
								<br/>
								<ion:article:content paragraph="1"/>
							</div>
						</div>
					</div>
				</ion:articles>
			</ion:page>

		</div>
		<!--//End-img-cursual-->
	</div>
</div>

<script>$( ".content_right" ).children( "p" ).addClass( "para" );</script>

<ion:partial view="footer" />