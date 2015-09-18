<ion:partial view="header" />
<div class="content">
  <div class="container">
    <div class="col-sm-8">
      <div class="section text_post_block" data-appear-animation="fadeInDown" data-appear-animation-delay="350">
        <ion:articles:article>
          <ion:title tag="h1" class="section_title section_title_big" />
          <div class="text-content">
            <ion:content />
          </div>
        </ion:articles:article>
      </div>
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
</div>
<ion:partial view="footer" />