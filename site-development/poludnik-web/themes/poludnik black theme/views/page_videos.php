<ion:partial view="header" />

<div class="page-header">
  <ion:page:title tag="h1" class="page_title" />
</div>

<div class="row">
  <ion:articles>
    <div class="col-md-6 responsible-element">
      <ion:article>
        <ion:title tag="h2" />
        <ion:medias filter="videos" limit="1">
          <ion:media>
            <div class="embed-responsive embed-responsive-16by9">
              <iframe class="embed-responsive-item" src="<ion:media:src />"></iframe>
            </div>
          </ion:media>
        </ion:medias>
      </ion:article>
    </div>
  </ion:articles>
</div>

<ion:partial view="footer" />