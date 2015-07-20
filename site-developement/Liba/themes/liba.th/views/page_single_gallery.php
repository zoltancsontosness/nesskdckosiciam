<ion:partial view="header" />

<ion:article>
    <div class="page-header">
      <ion:title tag="h1" />
    </div>

  <div class="row">
    <ion:article:medias type="picture">
      <div class="col-sm-4 col-md-2 col-xs-8 col-xs-offset-2 col-sm-offset-0 same-height">
        <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="thumbnail">
          <img src="<ion:media:src />" alt="<ion:media:title />" class="img-responsive">
        </a>
      </div>
    </ion:article:medias>
  </div>
</ion:article>

<ion:partial view="footer" />