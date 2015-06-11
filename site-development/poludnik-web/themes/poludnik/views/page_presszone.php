<ion:partial view="header" />

<div class="page-header">
  <ion:page:title tag="h1" class="page_title" />
</div>

<?php $act_year=date( "Y") ; ?>

<div class="row">
  <ion:page id="tlacove-spravy">
   
    <div class="col-md-12">
      <ion:page:title tag="h2" />
    </div>

    <ion:articles order_by="date DESC">
      <ion:article>
        <?php if( '<ion:date format="Y" />'==$act_year) : ?>
        <ion:medias type="file" limit="1">
          <a href="<ion:media:src />" target="_blank">
            <ion:partial view="press_article" />
          </a>
        </ion:medias>
        <?php endif ?>
      </ion:article>
    </ion:articles>

    <button type="button" class="btn btn-primary btn-custom" onclick="window.location.href='<ion:page:url />'">
      <ion:lang key="btn_older" />
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"> </span>
    </button>
  </ion:page>
</div>

<hr class="splitter" />

<div class="row">
  <ion:page id="napisali-o-festivale">

    <div class="col-md-12">
      <ion:page:title tag="h2" />
    </div>

    <ion:articles order_by="date DESC">
      <ion:article>
        <?php if( '<ion:date format="Y"/>'==$act_year) : ?>

        <a href="<ion:url />" target="_blank">
          <ion:partial view="press_article" />
        </a>

        <?php endif ?>
      </ion:article>
    </ion:articles>

    <button type="button" class="btn btn-primary btn-custom" onclick="window.location.href='<ion:page:url/>'">
      <ion:lang key="btn_older" />
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    </button>
  </ion:page>
</div>

<ion:partial view="footer" />