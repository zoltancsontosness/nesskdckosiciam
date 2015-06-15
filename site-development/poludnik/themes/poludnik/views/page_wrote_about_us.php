<ion:partial view="header" />

<div class="page-header">
  <ion:page:title tag="h1" class="page_title" />
</div>

<div class="row">
  <ion:articles order_by="date DESC">
    <a href="<ion:article:url />" target="_blank">
      <ion:partial view="press_article" />
    </a>
  </ion:articles>
</div>

<div class="row text-center">
  <ion:articles:pagination />
</div>

<ion:partial view="footer" />