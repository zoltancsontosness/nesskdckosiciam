<ion:partial view="header" />

<div class="row">
  <ion:article>
    <div class="col-md-12">
      <ion:title tag="h1" />
      <hr />
    </div>

    <ion:article:medias type="picture">
      <div class="col-sm-4 col-md-3 col-xs-8 col-xs-offset-2 col-sm-offset-0">
        <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="thumbnail">
          <img src="<ion:media:src size="200, 150" method="adaptive" />" alt="<ion:media:title />">
        </a>
      </div>
    </ion:article:medias>
    
  </ion:article>
</div>

<ion:partial view="footer" />