<div class="section" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
  <h3 class="section_title"><ion:lang key="title_random_playgrounds" /></h3>

  <ion:page id="playgrounds">
    <ion:articles limit="4" order_by="RAND()">
      <ion:article:medias limit="1" type="picture" size="500,225" method="adaptive">
        <div class="scale_image_container">
          <a href="<ion:article:url />">
            <img src="<ion:media:src />" alt="<ion:media:alt />" class="scale_image">
          </a>

          <div class="caption_type_1">
            <div class="caption_inner">
              <div class="clearfix">
                <a href="<ion:article:url />" class="button banner_button health">
                  <ion:article:categories:list count="1" />
                </a>
                <div class="event_date">
                  <ion:article:date format="long" />
                </div>
              </div>
              <a href="<ion:article:url />">
                <ion:article:title tag="h3" />
              </a>
            </div>
          </div>

        </div>
      </ion:article:medias>
    </ion:articles>
  </ion:page>

</div>