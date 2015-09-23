<ion:partial view="header" breadcrumb="true" />

<div class="section">
  <ion:page:title tag="h1" class="section_title section_title_big" />
</div>

<div class="section_7">
  <div class="row">
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
  </div>
</div>

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