<ion:partial view="header" breadcrumb="yes_please" />

<ion:article>
  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12">
      <div class="section">
        <h2 class="section_title section_title_big"><ion:title /></h2>
      </div>

      <div class="section_7 product_page">
        <div class="row">
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="product_preview">
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
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-justify text-content">
            <ion:content />
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12">
      <div class="section side_bar_banners clearfix">
        <h3 class="section_title">Informácie</h3>

        <div class="product_description">
          <ion:element:facility-info>
            <ion:items>
              <table class="table table-vertical">
                <!--
                <tr>
                  <td>
                    <ion:ico:label />
                  </td>
                  <td>
                    <ion:ico:value />
                  </td>
                </tr>
-->
                <tr>
                  <td>
                    <ion:address:label />
                  </td>
                  <td>
                    <ion:address:value />
                    <?php $address_enc = urlencode ("<ion:address:value />"); ?>
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
                    <ion:webpage:label />
                  </td>
                  <td>
                    <a href="<ion:webpage:value />" target="_blank">
                          <?php echo parse_url('<ion:webpage:value />')['host']; ?>
                        </a>
                  </td>
                </tr>
              </table>
              <a href="<ion:fblink:value />" class="button button_type_icon_medium btn-block btn-fb" target="_blank">
                Facebook
                <i class="fa fa-facebook"></i>
              </a>
            </ion:items>
          </ion:element:facility-info>
        </div>
        <?php if(isset($address_enc)): ?>
          <div class="clearfix">
            <img src="https://maps.googleapis.com/maps/api/staticmap?center=<?php echo $address_enc; ?>&zoom=17&size=555x374&maptype=roadmap" />
          </div>
          <?php endif; ?>
      </div>
    </div>
  </div>

</ion:article>

<ion:partial view="footer" />