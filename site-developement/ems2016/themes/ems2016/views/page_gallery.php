<ion:partial view="header" breadcrumb="true"/>

<ion:page>
  <div class="section read_post_list tabs_content type_2">
    <h2 class="section_title section_title_big"><ion:title /></h2>

    <?php $counter=0; ?>
    <ion:articles:article>
      <?php if($counter == 0): $counter++; ?>
      <ul class="row">
        <?php else: $counter++; endif; ?>
        <li class="col-lg-3 col-md-6 col-sm-6 col-xs-6">
          <div class="section_post_left">
            <ion:medias limit="1" type="picture">
              <div class="scale_image_container">
                <a href="<ion:article:url />">
                  <img src="<ion:media:src size='555,374' method='adaptive' />" alt="<ion:media:title />" class="scale_image">
                </a>
              </div>
            </ion:medias>
            <div class="clearfix">
              <div class="f_left">
                <div class="event_date"><ion:date format="complete" /></div>
              </div>
            </div>
            <div class="post_text">
              <h4 class="post_title"><a href="<ion:url />"><ion:title /></a></h4>
            </div>
          </div>
        </li>
        <?php if($counter == 4) : $counter=0; ?>
      </ul>
      <?php endif; ?>
    </ion:articles:article>

  </div>
  <div class="pagination_block">
    <ion:articles:pagination />
  </div> 
</ion:page>

<ion:partial view="footer" />