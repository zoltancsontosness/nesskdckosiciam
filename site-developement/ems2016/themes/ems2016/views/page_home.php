<ion:partial view="header" />

<div class="row">
  <!--SLIDER HERE-->

  <div class="col-lg-4 col-md-4 col-sm-12">
    <ion:partial view="modules/panel_categories" count="2" />

    <!--SOCIAL PANEL HERE-->
  </div>

  <div class="col-lg-8 col-md-8 col-sm-12">
    <ion:partial view="modules/panel_articles" />
  </div>

</div>

<div class="row">
  <div class="col-sm-12 col-md-4">
    <ion:partial view="modules/panel_weather" />
  </div>

  <div class="col-sm-6 col-md-4">
    <ion:partial view="modules/panel_gallery" />
  </div>

  <div class="col-sm-6 col-md-4">
    <!--CALENDAR HERE-->
  </div>
</div>

<ion:partial view="footer" />