<ion:partial view="header" />

<div class="page-header">
  <ion:page:title tag="h1" class="page_title" />
</div>

<?php $act_year=date( "Y") ; ?>

<div class="row">
  <ion:page id="press-page">

    <div class="col-md-12">
      <ion:page:title tag="h2" />
    </div>

    <?php $at_least_one=false; for ($i=1 ; $i <=5 ; $i++) : ?>

    <ion:articles order_by="date DESC">
      <ion:article>
        <?php if( '<ion:date format="Y" />'==$act_year ) : $at_least_one=true; ?>
        <ion:medias type="file" limit="1">
          <a href="<ion:media:src />" target="_blank">
            <ion:partial view="press_article" />
          </a>
        </ion:medias>
        <?php endif ?>
      </ion:article>
    </ion:articles>

    <?php if ($at_least_one) { break; }; $act_year=$act_year - 1; endfor ?>

    <button type="button" class="btn btn-primary btn-custom" onclick="window.location.href='<ion:page:url />'">
      <ion:lang key="btn_older" />
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"> </span>
    </button>
  </ion:page>
</div>

<hr class="splitter" />

<?php $act_year=date( "Y") ; ?>

<div class="row">
  <ion:page id="wrote-page">

    <div class="col-md-12">
      <ion:page:title tag="h2" />
    </div>

    <?php $at_least_one=false; for ($i=1 ; $i <=5 ; $i++) : ?>

    <ion:articles order_by="date DESC">
      <ion:article>
        <?php if( '<ion:date format="Y"/>'==$act_year) : $at_least_one=true; ?>
        <a href="<ion:url />" target="_blank">
          <ion:partial view="press_article" />
        </a>
        <?php endif ?>
      </ion:article>
    </ion:articles>

    <?php if ($at_least_one) { break; }; $act_year=$act_year - 1; endfor ?>

    <button type="button" class="btn btn-primary btn-custom" onclick="window.location.href='<ion:page:url/>'">
      <ion:lang key="btn_older" />
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    </button>
  </ion:page>
</div>

<ion:partial view="footer" />