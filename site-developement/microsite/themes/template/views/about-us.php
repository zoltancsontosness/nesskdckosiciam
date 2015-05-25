<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>

<div class="container">
  <section id="about-us">
    <div class="row">
      <ion:articles limit="1">
        <ion:article>
          <div class="col-xs-12">
            <ion:article:title tag="h2" />
            <ion:article:content />
          </div>
        </ion:article>
      </ion:articles>
    </div>
    <div class="separator"></div>
    <div class="row">  
      <ion:articles range="2,3">
        <ion:article>
          <div class="col-sm-6">
            <ion:article:title tag="h2" />
            <ion:article:content />
          </div>
        </ion:article>
      </ion:articles>  
    </div>
  </section>
</div>

<ion:partial view="footer" />