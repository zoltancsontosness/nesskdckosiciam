<ion:partial view="header" />
    
    <ion:articles>
      <ion:article>
        <div class="row">
          <div class="col-md-12">
            <ion:article:title tag="h1" />
            <hr />
            <ion:article:content />  
          </div>
        </div>
        <hr />
        <div class="row">
          <ion:article:medias type="picture">
            <div class="col-xs-12 col-sm-4 col-md-3">
              <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="thumbnail">
                <img src="<ion:media:src size="200, 150" method="adaptive" />" alt="<ion:media:title />">
              </a>
            </div>
          </ion:article:medias>
        </div>
      </ion:article>
    </ion:articles>

	<div class="row">
		<ion:articles type="bloc" authorization="all">
			<ion:article >
				<div class="large-4 columns">
					<div class="panel">
						<ion:title tag="h5" />

						<ion:deny is=''>
							<ion:content  />
						</ion:deny>
						<ion:else>

							<ion:deny is='401'>
								<ion:content paragraph="1"/>
								<p><b>Restriction : 401</b></p>
							</ion:deny>

							<ion:deny is='403'>
								<ion:content paragraph="1"/>
								<p><b>Restriction : 403</b></p>
							</ion:deny>
              
              <ion:deny is='404'>
								<ion:content paragraph="1"/>
								<p><b>Restriction : 404</b></p>
							</ion:deny>

						</ion:else>
					</div>
				</div>
			</ion:article>
		</ion:articles>
	</div>

<ion:partial view="footer" />