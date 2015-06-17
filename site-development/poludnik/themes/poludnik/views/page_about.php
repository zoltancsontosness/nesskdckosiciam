<ion:partial view="header" />

<div class="row">
  <ion:articles limit="1">
    <ion:article>
      <div class="crop about">
        <ion:medias type="picture" limit="1">
          <img src="<ion:media:src  />" alt="<ion:media:title />" class="no-drag">
        </ion:medias>
      </div>
      <div class="col-md-12">
        <div class="page-header">
          <ion:page:title tag="h1" class="page_title" />
        </div>

        <div id="1to1-data" class="1to1-col1 col-md-6">
          <ion:content />
        </div>
        <div id="1to1-col2" class="col-md-6"></div>

        <p class="pull-right">
          <b>
            <ion:subtitle />
          </b>
        </p>
      </div>
    </ion:article>
  </ion:articles>
</div>

<ion:partial view="footer" />