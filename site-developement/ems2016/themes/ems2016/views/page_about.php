<ion:partial view="header" breadcrumb="true" />

<div class="row">
  <div class="col-sm-8">
    <ion:articles:article>
      <div class="section">
        <ion:title tag="h1" class="section_title section_title_big" />
      </div>
      <div class="section_7">
        <div class="text-content">
          <ion:content />
        </div>
      </div>
    </ion:articles:article>
  </div>
  
  <div class="col-sm-4">
    <div class="section" data-appear-animation="fadeInDown" data-appear-animation-delay="350">
      <h3 class="section_title">O projekte</h3>
      <ul class="circle_list">
        <ion:pages parent="o-projekte">
          <li>
            <h4><a href="<ion:page:url />"><ion:page:title /></a></h4>
          </li>
        </ion:pages>
      </ul>
      <ion:partial view="modules/panel_share" />
    </div>
  </div>
</div>

<ion:partial view="footer" />