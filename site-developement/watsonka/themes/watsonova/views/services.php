      <div class="leftMenu">
        <ion:tree_navigation tag="ul" class="tour" menu="left_menu">
          <li>
            <a href="<ion:url />"><ion:title /></a>
          </li>
        </ion:tree_navigation>
      </div>

<script>
                                                                    
  $( "ul.tour" ).children( "li" ).has( "ul" ).children( "ul" ).addClass( "submenuUl" );
  
  $( "ul.tour" ).children( "li" ).has( "ul" ).children( "a" ).click(function() {

    var itemClass = $(this).parent( "li" ).children( "ul" ).attr( "class" );
    var ulHeight = $(this).parent( "li" ).children( "ul" ).height();
    var liItemHeight = "43";
                 
    if ( ulHeight != 0 ) {
      $(this).parent( "li" ).children( "ul" ).animate({ height: "0px" }, 300 );
      return false;
    } else {
      $( "ul.tour" ).children( "li" ).children( "ul" ).animate({ height: "0px" }, 300 );
      var ulNumberOfChilds = $(this).parent( "li" ).children( "ul" ).children( "li" ).size();
      var ulHieght = liItemHeight * ulNumberOfChilds + "px";
      $(this).parent( "li" ).children( "ul" ).animate({ height: ulHieght }, 300 );
      return false;
    }
  
  });
</script>

			<!--div class="services" id="services">
				<div class="wrap">
				<ion:page id="projekt-ness-kdc-kosiciam">
					<div class="head">
						<span> </span>
						<h3><ion:title /></h3>
					</div>
					<div class="services-grids">
					<ion:articles>
						<div class="services-grid">
						<ion:article>
							<div class="services-grid-right">
								<h4><ion:title /></h4>
								<ion:medias type="picture" tag="ul" class="thumbnails">
									<ion:media>
										<li class="span4">
											<img src="<ion:src size="100,28" method="adaptive" unsharp="true" />" title="<ion:title />" alt="<ion:alt />" />
										</li>
									</ion:media>
								</ion:medias>								
								<p><ion:content words="22" function="strip_tags" autolink="false" /></p>
								<br />
								<a href="<ion:url />"><ion:lang key="read_more" /></a>
								<div class="clear"> </div>
							</div>
						</ion:article>
						</div>
					</ion:articles>
						<div class="clear"> </div>
					</div>
				</ion:page>
				</div>
				<div class="services-bg"></div>
			</div>
			
			<div class="purches-it">
				<h5><ion:lang key="like_us" /></h5>
				<a href="#contact"><ion:lang key="contact_us" /></a>
				<div class="clear"> </div>
			</div>
			<div class="clear"> </div-->	