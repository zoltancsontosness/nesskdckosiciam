<ion:partial view="header"/>


<div class="slider_bg"><!-- start slider -->
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
</div><!-- end slider -->
<!-- start main -->
<div class="main_bg">
	<div class="container">
		<div class="main row">
			<div class="col-md-3 images_1_of_4 text-center">
				<img class="bg" src="<ion:theme_url/>assets/images/icon1.png" style="max-width: 120px;" alt="just image" />
				<h4><a href="#">Podporte nás 2% z dane</a></h4>

				<p class="para">Budeme Vám veľmi vďačný za Vašu podporu 2% z Vašej dane.</p>
				<a href="single-page.html" class="fa-btn btn-1 btn-1e">Čítať viac &raquo;</a>
			</div>
			<div class="col-md-3 images_1_of_4 bg1 text-center">
				<img class="bg" src="<ion:theme_url/>assets/images/icon2.png" style="max-width: 120px;" alt="just image" />
				<h4><a href="#">Podporovaní študenti</a></h4>

				<p class="para">Momentálne podporujeme 26 študentov, ktorí sú z veľmi chudobných pomerov.</p>
				<a href="single-page.html" class="fa-btn btn-1 btn-1e">Čítať viac &raquo;</a>
			</div>
			<div class="col-md-3 images_1_of_4 bg1 text-center">
				<img class="bg" src="<ion:theme_url/>assets/images/icon3.png" style="max-width: 120px;" alt="just image" />
				<h4><a href="#">Čakatelia na podporu</a></h4>

				<p class="para">Študenti čakajúci na Vašu podporu.</p>
				<a href="single-page.html" class="fa-btn btn-1 btn-1e">Čítať viac &raquo;</a>
			</div>
			<div class="col-md-3 images_1_of_4 bg1 text-center">
				<img class="bg" src="<ion:theme_url/>assets/images/icon4.png" style="max-width: 120px;" alt="just image" />
				<h4><a href="#">Napíšte nám</a></h4>

				<p class="para">V prípade, že chcete podporovať študenta, kontaktujte nás.</p>
				<a href="single-page.html" class="fa-btn btn-1 btn-1e">Čítať viac &raquo;</a>
			</div>
		</div>
	</div>
</div>

<!-- start main_btm -->
<div class="main_btm">
	<div class="container">
		<div class="main row">
			<div class="col-md-6 content_left">
				<img src="<ion:theme_url/>assets/images/pic1.jpg" alt="just image" class="img-responsive" />
			</div>
			<div class="col-md-6 content_right">
				<h4>Príležitosť stať sa dobrovoľníkom v Tanzánií</h4>

				<p class="para">Milí priatelia,</p>

				<p class="para">Sme veľmi potešení, že pre náš projekt sa otvára ďalšia možnosť pomoci nami
					podporovaných škôl v Dongobesh a Maretadu.V spolupráci so Sliezskou diakoniou a CZ SECAV v Třinci je
					možnosť vyslania dobrovoľníka zo Slovenska do našich partnerských škôl v Tanzánií.</p>

				<p class="para">Projekt pod názvom ROK MEDZINÁRODNÝM DOBROVOĽNÍKOM V TANZÁNIÍ zastrešuje Sliezska
					diakonia (www.sdfd.cz) za podpory Európskej únie.</p>

				<p class="para">Prihlásiť sa môžu mladí ľudia vo veku od 17 do 30 rokov hovoriaci anglicky. Viac
					informácií nájdete v letáku.</p>
				<a href="single-page.html" class="fa-btn btn-1 btn-1e">Čítať viac &raquo;</a>
			</div>
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

<ion:partial view="footer" />

