<ion:partial view="header" />
<ion:user:logged is="true">

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
              <?php $lab = '<ion:label />';?>
            </ion:values>
          </ion:items:rcr-position-project>
        </ion:article:element:rcr-project>
        <ion:page id="labs">
          <ion:articles>
            <?php if (strtolower("<ion:article:title />") == $lab):?>
              <ion:article:medias type="picture" limit="1">
                <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive" />
              </ion:article:medias>
              <ion:article:title tag="b" />
              <ion:article:content />
            <?php endif;?>
          </ion:articles>
        </ion:page>
      </div>
    </div><!-- /.row -->
    
    <ion:page:articles:pagination pagination="10" />

</ion:user:logged>
<ion:user:logged is="false">
  <ion:partial view="401" />
</ion:user:logged>
<ion:partial view="footer" />