<ion:partial view="header" breadcrumb="yes_please" />
<ion:page>

  <div class="section read_post_list tabs_content type_2">
    <h2 class="section_title section_title_big"><ion:title /></h2>

    <?php $counter=0; ?>
      <ion:articles:article>
        <?php if($counter == 0): $counter++; ?>
          <ul class="row">
            <?php else: $counter++; endif; ?>
              <li class="col-lg-6 col-md-6 col-sm-6 col-xs-6">

                <div class="section_post_left">
                  <ion:medias limit="1" type="picture">
                    <a href="<ion:article:url />">
                      <div class="scale_image_container">
                        <img src="<ion:media:src size='555,150' method='adaptive' />" alt="<ion:media:title />" class="scale_image">

                        <div class="caption_type_1">
                          <div class="caption_inner">
                            <div class="clearfix">

                              <div class="event_date">
                                <i class="fa fa-calendar fa-fw"></i>
                                <ion:article:element:event-info>
                                  <ion:items>
                                    <ion:date:value format="complete" /> -
                                    <ion:length:value format="long" />
                                  </ion:items>
                                </ion:article:element:event-info>
                              </div>
                              <ion:article:title tag="h3" />
                            </div>
                          </div>
                        </div>
                      </div>
                    </a>
                  </ion:medias>
                </div>

              </li>
              <?php if($counter == 2) : $counter=0; ?>
          </ul>
          <?php endif; ?>
      </ion:articles:article>
  </div>
  <?php if('<ion:articles:pagination />' != ''): ?>
    <div class="pagination_block">
      <ion:articles:pagination />
    </div>
    <?php endif; ?>

</ion:page>
<ion:partial view="footer" />