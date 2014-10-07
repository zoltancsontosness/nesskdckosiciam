<ion:partial view="header" />

<div class="content">
  <div class="container">

<ion:page>

  <ion:title tag="h2" />
  <hr />
	
	<!-- Articles iterator -->
	<ion:articles>
		
	<div class="row">
	
		<div class="col-md-12">
		
			<!-- Article -->
			<ion:article>
	 
				<!-- Articles data -->
				<ion:title tag="h3" />
				
				<div class="center">			
					<ion:content />	
				</div>
			
				<div class="img-portfolio">
					
					<div id="portfolio" class="downloads">
					
						<ion:medias type="picture" method="height">							
							<ion:media>
							
								<div class="element two one"><a href="<ion:link />" class="prettyphoto">
								   <img src="<ion:media:src />" alt=""/>
								   <div class="pcap">
									  <h4><ion:title /></h4>
								   </div>                           
							   </a></div>
							
							</ion:media>
						</ion:medias>
					  
					</div>
					
				</div>
				   
			</ion:article>

		</div>
	</div>
	
	<div class="border"></div>
        
    </ion:articles>	
  	
</ion:page>

     </div>
  </div>
  
<ion:partial view="footer" />
