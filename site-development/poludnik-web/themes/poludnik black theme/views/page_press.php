<ion:partial view="header" />

<div class="page-header">
  <ion:page:title tag="h1" class="page_title" />
</div>

<div class="row">
  <ion:articles>
    <ion:article:medias type="file" limit="1">
      <a href="<ion:media:src />" target="_blank">
        <ion:partial view="press_article" />
      </a>
    </ion:article:medias>
  </ion:articles>
</div>

<div class="row text-center">
  <ion:articles:pagination />
</div>

<ion:partial view="footer" />