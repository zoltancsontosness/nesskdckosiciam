<ion:partial view="header" />
<ion:page:articles limit="1">
  
  <ion:article>
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-0"></div>
      <div class="col-lg-6 col-md-6 col-sm-12">
        <div class="section page_404">
          <h2 class="title_404"><ion:title /></h2>
          <h2 class="section_title section_title_big"><ion:subtitle /></h2>
          <ion:content />
          <div class="buttons_404">
            <button onclick="window.history.back()" class="button button_type_2 button_grey_light">
              <ion:lang key="btn_prevpage" />
            </button>
            <a href="<ion:home_url />" class="button button_type_2 button_grey_light">
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