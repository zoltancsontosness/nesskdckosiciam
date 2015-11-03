<div class="section" data-appear-animation="fadeInDown" data-appear-animation-delay="350">
  <h3 class="section_title"><ion:lang key="title_coming_events" /></h3>

  <ion:page id="events">
    <div id="events_list">
      <ul class="list">
        <ion:articles:article order_by="date asc">
          <li>
            <ion:partial view="helpers/tile_event_striped" />
          </li>
        </ion:articles:article>
      </ul>
    </div>
  </ion:page>
</div>

<script>
  $(document).ready(function () {
    var options = {
      valueNames: ['date'],
      page: 4,
    };

    list = new List('events_list', options);

    list.filter(function (item) {
      return (getDate(item._values.date) > getDate('<?php echo date("m/d/o"); ?>'));
    });
    
    list.sort('date', {
      order: "asc"
    });
  });

  function getDate(source) {
    date_parts = source.split('/');
    return new Date(date_parts[2], date_parts[0] - 1, date_parts[1]);
  }
</script>