<ion:partial view="header" breadcrumb="true" />
<ion:article>

  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12">
      <div class="section read_post_list gallery_list">
        <h2 class="section_title section_title_big"><ion:title /></h2>

        <div class="text_post_section text-content text-justify">
          <ion:content />
        </div>

        <?php $counter=0 ?>
        <ion:medias type="picture">
          <?php if($counter == 0): $counter++; ?>
          <ul class="row">
            <?php else: $counter++; endif; ?>
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
              <div class="section_post_left">
                <div class="scale_image_container with_buttons">
                  <a href="#"><img src="<ion:media:src size='555,374' method='adaptive' />" alt="<ion:media:title/>" class="scale_image"></a>
                  <div class="open_buttons clearfix">
                    <div class="f_left">
                      <a href="<ion:media:src />" role="button" class="jackbox_button button button_grey_light fancy-image" rel="<ion:article:name />"><i class="fa fa-search-plus"></i></a>
                    </div>
                  </div>
                </div>
              </div>
            </li>
            <?php if($counter == 3) : $counter=0; ?>
          </ul>
          <?php endif; ?>
        </ion:medias>

      </div>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12">

    </div>
  </div>

</ion:article>
<ion:partial view="footer" />