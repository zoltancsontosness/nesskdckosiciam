<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <ion:articles>
    <ion:article>

      <div class="row">
        <div class="col-md-12">
          <ion:article:title tag="h2" />
          <hr/>
        </div>

        <ion:medias type="picture">
          <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />">
            <div class="col-xs-6 col-sm-3 col-md-2">
              <div class="thumbnail same-height text-center thumb-gallery-item">
                <div class="thumb-img-wrapper">
                  <img src="<ion:media:src size='250' method='square' />" alt="<ion:media:title />">
                </div>
                <div class="caption text-center product-thumbnail">
                  <strong><ion:media:title tag="span" /></strong>
                </div>
              </div>
            </div>
          </a>
        </ion:medias>
      </div>

    </ion:article>
  </ion:articles>
</ion:page>

<ion:partial view="footer" />