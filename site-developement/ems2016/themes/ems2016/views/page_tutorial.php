<ion:partial view="header" />
<div class="content">
  <div class="container box-titles">
    <ion:page:title tag="h1" class="section_title section_title_big" />
    <ion:articles:article limit="3">
      <div class="col-md-4">
        <div class="section text_post_block" data-appear-animation="fadeInDown" data-appear-animation-delay="350">
          <ion:title tag="h3" />
          <ion:content />
          <ion:medias>
            <img src="<ion:media:src size="690" />" alt="<ion:article:name />" class="margin-top-20" />
          </ion:medias>
        </div>
      </div>
    </ion:articles:article>
  </div>
</div>
<ion:partial view="footer" />