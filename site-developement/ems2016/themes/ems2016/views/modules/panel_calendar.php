              <div class="section calendar" data-appear-animation="fadeInDown" data-appear-animation-delay="750">
                <h3 class="section_title">Kalendár</h3>
                <div id="event-calendar"></div>
              </div>

              <script type="application/javascript">
                  $(document).ready(function () {
                      $("#event-calendar").event_calendar({
                          ajax: {
                              url: "<ion:base_url />events",
                              modal: true
                          }
                      });
                  });
              </script>                           