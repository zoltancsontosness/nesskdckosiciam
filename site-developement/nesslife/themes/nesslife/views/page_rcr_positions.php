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
            <div class="col-sm-12">
              <h3><a href="<ion:article:url />"><ion:article:title /></a></h3>
              <ion:article:content words="50" />
              <hr />
            </div>
          </ion:article>
        </ion:articles>
      </ion:page>
    </div><!-- /.row -->
    
    <ion:page:articles:pagination pagination="10" />

<ion:partial view="footer" />