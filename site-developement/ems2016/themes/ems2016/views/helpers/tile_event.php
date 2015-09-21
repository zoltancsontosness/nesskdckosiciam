<a href="<ion:article:url />">
  <ion:article:element:event-info:items>
    <div class="scale_image_container event animated fadeIn">
      <div class="event-theme-tab <ion:is-active:value />">
        <ion:is-active:value is="active">
          <i class="fa fa-heartbeat fa-inverse fa-2x"></i>
        </ion:is-active:value>
        <ion:else>
          <i class="fa fa-television fa-inverse fa-2x"></i>
        </ion:else>
        <span><ion:is-active:values:label /></span>
        <span class="type hidden"><ion:is-active:value/></span>
      </div>

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
              <i class="fa fa-calendar fa-fw"></i>
              <span class="date hidden"><ion:date:value format="m.d.o" /></span>
              <ion:date:value format="complete" /> -
              <?php if('<ion:date:value format="d/m" />' !== '<ion:length:value format="d/m" />') : ?>
              <ion:length:value format="d.m.Y H:i" />
              <?php else : ?>
              <ion:length:value format="H:i" />
              <?php endif; ?>
            </div>
            <ion:article:title tag="h3" class="title" />
            <p class="event_date type">
              <ion:article:categories:list separator=", " />
            </p>
          </div>
        </div>
      </div>

    </div>
  </ion:article:element:event-info:items>
</a>