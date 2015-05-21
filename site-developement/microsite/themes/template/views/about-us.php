<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>

<div class="container">
  <section id="about" class="about-us">
    <ion:articles limit="1">
      <h1 class="hero"><ion:article:title /></h1>
      <div class="row">     
        <ion:article>
          <div class="col-sm-11 col-md-12">
            <ion:article:content />
          </div>
        </ion:article>
      </div>      
    </ion:articles>    
  </section>
</div>

<ion:partial view="footer" />