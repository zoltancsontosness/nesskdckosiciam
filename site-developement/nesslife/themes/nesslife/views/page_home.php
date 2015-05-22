<ion:partial view="header" />
    
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
          <ion:articles limit="3">
            <ion:article>
              <h4><a href="<ion:article:url />"><ion:article:title /></a></h4>
              <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
              <ion:article:date format="d/m/Y" tag="span" />
              <span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
              <ion:article:categories:list link="false" separator=" / " tag="span" />
              <ion:article:content words="15" />
            </ion:article>
          </ion:articles>
        </ion:page>
      </div>
      <div class="col-sm-4 positions">
        <h2><span>Recruitment</span></h2>
        <ion:page id="vone-pozicie">
          <ion:articles limit="4">
            <ion:article>
              <div class="clearfix">
              <ion:media limit="1">
                <img src="<ion:media:src />" alt="news">
              </ion:media>
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

<ion:partial view="footer" />