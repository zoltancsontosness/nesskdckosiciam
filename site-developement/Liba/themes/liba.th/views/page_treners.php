<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <div class="row">
    <ion:articles>
      <ion:article>
        <div class="col-md-6 same-height">
          <ion:medias limit="1" type="picture">
            <img src="<ion:media:src size='225' method='width' />" alt="<ion:media:alt />" class="img-responsive img-thumbnail pull-left" />
          </ion:medias>
          <ion:title tag="h2" />
          <ion:content tag="p" class="text-justify" />
        </div>
      </ion:article>
    </ion:articles>
  </div>
  <hr />

</ion:page>

<ion:partial view="footer" />