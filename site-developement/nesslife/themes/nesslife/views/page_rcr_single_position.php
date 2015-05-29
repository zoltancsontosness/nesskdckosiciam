<ion:partial view="header" />
    
    <div class="row">
      <div class="col-sm-12">
        <ion:article:title tag="h1" />
        <hr />
      </div>
    </div>
    
    <div class="row">
      <div class="col-sm-8 col-md-9">
        <ion:article:content />
      </div>
      <div class="col-sm-4 col-md-3">
        <ion:article:element:rcr-project>
          <ion:items:rcr-position-project>       
            <ion:values>
              <?php $lab = '<ion:label />'; ?>
            </ion:values>
          </ion:items:rcr-position-project>
        </ion:article:element:rcr-project>
        <ion:page id="labs">
          <ion:articles>
            <?php if ("<ion:article:name />" == "$lab" ) :?>
              <ion:article:medias type="picture" limit="1">
                <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive" />
              </ion:article:medias>
              <ion:article:title tag="b" />
              <ion:article:content />
            <?php endif ;?> 
          </ion:articles>
        </ion:page>
      </div>
    </div><!-- /.row -->
    
    <ion:page:articles:pagination pagination="10" />

<ion:partial view="footer" />