<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <div class="row">
    <div class="col-md-9">
      <ion:articles>
        <ion:article>
          <div class="col-sm-4 col-xs-8 col-xs-offset-2 col-sm-offset-0">
            <a href="<ion:url />">
              <div class="thumbnail thumb-gallery-item">
                <ion:article:medias type="picture" limit="1">
                  <div class="thumb-img-wrapper">
                    <img src="<ion:media:src />" alt="<ion:media:title />">
                  </div>
                </ion:article:medias>
                <div class="caption">
                  <ion:title tag="h5" />
                </div>
              </div>
            </a>
          </div>
        </ion:article>
      </ion:articles>
    </div>

    <div class="col-md-3 col-xs-12">
      <div class="btn-group-vertical btn-block" role="group">
        <ion:pages parent="fotogaleria">
          <a class="btn btn-primary" href="<ion:page:url />">
            <ion:page:title />
          </a>
        </ion:pages>
      </div>

    </div>
  </div>

</ion:page>

<ion:partial view="footer" />