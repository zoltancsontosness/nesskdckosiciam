<ion:partial view="header" />

    <ion:article>
      <div class="row">     
        <div class="col-md-12">
          <ion:article:title tag="h1" />
          <hr />
        </div>
        </div>
      <div class="row">
        <ion:article:medias type="picture">
          <div class="col-xs-12 col-sm-4 col-md-3">
            <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="media-galery">
              <img src="<ion:media:src size="200, 150" method="adaptive" />" alt="<ion:media:title />" class="media-object-video">
            </a>
          </div>
        </ion:article:medias>
      </div>
    </ion:article>
    
<ion:partial view="footer" />