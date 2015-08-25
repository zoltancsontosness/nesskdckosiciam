<ion:partial view="header" />
<!--
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
      <div class="owl-carousel slideshow">
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
-->
<div class="row home-body">
  <div class="col-md-12">
    <h1><ion:page:title id="news-1" /></h1>
    <hr/>
  </div> 
  <div class="col-md-7">   
     <ion:page id="news-1">
      <ion:articles limit="7">
        <ion:article>
          <div class="media">
            <div class="media-body">
              <ion:title tag="h4" class="media-heading" />

              <small class="text-muted">
                <i class="fa fa-clock-o fa-fw"></i>
                <ion:date format="complete"/>
              </small>

              <ion:content characters="120" />
              <p><a href="<ion:article:url />" class="btn btn-primary pull-right" role="button">Čítaj viac</a></p>
            </div>
            <hr/>
          </div>
        </ion:article>
      </ion:articles>
    </ion:page>    
  </div>  
  <div class="col-md-5">

    <ion:page id="zapasy-4">
      <ion:articles order_by="date ASC" limit="1">
        <ion:article>
          <ion:partial view="view_helpers/panel_home" />
        </ion:article>
      </ion:articles>
    </ion:page>

    <ion:page id="turnaje-1">
      <ion:articles order_by="date ASC" limit="1">
        <ion:article>
          <ion:medias type="picture" limit="1"> 
            <div class="bum">
              <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />">
                <img src="<ion:media:src method="adaptive" />" alt="<ion:media:title />" class="img-responsive" />
              </a>
            </div>
          </ion:medias> 
        </ion:article>
      </ion:articles>
    </ion:page>

  </div>
</div>

<ion:partial view="footer" />