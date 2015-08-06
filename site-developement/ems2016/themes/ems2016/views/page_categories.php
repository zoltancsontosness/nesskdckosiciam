<ion:partial view="header" />

<div class="breadcrumb">
  <div class="container">
    <div>
      <span>
        <ion:page:breadcrumb home="true" separator=" / " />
      </span>
    </div>
  </div>
</div>

<div class="content">
  <div class="container">
    <div class="row">

      <!--
   <div class="col-lg-8 col-md-8 col-sm-12">
  <div class="section read_post_list gallery_list">
    <h2 class="section_title section_title_big"><ion:page:title /></h2>
    <ul class="row">
      <ion:page id="playgrounds">
        <ion:categories>
          <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <div class="section_post_left">
              <div class="scale_image_container with_buttons">
                <a href="<ion:category:url />">
                        <img src="<ion:base_url />files/pictures/categories/<ion:category:name />.jpg" alt="<ion:category:name />" class="scale_image" >
                      </a>
                <div class="open_buttons clearfix">
                  <div class="f_left">
                    <a href="<ion:category:url />" role="button" class="jackbox jackbox_button button button_grey_light">
                      <ion:category:title tag="small" />
                      <i class="fa fa-arrow-right fa-fw"></i>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </ion:categories>
      </ion:page>
    </ul>
  </div>
</div>
-->

      <div class="col-lg-8 col-md-8 col-sm-12">
        <div class="section read_post_list gallery_list">
          <h2 class="section_title section_title_big"><ion:page:title /></h2>
          <ion:page id="playgrounds">
            <div class="margin-top-20">
              <ion:categories>
                <a class="button button_type_2 button_grey_light" href="<ion:category:url />">
                  <ion:category:title tag="span" />
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
  </div>
</div>

<ion:partial view="footer" />