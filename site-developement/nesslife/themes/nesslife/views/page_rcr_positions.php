<ion:partial view="header" />
    
    <div class="row">
      <div class="col-sm-12">
        <ion:page:title tag="h1" />
        <hr />
      </div>
    </div>
    
    <div class="row">
      <ion:page>
        <ion:articles pagination="10">
          <ion:article>
            <div class="col-md-4 positionColumn">
              <h3><a href="<ion:article:url />"><ion:article:title /></a></h3>
              <ion:article:content words="50" />
              <div class="clearfix">
                <a href="<ion:article:url />" class="btn pull-right">Read more...</a>
              </div>
            </div>
            <ion:article:index expression="index%3==0"></div><div class="row"></ion:article:index>
          </ion:article>
        </ion:articles>
      </ion:page>
    </div><!-- /.row -->
    
    <ion:page:articles:pagination pagination="10" />

<ion:partial view="footer" />