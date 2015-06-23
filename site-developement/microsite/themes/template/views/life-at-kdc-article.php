<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>


<div class="container">
  <ion:page>
    <section class="success-stories gutter-bottom-small">
      <ion:article>        
        <div class="row">
          <div class="col-md-8">            
            <h1 class="hero hero-gutter"><ion:article:title /></h1>
            <ion:breadcrumb separator="" tag="ol" child-tag="li" class="breadcrumb" home="true" article="true"/>
          </div>
          <div class="col-md-4"></div>
        </div>
        <div class="row">
          <div class="col-md-8">
            <ion:medias:media size="750,342" type="picture" method="adaptive"> 
              <img src="<ion:media:src/>" class="img-responsive heading-img" alt=""/> 
            </ion:medias:media>          
            <ion:article:subtitle tag="h3"/>
            <div class="text-justify content">
              <ion:article:content />
            </div>
          </div>
          <div class="col-md-4">
            <h2 class="right-column-heading">Other articles</h2>
            <ul class="right-nav">
              <ion:articles>            
                <li><a href="<ion:article:url />"><ion:article:title /></a></li>          
              </ion:articles>
            </ul>
          </div>
        </div>      
      </ion:article>
    </section> 
  </ion:page>
</div>

<ion:partial view="footer" />