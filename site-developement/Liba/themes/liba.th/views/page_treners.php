<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <div class="row">
    <ion:articles>
      <ion:article>

        <div class="col-xs-8 col-xs-offset-2 col-sm-offset-0 col-sm-3 col-md-2">
          <a href="<ion:url />">
            <div class="thumbnail same-height text-center thumb-gallery-item">
              <ion:medias limit="1" type="picture">
                <div class="thumb-img-wrapper">
                  <img src="<ion:media:src size='300' method='square' />" alt="<ion:media:alt />" class="img-responsive" />
                </div>
              </ion:medias>
              <div class="caption">
                <ion:title tag="h5" />
                <!--              <ion:content tag="p" class="text-justify" characters="150" />-->
                <p>
                </p>
              </div>
            </div>
          </a>
        </div>

      </ion:article>
    </ion:articles>
  </div>
  <hr />

</ion:page>

<ion:partial view="footer" />