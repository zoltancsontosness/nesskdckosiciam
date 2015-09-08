<div class="section" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
  <h3 class="section_title"><ion:lang key='asset_title'/></h3>
  <div class="weather_widget">
    <div class="weather_info clearfix">
      <div>
        <h2>Košice</h2>
        <div class="day_number">
          <span id="temp_day"></span><span class="degree">&deg;C</span>/
          <span id="temp_night"></span><span class="degree">&deg;C</span>
        </div>
      </div>
      <div class="hidden-md">
        <i id="icon" class="mc"></i>
      </div>
    </div>
    <div class="date_list info_list">
      <ul class="clearfix">
        <li>
          <i class="fa fa-leaf fa-fw"></i>
          <span id="wind"></span>
        </li>
        <li>
          <i class="fa fa-tint fa-fw"></i>
          <span id="humidity"></span>
        </li>
        <li>
          <i class="fa fa-compress fa-fw"></i>
          <span id="pressure"></span>
        </li>
      </ul>
    </div>
    <div class="date_list">
      <ul class="clearfix" id="date_list"></ul>
    </div>
  </div>
</div>

<script type="text/javascript">
  $(document).ready(function () {
    $.ajax({
      url: 'http://api.openweathermap.org/data/2.5/forecast/daily',
      jsonp: 'callback',
      dataType: 'jsonp',
      cache: false,
      data: {
        q:'kosice',
        units: 'Metric',
        APPID:'8a599ad2eabe8cea39f227601083f799',
      },

      error: function (jqXHR, status) {
        console.error('error getting weather data !'+status);
      },
      
      success: function (response) {
        var today = response.list[0];
        $('#temp_day').text(Math.round(today.temp.day));
        $('#temp_night').text(Math.round(today.temp.night));
        document.getElementById("icon").className += " mc-" + today.weather[0].icon + " mc-lg";
        $('#wind').text(today.speed + "");
        $('#humidity').text(today.humidity + '%');
        $('#pressure').text(Math.round(today.pressure));

        for (index = 1; index <= 5; index++) {
          day = response.list[index];
          weekday = new Date(day.dt * 1000);
         
          var days = ['NED','PON', 'UTO', 'STR', 'ŠTV', 'PIA', 'SOB'];

          $('#date_list').append('<li><div>' + Math.round(day.temp.max) + '<span class="degree">°C</span></div><div>' + days[weekday.getDay()] + '</div></li>')
        }
      },
    });
  });
</script>