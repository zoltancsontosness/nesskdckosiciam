<ion:partial view="header" breadcrumb="true" />

<div class="section_2">
  <ul class="social_media_list button-list row">
    <li class="col-xs-12 col-md-4" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
      <a href="<ion:page:url id='pridanie-sportoviska' />" class="btn-block rss">
        <i class="fa fa-pencil"></i>
        <div>
          <ion:page:title id="pridanie-sportoviska" />
        </div>
        <br />
        <p>
          <ion:page:subtitle id="pridanie-sportoviska" />
        </p>
      </a>
    </li>
    <li class="col-xs-12 col-md-4" data-appear-animation="fadeInDown" data-appear-animation-delay="500">
      <a href="<ion:page:url id='pridanie-podujatia' />" class="btn-block bg-yellowgreen">
        <i class="fa fa-pencil"></i>
        <div>
          <ion:page:title id="pridanie-podujatia" />
        </div>
        <br />
        <p>
          <ion:page:subtitle id="pridanie-podujatia" />
        </p>
      </a>
    </li>
    <li class="col-xs-12 col-md-4" data-appear-animation="fadeInDown" data-appear-animation-delay="750">
      <a href="<ion:page:url id='pridanie-klubu' />" class="btn-block bg-seagreen">
        <i class="fa fa-pencil"></i>
        <div>
          <ion:page:title id="pridanie-klubu" />
        </div>
        <br />
        <p>
          <ion:page:subtitle id="pridanie-klubu" />
        </p>
      </a>
    </li>
  </ul>
</div>

<div class="row">
  <div class="col-xs-12 text-justify block-underline">
    <h1 class="section_title padding-top-25 text-center"><ion:page:articles:article:title limit="1"/></h1>
    <ion:page:articles:article:content limit="1" />
  </div>
</div>
<div class="row section_7">
  <ion:page id="postup-zverejnenia-informacii">
    <ion:articles:article limit="3">
      <div class="col-md-4 box-titles">
        <ion:title tag="h3" class="box-title" />
        <div class="box-content section_6">
          <ion:content />
        </div>
        <ion:medias>
          <img src="<ion:media:src size='690' />" alt="<ion:article:name />" class="margin-top-20" />
        </ion:medias>
      </div>
    </ion:articles:article>
  </ion:page>
</div>
<!--
<div class="section_2 row">
<h1 class="section_title padding-top-25 text-center"><ion:page:title id="napisali-o-nas" /></h1>
<div class="col-xs-12 col-md-8 col-md-offset-2">
<div class="owl-demo-2 owl-carousel_2 var2">
<ion:page id="napisali-o-nas">
<ion:articles:article>
<div class="item">
<div class="blockquotes">
<div><ion:content /></div>
<div><ion:title /></div>
</div>
</div>
</ion:articles:article>
</ion:page>
</div>      
</div>
</div>
-->
<ion:partial view="footer" />

<script>
  equalize("box-title");
  equalize("box-content");

  $(window).resize(function () {
    equalize("box-title");
    equalize("box-content");
    sticky_footer();
  });
</script>