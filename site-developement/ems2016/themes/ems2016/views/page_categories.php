<ion:partial view="header" breadcrumb="true" />

<div class="row">
  <div class="col-lg-8 col-md-8 col-sm-12">
    <div class="section read_post_list gallery_list">
      <h2 class="section_title section_title_big"><ion:page:title /></h2>
      <ion:page id="playgrounds">
        <div class="margin-top-20">
          <ion:categories order_by_nb="true">
            <a class="button button_type_2 button_grey_light" href="<ion:category:url />">
              <ion:category:title tag="span" />
              <span class="badge"><ion:category:nb_articles /></span>
            </a>
          </ion:categories>
        </div>
      </ion:page>
    </div>
  </div>

  <div class="col-lg-4 col-md-4 col-sm-12">
    <ion:partial view="modules/panel_recently_added" />
  </div>
</div>

<ion:partial view="footer" />