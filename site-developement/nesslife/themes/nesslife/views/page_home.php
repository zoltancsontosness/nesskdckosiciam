<ion:partial view="header" />
    
    <div class="row">
      <div class="col-sm-9 col-md-9">
        <ion:page id="slideshow">
          <div class="camera_wrap camera_azure_skin" id="camera_wrap">
            <ion:articles>
              <ion:article>
                <ion:media limit="1">
                  <div data-src="<ion:media:src />" <!-- data-link="<ion:article:url />" -->>
                    <div class="camera_caption fadeFromBottom"><ion:article:title /></div>
                  </div>
                </ion:media>
              </ion:article>
            </ion:articles>
          </div><!-- /#camera_wrap_1 -->
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

    <script>
      jQuery('#camera_wrap').camera({
        time: 2000,
        height: '40%',
        playPause: false,
      	loader: 'none',
      	pagination: false 
      });
    </script>
    
    <div class="row puzzle">
      <div class="col-sm-4">
        <h2><span>News</span></h2>
        <img src="<ion:theme_url/>assets/images/human-resources.jpg" alt="news">
        <h4>TIMESHEETS</h4>
        <p>
          Blíži sa koniec mesiaca, nezabudnite vyplniť timesheety!
        </p>
      </div>
      <div class="col-sm-4">
        <h2><span>Recruitment</span></h2>
        <img src="<ion:theme_url/>assets/images/manual-tester-vix.jpg" alt="news">
        <h4>Manual Tester</h4>
        <p>
          VIX technology
        </p>
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