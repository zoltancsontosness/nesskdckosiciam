<ion:partial view="header" />

    <div class="row">
      <div class="col-md-12">
        <ion:page:title tag="h1" />
        <hr />
      </div>
    </div>
    
    <div class="row">
      <ion:articles>
      <div class="col-md-6 col-sm-6">     
        <div class="media">
          <div class="media-left">
            <ion:article:media type="picture" limit="1">
              <img src="<ion:media:src />" alt="<ion:media:title />" class="media-object media-object-img">
            </ion:article:media>
          </div>
          <div class="media-body">
            <h4 class="media-heading"><ion:article:title /></h4>
            <ion:article:content characters="200" />
            <p><a href="<ion:article:url />" class="btn btn-primary pull-right" role="button">Viac info</a></p>
          </div>
        </div>
      </div>
      </ion:articles>
    </div>

<ion:partial view="footer" />