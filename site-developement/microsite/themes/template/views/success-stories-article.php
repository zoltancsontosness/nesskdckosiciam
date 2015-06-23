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
            <ion:article:media type="picture" range="2"> 
              <img src="<ion:media:src/>" class="img-responsive heading-img" alt=""> 
            </ion:article:media>          
            <ion:article:subtitle tag="h3"/>
            <div class="text-justify">
              <div id="content">
                <ion:article:content />
              </div>
            </div> 
          </div>
          <div class="col-md-4">
            <h2 class="right-column-heading">Other stories</h2>
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