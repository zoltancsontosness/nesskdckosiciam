<ion:partial view="header" />

<div class="page-header">
  <ion:article:title tag="h1" class="page_title" />
</div>

<ion:article>
  <div class="row">
    <div class="col-md-12">
      <div class="col-md-4 col-sm-4 col-xs-6">
        <ion:article:media type="picture" limit="1">
          <img src="<ion:media:src />" alt="<ion:media:title />" class="img-responsive center-block img-article-right">
        </ion:article:media>
      </div>
      <ion:article:content tag="p" />
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