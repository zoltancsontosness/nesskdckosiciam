<ion:partial view="header" />

    <div class="row">
      <div class="col-md-12">
        <ion:page id="slideshow">
          <div class="camera_wrap camera_azure_skin" id="camera_wrap">
            <ion:articles>
              <ion:article>
                <ion:media limit="1">
                  <div data-src="<ion:media:src />">
                    <div class="camera_caption fadeFromBottom"><ion:article:title /></div>
                  </div>
                </ion:media>
              </ion:article>
            </ion:articles>
          </div><!-- /#camera_wrap_1 -->
        </ion:page>
      </div><!-- /.col-md-12 -->
    </div><!-- /.row -->

    <div class="row">
      <ion:articles>
      <div class="col-md-12">
        <ion:article:title tag="h1" />
        <hr />
        <ion:article:media type="picture" limit="1">
          <img src="<ion:media:src size="240" />" alt="<ion:media:title />" class="img-responsive pull-left img-article">
        </ion:article:media>
        <ion:article:content />
      </div>
      </ion:articles>
    </div>

    <ion:partial view="news" />

<ion:partial view="footer" />