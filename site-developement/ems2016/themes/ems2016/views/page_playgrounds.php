<ion:partial view="header" breadcrumb="true" />

<div class="row">
  <div class="col-lg-8 col-md-8 col-sm-12">
    <div class="section">
      <ion:page>

        <ion:category:current:title expression="!=''">
          <h2 class="section_title section_title_big">
                <ion:page:title />
                <small>
                <ion:category:current:title class="text-muted" /> 
                </small>
              </h2>
        </ion:category:current:title>
        <ion:else>
          <h2 class="section_title section_title_big"><ion:page:title /></h2>
        </ion:else>

        <div class="read_post_list">
          <div class="small_post_list">

            <?php $counter=0; $columns=4; ?>
              <ion:articles:article pagination="24" order_by="title ASC">
                <?php if($counter == 0): ?>

                  <ul class="row">
                    <?php endif; $counter++; ?>

                      <li class="col-lg-3 col-md-3 col-sm-3 col-xs-3 post-list-item">
                        <div class="scale_image_container">
                          <a href="<ion:url />">
                            <ion:medias type="picture" limit="1" size="300,200" method="adaptive">
                              <img src="<ion:media:src />" alt="<ion:media:alt />" class="scale_image">
                            </ion:medias>
                          </a>
                          <div class="post_image_buttons">
                            <a href="<ion:url />" class="button banner_button politics">
                              <ion:categories:list separator=", " />
                            </a>
                          </div>
                        </div>
                        <a href="<ion:url />">
                          <ion:title tag="h4" />
                        </a>

                        <ion:element:facility-info>
                          <ion:items>
                            <div class="event_date text-nowrap" title="<ion:street:value /> <ion:number:value />">
                              <ion:street:value /> <ion:number:value />
                            </div>
                          </ion:items>
                        </ion:element:facility-info>
                      </li>
                      <?php if($counter == $columns) : $counter=0; ?>
                  </ul>
                  <?php endif; ?>
              </ion:articles:article>
              <?php if($counter < $columns): ?>
                </ul>
              <?php endif; ?>
          </div>
        </div>

        <?php if('<ion:articles:pagination pagination="24" />' != ''): ?>
          <div class="pagination_block">
            <ion:articles:pagination pagination="24" />
          </div>
        <?php endif; ?>
      </ion:page>
    </div>
  </div>

  <div class="col-lg-4 col-md-4 col-sm-12">
    <ion:partial view="modules/panel_categories" on_page="true"/>
  </div>
</div>


<ion:partial view="footer" />