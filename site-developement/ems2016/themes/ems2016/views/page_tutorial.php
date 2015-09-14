<ion:partial view="header" />
<div class="content">
  <div class="container row">
    <div class="col-xs-12">
      <ion:page:title tag="h1" class="section_title section_title_big" />
    </div>
  </div>
  <div class="row">
    <ion:articles:article limit="3">
      <div class="col-md-4 box-titles">
        <div class="section text_post_block" data-appear-animation="fadeInDown" data-appear-animation-delay="350">
          <ion:title tag="h3" class="box-title" />
          <div class="box-content">
            <ion:content />
          </div>
          <ion:medias>
            <img src="<ion:media:src size="690" />" alt="<ion:article:name />" class="margin-top-20" />
          </ion:medias>
        </div>
      </div>
    </ion:articles:article>
  </div>
</div>
<ion:partial view="footer" />