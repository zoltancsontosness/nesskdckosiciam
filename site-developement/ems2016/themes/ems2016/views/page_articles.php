<ion:partial view="header" breadcrumb="true" />

<ion:page>
  <div class="section read_post_list tabs_content type_2">
    <h2 class="section_title section_title_big"><ion:title /></h2>
  </div>
</ion:page>

<div class="row">
  <div class="col-lg-8 col-md-8 col-sm-12">

    <div class="section_7">
      <ul class="activity_list">
        <ion:articles:article>
          <li>
            <div class="post_photo">
              <ion:medias size="80,80" method="adaptive" limit="1" type="picture">
                <img src="<ion:media:src />" alt="<ion:media:title />">
              </ion:medias>
            </div>
            <div class="post_text">
              <div class="clearfix">
                <a href="<ion:url />" class="f_left">
                  <ion:title tag="h5" />
                </a>
              </div>
              <div class="event_activity">
                <ion:date format="complete" />
              </div>
              <p class="var2">
                <ion:content characters="170" function="strip_tags" tag="" />
              </p>
            </div>
          </li>
        </ion:articles:article>
      </ul>

      <?php if('<ion:articles:pagination />' != ''): ?>
        <div class="pagination_block">
          <ion:articles:pagination />
        </div>
        <?php endif; ?>
    </div>
  </div>

  <div class="col-lg-4 col-md-4 col-sm-12">
    <ion:partial view="modules/panel_headlines" />
  </div>
</div>

<ion:partial view="footer" />