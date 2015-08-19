<ion:partial view="header" />
<ion:page:articles limit="1">
  
  <ion:article>
    <div class="row">
      <div class="col-md-offset-2 col-md-8 col-sm-12">
        <div class="section page_404">
          <h2 class="title-success"><ion:title /></h2>
          <h2 class="section_title section_title_big"><ion:subtitle /></h2>
          <ion:content />
          <div class="buttons_404">
            <a href="<ion:home_url />" class="button button_type_4 button_grey_light btn-block">
              <ion:lang key="btn_gohome" />
            </a>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-0"></div>
    </div>
  </ion:article>
  
</ion:page:articles>
<ion:partial view="footer" />