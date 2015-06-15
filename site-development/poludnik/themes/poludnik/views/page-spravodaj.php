<ion:partial view="header" />

<div class="page-header">
  <ion:page:title tag="h1" class="page_title" />
</div>

<div class="row">
  <div class="col-md-12">
    <ion:articles>
      <ion:article>
        <ion:medias type="file" limit="1">
          <a href="<ion:media:src />" target="_blank">

            <div class="col-md-3 col-sm-4">
              <div class="thumbnail article_hoverable responsive-element text-center">
                <div class="caption">
                  <div class="col-xs-12">
                    <ion:article:title tag="h2" class="dark" />
                  </div>
                    <ion:article:date:value format="complete" tag="span" class="bold" />
                </div>
                
                <ion:article:medias type="picture" limit="1">
                  <img src="<ion:media:src size="150" method="height" />" alt="<ion:media:title />">
                </ion:article:medias>
              </div>
            </div>
          </a>
        </ion:medias>
      </ion:article>
    </ion:articles>
  </div>
</div>

<hr class="splitter" />

<div class="row">
  <div class="col-md-12">
    <ion:pages level="1" parent="this" display_hidden="true">
      <div class="col-sm-12">
        <button class="btn btn-primary btn-custom btn-light pull-left" onclick="window.location.href='<ion:page:url />'">
          <span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
          <ion:page:title tag="span" />
        </button>
      </div>
    </ion:pages>
  </div>
</div>

<ion:partial view="footer" />