<div class="section section_post_left" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
  <?php $current_page = '<ion:page:name />'; $displayed=false; ?>
    <ion:pages pages="news,articles,events" display_hidden="true">
      <ion:page>
        <?php if ($current_page != '<ion:name />' && !$displayed): $displayed=true; ?>
          <h3 class="section_title <ion:name />"><ion:title /><a href="<ion:url />" class="button button_grey view_button pull-right"><ion:lang key="show_all"/> <ion:title /></a></h3>

          <ion:articles:article limit="1">
            <ion:medias limit="1" type="picture" size="555,225" method="adaptive">
              <div class="scale_image_container">
                <a href="<ion:article:url />"><img src="<ion:media:src />" alt="<ion:media:title />" class="scale_image"></a>
              </div>
            </ion:medias>

            <div class="post_text">
              <h2 class="post_title"><a href="<ion:url />"><ion:title /></a></h2>
              <p>
                <ion:content function="strip_tags" characters="175" />
              </p>
            </div>
          </ion:articles:article>

          <ul class="post_list">
            <ion:articles:article range="2,4">

              <li class="clearfix">
                <ion:medias limit="1" type="picture" size="165,110" method="adaptive">
                  <div class="scale_image_container">
                    <a href="<ion:article:url />"><img src="<ion:media:src />" alt="<ion:media:title />" class="scale_image"></a>
                  </div>
                </ion:medias>
                <div class="post_text">
                  <a href="<ion:url />"><h4><ion:title /></h4></a>
                  <div class="event_date">
                    <ion:date format="long" />
                  </div>
                </div>
              </li>

            </ion:articles:article>
          </ul>
          <?php endif; ?>
      </ion:page>
    </ion:pages>
</div>