                         
  <ion:partial view="header" />
         <ion:articles>
          <ion:article> 
          <div class="col-md-12">
                <ion:media type="picture" limit="1">
                    <img src="<ion:media:src size="1170, 350" method="adaptive" />" alt="<ion:media:title />" class="crop-img img-responsive">
                </ion:media>
            </div>
            <div class="row">
              <div class="col-md-12">               
                <ion:article:title tag="h2" />                   
                <ion:article:content /> 
              </div>
            </div>
            <hr />
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