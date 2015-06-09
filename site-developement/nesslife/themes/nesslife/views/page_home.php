<ion:partial view="header" />
<ion:user:logged is="true">

    <div class="row">
      <div class="col-sm-9 col-md-9">
        <ion:page id="slideshow">
          <!-- RESPONSIVE SLIDER - START -->
          <div class="responsive-slider" data-spy="responsive-slider" data-autoplay="true" data-interval="5000" data-transitiontime="300">
            <div class="slides" data-group="slides">
              <ul>
                <ion:articles>
                  <ion:article>
                    <ion:media limit="1">
                      <li>
                        <div class="slide-body" data-group="slide">
                          <img src="<ion:media:src size="825, 330" method="adaptive" />">
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
      </div>
      <div class="col-sm-3 col-md-3 rightMenu">
        <a href="#" target="_blank" class="btn btn-blue">Helpdesk</a>
        <a href="#" target="_blank" class="btn btn-blue">SAP help</a>
        <a href="#" target="_blank" class="btn btn-blue">Vacation</a>
        <a href="#" target="_blank" class="btn btn-blue">TimeSheet</a>
        <a href="#" target="_blank" class="btn btn-blue">MyBIZ</a>
        <a href="#" target="_blank" class="btn btn-blue">Cafeteria</a>
        <a href="#" target="_blank" class="btn btn-blue">Služobná cesta</a>
      </div>
    </div><!-- /.row -->
    
    <div class="row puzzle">
      <div class="col-sm-4 news">
        <h2><span>News</span></h2>
        <ion:page id="news">
          <ion:articles limit="4">
            <ion:article>
              <div class="newsItem">
                <h4><a href="<ion:article:url />"><ion:article:title /></a></h4>
                <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                <ion:article:date format="d/m/Y" tag="span" />
                <span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
                <ion:article:categories:list link="false" separator=" / " tag="span" />
                <ion:article:content paragraph="1" />
              </div>
            </ion:article>
          </ion:articles>
        </ion:page>
      </div>
      <div class="col-sm-4 positions">
        <h2><span>Recruitment</span></h2>
        <ion:page id="vone-pozicie">
          <ion:articles limit="4">
            <ion:article>
              <ion:element:rcr-project>
                <ion:items:rcr-position-project>       
                  <ion:values>
                    <?php $lab = '<ion:label />'; ?>
                  </ion:values>
                </ion:items:rcr-position-project>
              </ion:element:rcr-project>
              <div class="clearfix">
              <ion:page id="labs">
                <ion:articles>
                  <?php if (strtolower("<ion:article:title />") == $lab):?>
                    <ion:article:medias type="picture" limit="1">
                      <img src="<ion:media:src />" alt="<?php echo $lab;?>" />
                    </ion:article:medias>
                  <?php endif;?> 
                </ion:articles>
              </ion:page>
              <h4><a href="<ion:article:url />"><ion:article:title /></a></h4>
              </div>
            </ion:article>
          </ion:articles>
        </ion:page>
      </div>
      <div class="col-sm-4">
        <h2><span>Event Calendar</span></h2>
        <!-- Responsive calendar - START -->
      	<div class="responsive-calendar">
          <div class="controls">
              <a class="pull-left" data-go="prev"><div class="btn btn-primary">Prev</div></a>
              <h4><span data-head-year></span> <span data-head-month></span></h4>
              <a class="pull-right" data-go="next"><div class="btn btn-primary">Next</div></a>
          </div>
          <hr />
          <div class="day-headers">
            <div class="day header">Mon</div>
            <div class="day header">Tue</div>
            <div class="day header">Wed</div>
            <div class="day header">Thu</div>
            <div class="day header">Fri</div>
            <div class="day header">Sat</div>
            <div class="day header">Sun</div>
          </div>
          <div class="days" data-group="days">
          </div>
        </div>
        <!-- Responsive calendar - END -->
      </div>
    </div>
    
    <div class="row puzzle">
      <div class="col-sm-3">
        <h2><span>Forum</span></h2>
        <img src="<ion:theme_url/>assets/images/boxes/forum.jpg" alt="">
        <p>Nieco na pokecanie...</p>
      </div>
      <div class="col-sm-3">
        <h2><span>Groups</span></h2>
        <img src="<ion:theme_url/>assets/images/boxes/groups.jpg" alt="">
        <p></p>
      </div>
      <div class="col-sm-3">
        <h2><span>Zľavy</span></h2>
        <img src="<ion:theme_url/>assets/images/boxes/zlavy.jpg" alt="">
        <p></p>
      </div>
      <div class="col-sm-3">
        <h2><span>Anketa</span></h2>
        <p></p>
      </div>
    </div>
    
    <div class="row puzzle">
      <div class="col-sm-3">
        <h2><span>NESS KDC Košiciam</span></h2>
        <img src="<ion:theme_url/>assets/images/boxes/ness-kosiciam.jpg" alt="">
        <p></p>
      </div>
      <div class="col-sm-3">
        <h2><span>Summer club</span></h2>
        <img src="<ion:theme_url/>assets/images/boxes/summerclub.jpg" alt="">
        <p></p>
      </div>
      <div class="col-sm-3">
        <h2><span>AJ:TY</span></h2>
        <img src="<ion:theme_url/>assets/images/boxes/ajty.jpg" alt="">
        <p></p>
      </div>
      <div class="col-sm-3">
        <h2><span>PR & CSR</span></h2>
        <img src="<ion:theme_url/>assets/images/boxes/pr.jpg" alt="">
        <p></p>
      </div>
    </div>
    
    <script type="text/javascript">
      $(document).ready(function () {
        $(".responsive-calendar").responsiveCalendar({
          time: '2015-05',
          events: {
            <ion:page id="events">
              <ion:articles>
                <ion:article>
                  "<ion:article:date format="Y-m-d" />": {"url": "<ion:article:url />"},
                </ion:article>
              </ion:articles>
            </ion:page>
            "2015-06-01": {}
          }
        });
      });    
            
      $( document ).ready( function() {
        $('.responsive-slider').responsiveSlider({
          autoplay: true,
          interval: 3000,
          transitionTime: 300
        });
      });
    </script>

</ion:user:logged>
<ion:user:logged is="false">
  <ion:partial view="401" />
</ion:user:logged>
<ion:partial view="footer" />