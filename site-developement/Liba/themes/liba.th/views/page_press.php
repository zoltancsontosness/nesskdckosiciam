<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <ion:articles order_by="date DESC">
    <ion:article>
      <div class="row">
        <div class="col-md-2">
          <ion:date format="medium"/>
        </div>
        <div class="col-md-10">
          <a href="<ion:url />">
            <ion:title tag="p" />
          </a>
        </div>
      </div>
    </ion:article>
  </ion:articles>
</ion:page>

<ion:partial view="footer" />