<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <ion:articles>
    <ion:article>

      <div class="row">
        <div class="col-md-12">
          <ion:title tag="h2" />
        </div>
        <div class="col-md-12 columnize">
          <ion:medias limit="1" type="picture">
            <img src="<ion:media:src size='225' method='width' />" alt="<ion:media:alt />" class="img-responsive img-thumbnail center-block" />
          </ion:medias>
          <ion:content />
        </div>
      </div>
      <hr />

    </ion:article>
  </ion:articles>
</ion:page>

<ion:partial view="footer" />