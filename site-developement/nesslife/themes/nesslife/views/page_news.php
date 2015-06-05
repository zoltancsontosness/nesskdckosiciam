<ion:partial view="header" />
<ion:user:logged is="true">

    <div class="row">
      <div class="col-sm-12">
        <ion:page:title tag="h1" />
        <hr />
      </div>
    </div>
    
    <div class="row">
      <div class="col-sm-12">
        <ul class="newsCategories">
          <li <?php if ("<ion:category:current:name />" == "") {echo 'class="newsCategoriesActive"';}?>><a href="<ion:page:url />">All news</a></li>
          <ion:page:categories active_class="newsCategoriesActive">
            <li>
              <a <ion:category:is_active> class="<ion:category:active_class />" </ion:category:is_active> href="<ion:category:url />">
                <ion:category:title />
              </a>
            </li>
          </ion:page:categories>
        </ul>
      <hr />
      </div>
    </div>
    
    <div class="row">
      <ion:page>
        <ion:articles pagination="10">
          <ion:article>
            <div class="col-sm-12">
              <h3><a href="<ion:article:url />"><ion:article:title /></a></h3>
                <p>
                  <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                  <ion:article:date format="d/m/Y" tag="span" />
                  <span class="glyphicon glyphicon-folder-open" aria-hidden="true"></span>
                  <ion:article:categories:list link="false" separator=" / " tag="span" />
                </p>
              <ion:article:content words="50" />
              <hr />
            </div>
          </ion:article>
        </ion:articles>
      </ion:page>
    </div><!-- /.row -->
    
    <ion:page:articles:pagination pagination="10" />

</ion:user:logged>
<ion:user:logged is="false">
  <ion:partial view="401" />
</ion:user:logged>
<ion:partial view="footer" />