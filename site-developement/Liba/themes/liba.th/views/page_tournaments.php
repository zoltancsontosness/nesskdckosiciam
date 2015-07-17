<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <div class="row">
    <div class="col-md-8">
      <ion:articles type="">
        <ion:article>
          <div class="media tournament-media-element">

            <div class="media-body">
              <a href="<ion:url />">
                <ion:title tag="h3" class="media-heading" />
              </a>

              <small class="text-muted">
                <i class="fa fa-clock-o fa-fw"></i>
                <ion:date format="complete" />
              </small>

              <ion:content tag="p" characters="250" />
              <a href="<ion:url />" class="btn btn-primary btn-sm pull-right">Read more ...</a>
            </div>

<!--
            <div class="media-right hidden-xs">
              <ion:medias type="picture" limit="1">
                <img src="<ion:media:src size='250' metho='width' />" alt="<ion:media:alt />" class="shaped" />
              </ion:medias>
            </div>
-->
          </div>

        </ion:article>
      </ion:articles>
    </div>

    <div class="col-md-4">
      <ion:articles order_by="date ASC" limit="1" type="eyecatcher">
        <ion:article>
          <div class="panel panel-primary">
            <div class="panel-heading">
              <ion:article:title class="panel-title" />
            </div>
            <div class="panel-body">
              <ion:content />
            </div>
          </div>
        </ion:article>
      </ion:articles>
    </div>
  </div>

</ion:page>

<ion:partial view="footer" />