<ion:partial view="header" />

<div class="row">
  <div class="col-md-12">
    <h1><ion:lang key="title_news" /></h1>
    <hr/>
  </div>
  <div class="col-md-8">

    <ion:page id="news">
      <ion:articles limit="15" order_by="date DESC">
        <ion:article>
          <div class="row news-row">
            <?php $count=0<ion:medias:count />; if($count >=1): ?>
            <div class="col-sm-3">
              <ion:medias type="picture" limit="1">
                <img src="<ion:media:src size='200' method='square' />" class="img-responsive img-thumbnail" alt="<ion:media:alt />"/>
              </ion:medias>
            </div>
            <?php endif ?>

            <?php if($count>=1): ?>
            <div class="col-sm-9">
              <?php else: ?>
              <div class="col-md-12">
                <?php endif; ?>
                <?php $length=strlen( '<ion:content />'); if ($length>= 350): ?>
                <a href="<ion:url />">
                  <ion:title tag="h4" class="media-heading" />
                </a>
                <?php else: ?>
                <ion:title tag="h4" class="media-heading" />
                <?php endif; ?>

                <small class="text-muted">
                <i class="fa fa-clock-o fa-fw"></i>
                <ion:date format="complete"/>
              </small>

                <ion:content characters="350" tag="p" />
                <?php if ($length>= 350): ?>
                <a href="<ion:url />" class="pull-right">
                  <ion:lang key="btn_readmore" />
                </a>
                <?php endif ?>
              </div>
            </div>
        </ion:article>
      </ion:articles>
    </ion:page>

    </div>

    <div class="col-md-4">
      <ion:page id="matches">
        <div class="panel panel-primary">
          <div class="panel-heading">
            <ion:page:title class="panel-title" />
            <ion:lang key="span_notplayed" />
          </div>
          <div class="panel-body">
            <ion:articles order_by="date ASC" limit="1">
              <ion:article>
                <ion:title tag="h4" />
                <br />

                <ion:element:match:items tag="ul" class="list-unstyled">
                  <?php if(!<ion:played:value/>): ?>
                  <li>
                    <strong><ion:date:value format="short"/></strong> :
                    <ion:home:value/> -
                    <ion:guests:value />
                  </li>
                  <?php endif; ?>
                </ion:element:match:items>

              </ion:article>
            </ion:articles>
            <a href="<ion:url />" class="btn btn-primary btn-sm pull-right">
              <ion:lang key="btn_showall" />
            </a>
          </div>
        </div>
      </ion:page>

      <ion:page id="tournaments">
        <div class="panel panel-primary">
          <div class="panel-heading">
            <ion:page:title class="panel-title" />
            <ion:lang key="span_notplayed" />
          </div>
          <div class="panel-body">
            <ion:articles order_by="date ASC" limit="1">
              <ion:article>
                <ion:title tag="h4" />
                <br />

                <ion:element:tournament:items tag="ul" class="list-unstyled">
                  <?php if(!<ion:played:value/>): ?>
                  <li>
                    <strong><ion:date:value format="short"/></strong> :
                    <ion:name:value />
                  </li>
                  <?php endif; ?>
                </ion:element:tournament:items>
              </ion:article>
            </ion:articles>
            <a href="<ion:url />" class="btn btn-primary btn-sm pull-right">
              <ion:lang key="btn_showall" />
            </a>
          </div>
        </div>
      </ion:page>

    </div>
  </div>

  <ion:partial view="footer" />