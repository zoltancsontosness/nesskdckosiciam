<div class="section" data-appear-animation="fadeInDown" data-appear-animation-delay="350">
  <h3 class="section_title"><ion:lang key="title_coming_events" /></h3>

  <ion:page id="events">
    <ion:articles:article limit="3" order_by="date desc">
      <ion:partial view="helpers/tile_event" />
    </ion:articles:article>
  </ion:page>
</div>