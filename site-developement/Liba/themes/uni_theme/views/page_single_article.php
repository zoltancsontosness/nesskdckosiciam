<ion:partial view="header" />

    <ion:article>
      <div class="row">     
        <div class="col-md-12">
          <ion:article:title tag="h1" />
          <hr />
          <ion:article:media type="picture" limit="1">
            <img src="<ion:media:src />" alt="<ion:media:title />" class="img-responsive pull-right img-article-right">
          </ion:article:media>
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
    
<ion:partial view="footer" />