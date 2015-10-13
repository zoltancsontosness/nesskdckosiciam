<a href="<ion:article:url />">
  <ion:article:element:event-info:items>
    <div class="scale_image_container">
      <ion:article:medias limit="1" type="picture">
        <img src="<ion:media:src size='555,225' method='adaptive' />" alt="<ion:media:title />" class="scale_image">
      </ion:article:medias>
      <?php if('<ion:article:medias:count />' == 0) : ?>
      <img src="<ion:theme_url/>assets/img/defaults/event_555x225.jpg" alt="<ion:media:title />" class="scale_image">
      <?php endif; ?>

      <div class="caption_type_1">
        <div class="caption_inner">
          <div class="clearfix">
            <div class="event_date text-nowrap">
              <span class="date hidden"><ion:date:value format="m/d/o" /></span>
              <i class="fa fa-calendar fa-fw"></i>
              <ion:date:value format="complete" />
            </div>
            <ion:article:title tag="h3" />
            <p class="event_date">
              <ion:article:categories:list separator=", " />
            </p>
          </div>
        </div>
      </div>
    </div>
  </ion:article:element:event-info:items>
</a>