<ion:partial view="header" />

<div class="row">
  <ion:page:articles>
    <ion:article>
      <div class="article-error">
        <div class="col-md-5">
          <img src="<ion:theme_url/>assets/images/404.png" class="img-responsive" />
        </div>

        <div class="col-md-6 text-center">
          <ion:content tag="h1" />
        </div>
      </div>
      <ion:medias type="picture" limit="1">
        <img src="<ion:media:src />" />
      </ion:medias>
    </ion:article>
  </ion:page:articles>
</div>

<ion:partial view="footer" />