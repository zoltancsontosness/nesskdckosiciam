<style>
#calendarHeader td {
  width: 14.2857%;
}
</style>
                <div class="section calendar" data-appear-animation="fadeInDown" data-appear-animation-delay="750">
                  <h3 class="section_title">Calendar</h3>
                  <table id="calendarHeader">
                    <thead>
                      <tr>
                        <th><button id="calendarPrevMonth"> &lt; </button></th>
                        <th colspan="5" id="calendarDate"></th>
                        <th><button id="calendarNextMonth"> &gt; </button></th>
                      </tr>
                    </thead>
                    <tr>
                      <td>Po</td>
                      <td>Ut</td>
                      <td>St</td>
                      <td>Št</td>
                      <td>Pia</td>
                      <td>So</td>
                      <td>Ne</td>
                    </tr>
                  </table>
                  <table id="calendarDays">
                    <tr>
                      <td>1</td>
                      <td class="link"><a href="#">2</a></td>
                      <td>3</td>
                      <td>4</td>
                      <td>5</td>
                      <td>6</td>
                      <td>7</td>
                    </tr>
                    <tr>
                      <td>8</td>
                      <td>9</td>
                      <td>10</td>
                      <td class="current">11</td>
                      <td>12</td>
                      <td>13</td>
                      <td>14</td>
                    </tr>
                    <tr>
                      <td class="link"><a href="#">15</a></td>
                      <td>16</td>
                      <td>17</td>
                      <td>18</td>
                      <td>19</td>
                      <td>20</td>
                      <td>21</td>
                    </tr>
                    <tr>
                      <td>22</td>
                      <td>23</td>
                      <td>24</td>
                      <td>25</td>
                      <td class="link"><a href="#">26</a></td>
                      <td>27</td>
                      <td>28</td>
                    </tr>
                    <tr>
                      <td class="link"><a href="#">29</a></td>
                      <td>30</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                  </table>
                </div>

                
<script type="text/javascript" language="JavaScript">

var months = ["Január", "Február", "Marec", "Apríl", "Máj", "Jún", "Júl", "August", "September", "Október", "November", "December"];
var currentDate = new Date();

document.getElementById("calendarPrevMonth").addEventListener("click", function(){
  currentDate = new Date(new Date(currentDate).setMonth(currentDate.getMonth()-1));
  showCalendar();
});

document.getElementById("calendarNextMonth").addEventListener("click", function(){
  currentDate = new Date(new Date(currentDate).setMonth(currentDate.getMonth()+1));
  showCalendar();
});

function showCalendar () {
  document.getElementById("calendarDate").innerHTML = months[currentDate.getMonth()] + ' ' + currentDate.getFullYear();
  var days = "<tr>";
  for (i = 0; i < 5; i++) {

  }
  days += "</tr>";
}

showCalendar();


// parser pre oake
var getLocation = function(href) {
    var l = document.createElement("a");
    l.href = href;
    return l;
};
var l = getLocation("http://www.eskoly.sk/watsonova61/jedalen");
console.debug(l.hostname)






</script>                                   