<ion:partial view="header" />

<div class="page-header">
  <ion:page:title tag="h1" class="page_title" />
</div>

<div class="row footer-block article-divider">
  <ion:articles>
    <ion:article:index is="1">
      <div class="col-md-3 footer-col">
        <ion:article>
          <ion:title tag="h2" class="page_title" />

          <ion:article:medias type="picture">
            <img src="<ion:media:src />" class="img-footer-partner no-drag desaturate" alt="<ion:media:title />" />
          </ion:article:medias>
        </ion:article>
      </div>
    </ion:article:index>

    <ion:article:index is="2">
      <div class="col-md-7 footer-col">
        <ion:article>
          <ion:title tag="h2" class="page_title" />

          <ion:article:medias type="picture">
            <img src="<ion:media:src />" class="img-footer-partner no-drag desaturate" alt="<ion:media:title />" />
          </ion:article:medias>
        </ion:article>
      </div>
    </ion:article:index>

    <ion:article:index is="3">
      <div class="col-md-2 promoters-panel footer-col">
        <ion:article>
          <ion:title tag="h2" class="page_title" />
          <ion:medias type="picture">
            <a href="<ion:media:link />" target="_blank">             
              <img src="<ion:media:src />" class="no-drag desaturate" alt="<ion:media:title />" />
            </a>
          </ion:medias>
        </ion:article>
      </div>
    </ion:article:index>

  </ion:articles>
</div>

<ion:partial view="footer" />