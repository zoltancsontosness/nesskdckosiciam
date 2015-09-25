<ion:partial view="header" breadcrumb="yes_please" />

<ion:article>
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12">
      <div class="section">
        <h2 class="section_title section_title_big"><ion:title /></h2>
      </div>

      <ion:medias type="picture" limit="1">
        <div class="scale_image_container with_buttons pull-left margin-right-25">
          <img src="<ion:media:src size='360,280' method='border' color='#ffffff' />" alt="<ion:media:title/>" class="scale_image">
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
    <div class="col-lg-4 col-md-4 col-sm-12">
      <div class="section side_bar_banners clearfix">
        <h3 class="section_title">Informácie</h3>

        <div class="product_description">
          <ion:element:club-info>
            <ion:items>
              <table class="table table-vertical">
                <tr>
                  <td>
                    Adresa
                  </td>
                  <td>
                    <ion:address:value />
                  </td>
                </tr>
                <tr>
                  <td>
                    Email
                  </td>
                  <td>
                    <ion:email:value />
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
          </ion:element:club-info>
        </div>
        <ion:partial view="modules/panel_share" />
        <ion:partial view="modules/panel_report" />
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