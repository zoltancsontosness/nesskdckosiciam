<div class="section" data-appear-animation="fadeInDown" data-appear-animation-delay="350">
  <h3 class="section_title"><ion:lang key="title_coming_events" /></h3>

  <ion:page id="events">
    <?php $count = 0; ?>

      <ul class="events_list">
        <ion:articles:article order_by="date asc">
          <ion:element:event-info:items>
            <?php 
        $var = strtotime('<ion:length:value format="m/d/o" />');
        ?>
          </ion:element:event-info:items>

          <?php if((time()-(60*60*24)) < $var and $count < 3): $count++; ?>
            <li>
              <ion:partial view="helpers/tile_event_striped" />
            </li>
            <?php endif; ?>
        </ion:articles:article>
      </ul>
  </ion:page>
</div>