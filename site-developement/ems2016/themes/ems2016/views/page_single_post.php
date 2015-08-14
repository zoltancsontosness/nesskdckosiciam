<ion:partial view="header" />

<ion:article>
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12">
      <div class="section">

        <div class="clearfix page_theme">
          <div class="f_left">
            <div class="post_image_buttons">
              <div class="buttons_container">
                <a href="<ion:page:url />" class="button banner_button <ion:page:name />"><ion:page:title /></a>
              </div>
            </div>
            <div class="event_date"><ion:date format="complete" /></div>
          </div>
        </div>

        <h2 class="section_title section_title_big"><ion:title /></h2>
        <div class="text_post_block">
          <div class="scale_image_container">
            <ion:medias limit="1" type="picture">
              <img src="<ion:media:src size='750,375' method='adaptive'/>" alt="<ion:media:title />" >
            </ion:medias>
          </div>
          <ion:content tag="p" />
        </div>

        <div class="text_post_section post_controls">
          <div class="clearfix">
            <ion:prev>
              <div class="prev_post">
                <a href="<ion:url />" class="button button_type_icon_medium button_grey_light"><ion:lang key="btn_previous_post" /><i class="fa fa-angle-left"></i></a>
                <a href="<ion:url />"><h5><ion:title characters="50" /></h5></a>
              </div>
            </ion:prev>
            <ion:next>
              <div class="next_post">
                <a href="<ion:url />" class="button button_type_icon_medium button_grey_light"><ion:lang key="btn_next_post" /><i class="fa fa-angle-right"></i></a>
                <a href="<ion:url />"><h5><ion:title characters="50"/></h5></a>
              </div>
            </ion:next>
          </div>
        </div>

        <?php if('<ion:medias:count />' > 1): ?>
        <div class="section photo_gallery">
          <h3 class="section_title"><ion:lang key="title_gallery" /></h3>
          <div class="row">
            <div id="owl-demo-10">
              <ion:medias type="picture">
                <div class="item scale_image_container with_buttons">
                  <a href="#"><img src="<ion:media:src size='555,374' method='adaptive' />" alt="<ion:media:title/>" class="scale_image"></a>
                  <div class="open_buttons clearfix">
                    <div class="f_left">
                      <a href="<ion:media:src />" role="button" class="jackbox jackbox_button button button_grey_light" data-group="<ion:article:name />"><i class="fa fa-search-plus"></i></a>
                    </div>
                  </div>
                </div>
              </ion:medias>
            </div>
          </div>
        </div>
        <?php endif ?>
      </div>        
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12">
      <!--      SIDEBAR-->
    </div>
  </div>

</ion:article>

<ion:partial view="footer" />