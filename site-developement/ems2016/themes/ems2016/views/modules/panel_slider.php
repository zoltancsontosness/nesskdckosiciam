<div class="wrapper">
  <div class="flex_container">
    <div id="flexslider">
      <ul class="slides">

        <ion:pages pages="news,articles,events" display_hidden="true">
          <ion:page>
            <ion:articles type="headline">
              <ion:article>
                <?php $has_media='<ion:medias:count />'> 0; if ($has_media) :?>
                <li>
                  <div class="scale_image_container">
                    <ion:medias limit="1" type="picture" size='750,450' method='adaptive'>
                      <a href="<ion:url />">
                        <img src="<ion:media:src />" alt="<ion:article:title />" class="scale_image">
                      </a>
                    </ion:medias>
                    <div class="caption_type_1">
                      <div class="caption_inner">
                        <div class="clearfix">
                          <a href="<ion:page:url />" role="button" class="button banner_button <ion:page:name/>">
                            <ion:page:title/>
                          </a>
                          <div class="event_date">
                            <ion:page:name is="events">
                              <i class="fa fa-calendar fa-fw"></i>
                            </ion:page:name>
                            <ion:else>
                              <i class="fa fa-pencil fa-fw"></i>
                            </ion:else>
                            <ion:date format="complete" />
                          </div>
                        </div>
                        <a href="<ion:url />"><h2><ion:title /></h2></a>
                        <ion:content characters="200" />
                      </div>
                    </div>
                  </div>
                </li>
                <?php endif; ?>
              </ion:article>
            </ion:articles>
          </ion:page>
        </ion:pages>
      </ul>
    </div>
  </div>

  <div class="thumbnails_container">
    <ul>
      <ion:pages pages="news,articles,events" display_hidden="true">
        <ion:page>
          <ion:articles type="headline">
            <ion:article>
              <?php $has_media='<ion:medias:count />'> 0; if ($has_media) :?>
              <li class="clearfix">
                <div class="scale_image_container">
                  <ion:medias type="picture" limit="1" size='165,110' method='adaptive'>
                    <img src="<ion:media:src />" alt="<ion:article:title />" class="scale_image">
                  </ion:medias>
                  <div class="post_image_buttons">
                    <a href="<ion:page:url />" class="button banner_button <ion:page:name />">
                      <ion:page:title />
                    </a>
                  </div>
                </div>
                <div class="post_text">
                  <h4><ion:title /></h4>
                  <div class="event_date">
                    <ion:page:name is="events">
                      <i class="fa fa-calendar fa-fw"></i>
                    </ion:page:name>
                    <ion:else>
                      <i class="fa fa-pencil fa-fw"></i>
                    </ion:else>
                    <ion:date format="long" />
                  </div>
                </div>
              </li>
              <?php endif; ?>
            </ion:article>
          </ion:articles>
        </ion:page>
      </ion:pages>
    </ul>
  </div>

</div>