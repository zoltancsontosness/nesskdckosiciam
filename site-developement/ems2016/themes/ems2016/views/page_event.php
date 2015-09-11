<ion:partial view="header" breadcrumb="yes_please" />

<ion:article>
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12">
      <div class="section">
        <h2 class="section_title section_title_big"><ion:title /></h2>
      </div>

      <div class="section_7 product_page">
        <div class="row">
         
<!--
          <div class="col-xs-12">
            <ion:medias type="picture" limit="1">
              <div class="scale_image_container with_buttons pull-left" style="width:360px; margin-right:20px; margin-bottom:20px">
                <img src="<ion:media:src size='360' method='width' />" alt="<ion:media:title/>" class="scale_image img-responsive">
                <div class="open_buttons clearfix">
                  <div class="f_left">
                    <a href="<ion:media:src />" role="button" class="jackbox_button button button_grey_light fancy-image" rel="<ion:article:name />"><i class="fa fa-search-plus"></i></a>
                  </div>
                </div>
              </div>
            </ion:medias>

            <div class="text-content text-justify">
            <ion:content />
            </div>
          </div>
-->

          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <ion:medias type="picture" limit="1">
              <div class="scale_image_container with_buttons">
                <a href="#"><img src="<ion:media:src size='555' method='width' />" alt="<ion:media:title/>" class="scale_image"></a>
                <div class="open_buttons clearfix">
                  <div class="f_left">
                    <a href="<ion:media:src />" role="button" class="jackbox_button button button_grey_light fancy-image" rel="<ion:article:name />"><i class="fa fa-search-plus"></i></a>
                  </div>
                </div>
              </div>
            </ion:medias>
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-justify text-content">
            <ion:content />
          </div>
          
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12">
      <div class="section side_bar_banners clearfix">
        <h3 class="section_title"><ion:lang key="title_details" /></h3>

        <div class="product_description">
          <ion:element:event-info>
            <ion:items>
              <table class="table table-vertical">
                <tr>
                  <td>
                    <ion:organizer:label />
                  </td>
                  <td>
                    <ion:organizer:value />
                  </td>
                </tr>

                <tr>
                  <td>
                    <ion:address:label />
                  </td>
                  <td>
                    <ion:address:value />
                    <?php
                      $address_enc = urlencode('<ion:address:value />');
                    ?>
                  </td>
                </tr>

                <tr>
                  <td>
                    <ion:date:label />
                  </td>
                  <td>
                    <ion:date:value format="long" />
                  </td>
                </tr>

                <tr>
                  <td>
                    <ion:length:label />
                  </td>
                  <td>
                    <ion:length:value format="long" />
                  </td>
                </tr>

                <tr>
                  <td>
                    <?php
                      $url = "<ion:webpage:value />";
                      if($url !== ''){
                        $url = checkUrl($url);                  
                      }
                    ?>
                      <?php if($url === ''): ?>
                        <ion:webpage:label tag="span" class="text-muted" />
                        <?php else: ?>
                          <ion:webpage:label />
                          <?php endif; ?>
                  </td>
                  <td>

                    <a href="<?= $url ?>" target="_blank">
                      <?php
                      if($url !== ''){
                      $url = parse_url($url);
                      echo $url['host'];
                    }
                      ?>
                    </a>
                  </td>
                </tr>
              </table>

            </ion:items>
          </ion:element:event-info>
        </div>
        <?php if(isset($address_enc)): ?>
          <div class="clearfix hidden-sm">
            <img src="https://maps.googleapis.com/maps/api/staticmap?center=<?=$address_enc;?>&amp;zoom=17&amp;size=555x374&amp;maptype=roadmap&amp;markers=icon:<ion:theme_url />assets/img/marker.png%7Ccolor:red%7Clabel:A%7C<?=$address_enc; ?>" alt="mapa" class="img-responsive" />
          </div>
          <?php endif; ?>
        <ion:partial view="modules/panel_share" />
      </div>
    </div>
  </div>

</ion:article>

<ion:partial view="footer" />

<?php 
function checkUrl($url){
  $url = parse_url($url);
  if(!array_key_exists('scheme', $url)){
    $url['scheme'] = 'http';
    $url['host'] = '';
  }
  if(!array_key_exists('path', $url)){
    $url['path'] = '';
  }

  return $url['scheme'] . "://" . $url['host'] . $url['path'];
}
?>