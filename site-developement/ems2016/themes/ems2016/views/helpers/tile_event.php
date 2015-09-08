<ion:medias limit="1" type="picture">
  <a href="<ion:article:url />">
    <div class="scale_image_container">
      <img src="<ion:media:src size='555,225' method='adaptive' />" alt="<ion:media:title />" class="scale_image">

      <div class="caption_type_1">
        <div class="caption_inner">
          <div class="clearfix">

            <div class="event_date text-nowrap">
              <i class="fa fa-calendar fa-fw"></i>
              <ion:article:element:event-info>
                <ion:items>
                  <span class="date hidden"><ion:date:value format="m.d.o" /></span>
                  <ion:date:value format="complete" /> -
                  <?php if('<ion:date:value format="d/m" />' !== '<ion:length:value format="d/m" />') : ?>
                  <ion:length:value format="d.m.Y H:i" />
                  <?php else : ?>
                  <ion:length:value format="H:i" />
                  <?php endif; ?>
                </ion:items>
              </ion:article:element:event-info>
            </div>
            <ion:article:title tag="h3" class="title" />
            <p class="event_date type">
              <ion:article:subtitle />
            </p>
          </div>
        </div>
      </div>
    </div>
  </a>
</ion:medias>