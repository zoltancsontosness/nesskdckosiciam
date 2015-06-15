<ion:article>
  <div class="row article-row">

    <div class="col-sm-3">
      <ion:article:medias type="picture" limit="1">
        <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />">
            <img class="no-drag" src="<ion:media:src />" alt="<ion:media:title />">
        </a>
      </ion:article:medias>
    </div>

    <div class="col-sm-9">
      <ion:article:title tag="h2" class="media-heading" />

      <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
        <ion:article:created format="complete" tag="span" class="bold" />

      <div class="col-xs-12">
        <ion:article:content characters="200" />
      </div>

      <button type="button" class="btn btn-primary btn-custom btn-light" onclick="window.location.href='<ion:article:url />'">
        <ion:lang key="btn_more" />
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      </button>
    </div>
  </div>
</ion:article>