<div class="section photo_gallery side_bar" data-appear-animation="fadeInDown" data-appear-animation-delay="1150">
  <ion:page id="gallery">
    <h3 class="section_title"><ion:title /></h3>
    <a href="<ion:url />" class="button button_grey view_button">
      <ion:lang key="btn_viewall" />
    </a>

    <div class="owl-demo-2">
      <ion:articles limit="3" order_by="date DESC">
        <ion:article>
          <div class="item">
            
            <div class="scale_image_container">
              <ion:medias type="picture" limit="1">
                <a href="<ion:url />">
                  <img src="<ion:media:src />" alt="<ion:media:title />" class="scale_image">
                </a>
              </ion:medias>
              <ion:subtitle is_not="">
                <div class="post_image_buttons">
                  <a href="<ion:url />" class="button banner_button travel">
                    <ion:subtitle />
                  </a>
                </div>
              </ion:subtitle>
            </div>
            
            <div class="clearfix">
              <div class="f_left">
                <div class="event_date">
                  <ion:date format="complete" />
                </div>
              </div>
            </div>
            <div class="post_text">
              <h4 class="post_title"><a href="<ion:url />"><ion:title /></a></h4>
            </div>
            
          </div>
        </ion:article>
      </ion:articles>
    </div>
    
  </ion:page>
</div>