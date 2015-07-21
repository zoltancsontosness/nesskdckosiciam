<ion:partial view="header" />

<ion:article>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>


  <div class="row">
    <div class="col-md-3">
      <ion:medias limit="1" type="picture">
        <img src="<ion:media:src size='350' method='height' />" alt="<ion:media:alt />" class="img-responsive img-thumbnail center-block"/>
      </ion:medias>
    </div>
    <div class="col-md-8">
      <div class="column">
        <ion:content tag="p"/>
      </div>
    </div>
  </div>

</ion:article>

<ion:partial view="footer" />