<ion:partial view="header" />

<ion:articles>
  <ion:article>
    <div class="row">
      <div class="col-md-12">
        <div class="page-header">
          <ion:title tag="h1" class="page_title" />
        </div>
        <ion:article:content />
      </div>
    </div>
    <hr />
    <div class="row">
      <ion:article:medias type="picture">
        <div class="col-xs-12 col-sm-4 col-md-3">
          <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="thumbnail">
            <img src="<ion:media:src size="200, 150" method="adaptive" />" alt="<ion:media:title />">
          </a>
        </div>
      </ion:article:medias>
    </div>
  </ion:article>
</ion:articles>

<ion:partial view="footer" />