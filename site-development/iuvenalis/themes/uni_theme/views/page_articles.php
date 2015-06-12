<ion:partial view="header" />

    <div class="row">
      <div class="col-md-12">
        <ion:page:title tag="h1" />
        <hr />
      </div>
    </div>
  
    <div class="row">
      <ion:articles pagination="8">
      <div class="col-md-3 col-sm-4">     
        <div class="media">
              <h3 class="media-heading"><ion:article:title characters="20" /></h3>
              <ion:article:media type="picture" limit="1">
              <img src="<ion:media:src size="320, 180" method="adaptive" />" alt="<ion:media:title />" class="media-object media-object-img">
            </ion:article:media>             
            <ion:article:content characters="100" />
            <p><a href="<ion:article:url />" class="btn btn-primary pull-button" role="button">Album</a></p>
        </div>
      </div>
      </ion:articles>
      <ion:articles:pagination pagination="6" />  
    </div>
                                   
                                   
<ion:partial view="footer" />