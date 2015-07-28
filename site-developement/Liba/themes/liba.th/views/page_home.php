<ion:partial view="header" />

<div class="row">
  <div class="col-md-12" id="qoute-row">
    <blockquote class="blockquote-reverse text-right">
      <p>
        Tak ako v zahraničí existuje veľa mimoklubových výberov, aj na Slovensku začína fungovať mnoho výberov hráčov rôznych ročníkov, niektoré fungujú skvele, iné horšie. Našou prioritou je podpora talentovaných jedincov zo širokej športovej oblasti od útleho veku, ktorí majú o svoj športový rast predovšetkým vlastný záujem, bez ohľadu na klubovú príslušnosť. Jedná sa o celoročnú spoluprácu vhodne doplňujúcu "klubové povinosti" bez konfliktu.
      </p>
      <footer>Liba Academy
      </footer>
    </blockquote>
  </div>
</div>

<ion:page id="slideshow">
  <div class="row">
    <div class="col-md-12 padding-0">
      <div class="owl-carousel">
        <ion:articles:article>
          <ion:medias type="picture" limit="1">
            <div class="item">
              <img src="<ion:media:src size='1170,300' method='adaptive' />" alt="<ion:media:alt />" class="img-responsive" />
            </div>
          </ion:medias>
        </ion:articles:article>
      </div>
    </div>
  </div>
</ion:page>

<div class="row">
  <div class="col-md-12">
    <h1>Domov</h1>
    <hr/>
  </div>
  <div class="col-md-8">

    <ion:page id="news">
      <ion:articles limit="10">
        <ion:article>
          <div class="media">
            <div class="media-body">
              <ion:title tag="h4" class="media-heading" />

              <small class="text-muted">
                <i class="fa fa-clock-o fa-fw"></i>
                <ion:date />
              </small>

              <ion:content tag="p" />
            </div>
          </div>
        </ion:article>
      </ion:articles>
    </ion:page>


    <ion:page id="rozpis-treningov">
      <ion:articles limit="1">
        <ion:article>
          <ion:title tag="h2" />
          <hr />
          <ion:content />
        </ion:article>
      </ion:articles>

    </ion:page>

  </div>
  <div class="col-md-4">

    <ion:page id="zapasy-1">
      <ion:articles order_by="date ASC" limit="1">
        <ion:article>
          <ion:partial view="view_helpers/panel_home" />
        </ion:article>
      </ion:articles>
    </ion:page>

    <ion:page id="turnaje">
      <ion:articles order_by="date ASC" limit="1">
        <ion:article>
          <ion:partial view="view_helpers/panel_home" />
        </ion:article>
      </ion:articles>
    </ion:page>

  </div>
</div>

<ion:partial view="footer" />