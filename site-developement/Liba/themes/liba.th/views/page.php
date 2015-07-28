<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <?php $art_count=<ion:articles:count />; ?>
  <ion:articles>
    <ion:article>

      <div class="row">
        <div class="col-md-12">
          <?php if($art_count>=2): ?>
          <ion:article:title tag="h2" />
          <?php endif; ?>

          <ion:content />
          <ion:medias limit="1" type="picture">
            <img src="<ion:media:src />" alt="<ion:media:alt />" />
          </ion:medias>
        </div>
      </div>

    </ion:article>
  </ion:articles>
</ion:page>

<ion:partial view="footer" />