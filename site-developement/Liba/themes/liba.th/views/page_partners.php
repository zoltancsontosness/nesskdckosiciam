<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>


  <div class="row">
    <div class="col-md-12 columnize">
      <div class="column">

        <ion:medias type="picture" size='65,100' method='height'>

<!--          <b> <ion:media:title tag="p" class="lead"/></b>-->
          <img src="<ion:media:src />" alt="<ion:media:alt/>" />
          <small class="muted">
          <ion:media:description /><br/>
        </small>

        </ion:medias>
      </div>
    </div>
  </div>

</ion:page>

<ion:partial view="footer" />