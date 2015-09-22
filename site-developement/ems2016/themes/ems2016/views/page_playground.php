<ion:partial view="header" breadcrumb="yes_please" />

<ion:article>
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12">
      <div class="section" data-appear-animation="fadeInDown">
        <h2 class="section_title section_title_big"><ion:title /></h2>
      </div>

      <div class="product_preview pull-left margin-right-25 margin-bottom-20">
        <ion:medias type="picture" limit="1">
          <div class="qv_preview product_item">
            <img id="zoom_image" src="<ion:media:src size='360,280' method='adaptive' />" data-zoom-image="<ion:media:src />" alt="<ion:media:title />">
            <a href="<ion:media:src />" role="button" class="jackbox jackbox_button button button_grey_light">
              <i class="fa fa-search-plus"></i>
            </a>
          </div>
        </ion:medias>
        <div class="product_thumbnails_wrap relative m_bottom_3">
          <div class="product_carousel" id="thumbnails">
            <ion:medias type="picture">
              <a href="#" data-image="<ion:media:src size='360,280' method='adaptive'/>" data-zoom-image="<ion:media:src />" class="active">
                <img src="<ion:media:src size='100,100' method='adaptive' />" alt="<ion:media:title />">
              </a>
            </ion:medias>
          </div>
        </div>
      </div>
      
      <div class="text-content text-justify">
        <ion:content />
      </div>

    </div>
    <div class="col-lg-4 col-md-4 col-sm-12">
      <div class="section side_bar_banners clearfix">
        <h3 class="section_title">Informácie</h3>

        <div class="product_description">
          <ion:element:facility-info>
            <ion:items>
              <table class="table table-vertical">
                <tr>
                  <td>
                    <ion:street:label />
                  </td>
                  <td>
                    <ion:street:value />
                    <ion:number:value />
                    <?php
$street = "<ion:street:value />";  
$number = "<ion:number:value />";
$city = "<ion:city:value />";

$address_enc = urlencode($street . " " . $number . " " . $city);
                    ?>
                  </td>
                </tr>
                <tr>
                  <td>
                    <ion:city:label />
                  </td>
                  <td>
                    <ion:city:value />
                  </td>
                </tr>
                <tr>
                  <td>
                    <ion:phone:label />
                  </td>
                  <td>
                    <ion:phone:value />
                  </td>
                </tr>
                <tr>
                  <td>
                    <ion:email:label />
                  </td>
                  <td>
                    <a href="mailto:<ion:email:value />" target="_top">
                      <ion:email:value />
                    </a>
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
              <?php 
$url = "<ion:fblink:value />";
if($url !== ''){
  $url = checkUrl($url);                  
}
              ?>

                <?php if($url !== ''): ?>
                  <a href="<?= $url ?>" class="button button_type_icon_medium btn-block btn-fb" target="_blank">
                Facebook
                <i class="fa fa-facebook"></i>
              </a>
                  <?php endif; ?>
            </ion:items>
          </ion:element:facility-info>
        </div>
        <?php if(isset($address_enc)): ?>
          <div class="clearfix hidden-sm">
            <img src="https://maps.googleapis.com/maps/api/staticmap?center=<?php echo $address_enc; ?>&amp;zoom=17&amp;size=555x374&amp;maptype=roadmap&amp;markers=icon:<ion:theme_url />assets/img/marker.png%7Ccolor:red%7Clabel:A%7C<?php echo $address_enc; ?>" alt="mapa" class="img-responsive" />
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