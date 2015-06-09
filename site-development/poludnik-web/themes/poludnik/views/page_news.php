<ion:partial view="header" />

<div class="page-header">
  <ion:page:title tag="h1" class="page_title" />
</div>

<div class="row">
  <ion:articles>
    <div class="col-md-6 responsive-element">
      <ion:partial view="news" />
    </div>
  </ion:articles>
</div>

<div class="row text-center">
  <div class="col-md-12">
    <ion:articles:pagination />
  </div>
</div>

<ion:partial view="footer" />