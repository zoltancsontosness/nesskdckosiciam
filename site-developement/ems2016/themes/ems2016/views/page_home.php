<ion:partial view="header" />

<ion:partial view="modules/panel_slider" />

<div class="row">
  <div class="col-lg-4 col-md-4 col-sm-12">
    <ion:partial view="modules/panel_categories" count="2" />
    <div class="hidden-xs">
      <ion:partial view="modules/panel_socials" />
    </div>
  </div>

  <div class="col-lg-8 col-md-8 col-sm-12">
    <ion:partial view="modules/panel_articles" />
  </div>

</div>

<div class="row">
  <div class="col-sm-6 col-md-4">
    <ion:partial view="modules/panel_weather" />
  </div>

  <div class="col-sm-6 col-md-4">
    <ion:partial view="modules/panel_gallery" />
  </div>

  <div class="col-sm-6 col-md-4">
    <!--CALENDAR HERE-->
  </div>

  <div class="col-xs-12 visible-xs">
    <ion:partial view="modules/panel_socials" />
  </div>
</div>

<ion:partial view="footer" />