<ion:partial view="header" />
<div class="page-header">
  <ion:page:title tag="h1" class="page_title" />
</div>

<div class="row">
  <ion:articles>
    <ion:article>
      <a href="<ion:article:url />">
        <div class="col-lg-2 col-md-3 col-sm-4 col-xs-6 ">
          <div class="thumbnail article_hoverable responsive-element">
            <ion:medias limit="1" type="picture">
              <img src="<ion:media:src size="200" method="adaptive" />" alt="<ion:media:title />" />
            </ion:medias>
            <div class="caption">
              <ion:title tag="h2" class="dark" />
            </div>
          </div>
        </div>
      </a>
    </ion:article>
  </ion:articles>
</div>

<ion:partial view="footer" />