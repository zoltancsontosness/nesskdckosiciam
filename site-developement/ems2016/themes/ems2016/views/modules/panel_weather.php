<div class="section appear-animation fadeInDown appear-animation-visible" data-appear-animation="fadeInDown" data-appear-animation-delay="1150" style="animation-delay: 1150ms;">
  <h3 class="section_title"><ion:lang key='asset_title' /></h3>
  <div class="weather_widget">
    <div class="weather_info clearfix">
      <div>
        <h2 id="header">Košice</h2>
        <div class="day_number">
          <span id="temp"></span>
          <span class="degree"><ion:lang key='degree' /></span>
        </div>
      </div>
      <div>
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
    var url = "http://api.openweathermap.org/data/2.5/forecast/daily?id=724443&units=metric";
    var xmlhttp = new XMLHttpRequest();

    xmlhttp.onreadystatechange = function () {
      if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
        var result = JSON.parse(xmlhttp.responseText);
        handleRequest(result);
      }
    }

    xmlhttp.open("GET", url, true);
    xmlhttp.send();
  });

  function handleRequest(result) {
    var today = result['list'][0];

    document.getElementById("temp").innerHTML = today.temp.day;
    document.getElementById("icon").className += " mc-" + today['weather'][0].icon + " mc-lg";
    document.getElementById("wind").innerHTML = today.speed + "";
    document.getElementById("humidity").innerHTML = today.humidity + "%";
    document.getElementById("pressure").innerHTML = Math.round(today.pressure);

    date_list = document.getElementById("date_list");

    for (index = 0; index < 5; index++) {
      day = result['list'][index];
      weekday = new Date(day.dt * 1000);

      var days = ['PON', 'UTO', 'STR', 'ŠTV', 'PIA', 'SOB', 'NED'];

      $('#date_list').append('<li><div>' + Math.round(day.temp.day) + '<span class="degree">°C</span></div><div>' + days[weekday.getDay()] + '</div></li>')
    }
  }
</script>