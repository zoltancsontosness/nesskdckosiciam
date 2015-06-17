<ion:partial view="header" />

<div class="page-header">
  <ion:article:title tag="h1" class="page_title" />
</div>

<ion:article>
  <div class="row">
    <div class="col-md-12">

      <div id="data" class="Column1 col-md-6">
        <ion:content tag="p" />
      </div>
      <div id="Column2" class="col-md-6">
        <ion:article:media type="picture" limit="1">
          <img src="<ion:media:src method="adaptive" />" alt="<ion:media:alt />" class="img-responsive center-block">
        </ion:article:media>
      </div>

    </div>
  </div>
  <hr />
  <div class="row">
    <ion:article:medias type="picture">
      <div class="col-xs-6 col-sm-3 col-md-3 col-lg-2">
        <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="thumbnail">
          <img src="<ion:media:src size="200, 150" method="adaptive" />" alt="<ion:media:title />">
        </a>
      </div>
    </ion:article:medias>
  </div>
</ion:article>

<ion:partial view="footer" />