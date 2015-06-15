<ion:partial view="header" />

<div class="page-header">
  <ion:article:title tag="h1" class="page_title" />
</div>

<div class="row">
  <ion:article:medias type="picture">
    <div class="col-xs-6 col-sm-3 col-md-3 col-lg-2">
      <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="thumbnail">
        <img src="<ion:media:src size="200, 150" method="adaptive" />" alt="<ion:media:title />">
      </a>
    </div>
  </ion:article:medias>
</div>

<ion:partial view="footer" />