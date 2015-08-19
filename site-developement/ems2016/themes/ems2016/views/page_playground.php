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
              <!--thumbnails-->
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
          <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
            <div class="product_description">
              <ion:element:facility-info>
                <ion:items>
                  <table class="table table-vertical">
                    <tr>
                      <td>
                        <ion:ico:label />
                      </td>
                      <td>
                        <ion:ico:value />
                      </td>
                    </tr>
                    <tr>
                      <td>
                        <ion:address:label />
                      </td>
                      <td>
                        <ion:address:value />
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
                  <a href="<ion:fblink:value />" class="button button_type_icon_medium btn-block btn-fb">
                    Facebook
                    <i class="fa fa-facebook"></i>
                  </a>
                </ion:items>
              </ion:element:facility-info>
            </div>
          </div>
        </div>
      </div>
      <div class="section_7">
        <div class="tabs vertical clearfix">
          <!--tabs navigation-->
          <ul class="tabs_nav clearfix">
            <li class=""><a href="#tab-1"><h3>Popis</h3></a></li>
            <li class=""><a href="#tab-2"><h3>Ostatné</h3></a></li>
          </ul>
          <!--tabs content-->
          <div class="tabs_content">
            <div id="tab-1">
              <ion:content />
            </div>
            <div id="tab-2" class="product_review">
              <h3 class="section_title section_title_small_2">...</h3>

              <div class="section">
                <h3 class="section_title section_title_small_2">Komentovať</h3>

              </div>

            </div>
          </div>
        </div>
      </div>
      <!--
    
      <div class="section">
        <div class="shop_product_list var2">
          <h3 class="section_title">Related Products</h3>
          <ul class="row">
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
              <div class="product_item">
                <div>
                  <a href="#">
                    <img src="images/product_230x230.jpg" class="c_image_1" alt="">
                    <img src="images/product_230x230_hover.jpg" class="c_image_2" alt="">
                  </a>
                  <div class="ribbon"><img src="images/sale_ribbon.png" alt=""></div>
                </div>
                <div class="product_info">
                  <a href="#"><h4>Woo Ninja</h4></a>
                  <div class="clearfix">
                    <div class="price">
                      <span>£15</span> £12
                    </div>
                    <div class="rating">
                      <ul class="clearfix rating_list var2">
                        <li>
                          <i class="fa fa-star"></i>
                        </li>
                        <li>
                          <i class="fa fa-star"></i>
                        </li>
                        <li>
                          <i class="fa fa-star"></i>
                        </li>
                        <li>
                          <i class="fa fa-star-o"></i>
                        </li>
                        <li>
                          <i class="fa fa-star-o"></i>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <a href="#" class="button button_type_icon_medium button_orange">Add To Cart<i class="fa fa-shopping-cart"></i></a>
                </div>
              </div>
            </li>
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
              <div class="product_item">
                <div>
                  <a href="#">
                    <img src="images/product2_230x230.jpg" class="c_image_1" alt="">
                    <img src="images/product2_230x230_hover.jpg" class="c_image_2" alt="">
                  </a>
                  <div class="ribbon"><img src="images/sold_out_ribbon.png" alt=""></div>
                </div>
                <div class="product_info">
                  <a href="#"><h4>Happy Ninja</h4></a>
                  <div class="clearfix">
                    <div class="price">
                      £17
                    </div>
                    <div class="rating">
                      <ul class="clearfix rating_list var2">
                        <li>
                          <i class="fa fa-star-o"></i>
                        </li>
                        <li>
                          <i class="fa fa-star-o"></i>
                        </li>
                        <li>
                          <i class="fa fa-star-o"></i>
                        </li>
                        <li>
                          <i class="fa fa-star-o"></i>
                        </li>
                        <li>
                          <i class="fa fa-star-o"></i>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <a href="#" class="button button_type_icon_medium button_orange">Add To Cart<i class="fa fa-shopping-cart"></i></a>
                </div>
              </div>
            </li>
            <li class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
              <div class="product_item">
                <div>
                  <a href="#">
                    <img src="images/product3_230x230.jpg" class="c_image_1" alt="">
                    <img src="images/product3_230x230_hover.jpg" class="c_image_2" alt="">
                  </a>
                </div>
                <div class="product_info">
                  <a href="#"><h4>Happy Ninja</h4></a>
                  <div class="clearfix">
                    <div class="price">
                      £23
                    </div>
                    <div class="rating">
                      <ul class="clearfix rating_list var2">
                        <li>
                          <i class="fa fa-star"></i>
                        </li>
                        <li>
                          <i class="fa fa-star"></i>
                        </li>
                        <li>
                          <i class="fa fa-star"></i>
                        </li>
                        <li>
                          <i class="fa fa-star"></i>
                        </li>
                        <li>
                          <i class="fa fa-star-o"></i>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <a href="#" class="button button_type_icon_medium button_orange">Add To Cart<i class="fa fa-shopping-cart"></i></a>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
   
-->
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12">

    </div>
  </div>








  </div>
</ion:article>

<ion:partial view="footer" />