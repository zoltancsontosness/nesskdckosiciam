<ion:partial view="header" />

<div class="row">
  <div class="col-md-12">
    <ion:page:title tag="h1" />
    <hr/>
  </div>

  <div class="col-md-9">
    <ion:articles>
      <ion:article>
        <div class="col-sm-4 col-xs-8 col-xs-offset-2 col-sm-offset-0">
          <a href="<ion:article:url />" class="no-decorations">
            <div class="thumbnail thumb-gallery-item">
              <div class="thumb-img-wrapper">
                <ion:article:medias type="picture" limit="1">
                  <img src="<ion:media:src />" alt="<ion:media:title />">
                </ion:article:medias>
              </div>
              <div class="caption">
                <ion:title tag="h4" />
              </div>
            </div>
          </a>
        </div>
      </ion:article>
    </ion:articles>
  </div>
  
  <div class="col-md-3">
    <div class="btn-group-vertical" role="group" >
      <ion:pages parent="fotogaleria">
        <a class="btn btn-default" href="<ion:page:url />">
          <ion:page:title />
        </a>
      </ion:pages>
    </div>
  </div>
</div>

<ion:partial view="footer" />