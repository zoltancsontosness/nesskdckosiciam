<ion:partial view="header" /> 
    <div class="row edge">
      <div class="col-md-12">  
         <ion:page id="slideshow">
          <!-- RESPONSIVE SLIDER - START -->
          <div class="responsive-slider" data-spy="responsive-slider" data-autoplay="true" data-interval="5000" data-transitiontime="300">
            <div class="slides" data-group="slides">
              <ul>
                <ion:articles>
                  <ion:article>
                    <ion:media limit="1">
                      <li>
                        <div class="slide-body banner" data-group="slide">
                          <img src="<ion:media:src size="1170, 400" method="adaptive" />" alt="<ion:media:title />" />

                        </div>
                      </li>
                    </ion:media>
                  </ion:article>
                </ion:articles>
              </ul>
            </div>
            <a class="slider-control left" href="#" data-jump="prev"><i class="glyphicon glyphicon-chevron-left"></i></a>
            <a class="slider-control right" href="#" data-jump="next"><i class="glyphicon glyphicon-chevron-right"></i></a>
          </div>
          <!-- RESPONSIVE SLIDER - END -->
        </ion:page>    
      </div><!-- /.col-md-12 -->
    </div><!-- /.row -->     
     <br>
    <div class="row artist">
      <ion:page id="aktuality"> 
        <div class="col-md-12 articles aktuality">
          <ion:page:title tag="h1" />
          <hr />
          <ion:articles limit="4">
          <ion:article>
           <div class="col-md-3 col-sm-3 col-xs-12 articles aktuality articles-center">
            <ion:article:title tag="h3" characters="20"/>
            <ion:medias type="picture" limit="1"> 
              <div class="bum">
                <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />">
                  <img src="<ion:media:src size="200, 150"  method="adaptive" />" alt="<ion:media:title />" class="img-responsive  media-galery" />
                </a>
              </div>
              </ion:medias>               
              <ion:article:content characters="80"/>            
              <p><a href="<ion:article:url />" class="btn btn-primary pull-button" role="button">Celý článok</a></p>             
            </div>
            </ion:article>
          </ion:articles> 
          
        </div> 
      </ion:page>             
      </div>
      <div class="row artist">
      <ion:page id="koncerty">
        <div class="col-md-12 articles aktuality">
          <ion:page:title tag="h1" />
          <hr />
          <ion:articles limit="6">
          <ion:article>
            <div class="col-md-3 col-sm-3 col-xs-12 articles aktuality articles-center">
              <ion:article:title tag="h3"  characters="20" />      
                <ion:article:content characters="80"/>
                <p><a href="<ion:article:url />" class="btn btn-primary pull-button" role="button">Podrobnosti</a></p>             
            </div>
            </ion:article>
          </ion:articles>
        </div>
      </ion:page>
    </div>
    <script> 
           $( document ).ready( function() {
  $('.responsive-slider').responsiveSlider({
    autoplay: true,
    interval: 5000,
    transitionTime: 300
  });
});
    
    </script> 
<ion:partial view="footer" />