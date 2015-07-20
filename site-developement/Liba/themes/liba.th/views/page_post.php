<ion:partial view="header" />

<ion:article>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <div class="row">
    <div class="col-md-12 columnize">

      <div class="column">
        <ion:content />
        <ion:medias limit="1" type="picture">
          <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive img-thumbnail" />
        </ion:medias>
      </div>
    </div>
  </div>

  <?php $count=0<ion:medias:count />; ?>
  <?php if($count >= 1): ?>
  <div class="row">
    <div class="col-md-12">
      <h2>
          <ion:lang key="title_gallery" />
        </h2>
      <hr />
    </div>
  </div>

  <div class="row">
    <ion:medias type="picture">

      <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 padding-15">
        <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="thumbnail">
          <img src="<ion:media:src />" alt="<ion:media:title />" class="img-responsive">
        </a>
      </div>
    </ion:medias>
  </div>
  <?php endif; ?>
</ion:article>

<ion:partial view="footer" />