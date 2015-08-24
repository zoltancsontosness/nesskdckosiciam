<ion:partial view="header" breadcrumb="true" />
<ion:page>

  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12">
      <div class="section">
        <h2 class="section_title section_title_big"><ion:title /></h2>
      </div>

      <div class="section_7">
        <ul class="activity_list">
          <ion:articles:article>
            <li>
              <div class="post_text">
                <div class="clearfix">
                  <a href="#" class="f_left"><h5><ion:title /></h5></a>
                </div>
                <div class="event_activity">pridané
                  <ion:date format="long" />
                </div>
                <ion:content characters="175" />
              </div>
              <a href="<ion:url />" class="button button_type_icon_small button_orange margin-top-20 pull-right">
                <ion:lang key="btn_showmore" />
                <i class="fa fa-angle-right fa-fw"></i>
              </a>
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
      <!--SIDEBAR-->
    </div>
  </div>

</ion:page>
<ion:partial view="footer" />