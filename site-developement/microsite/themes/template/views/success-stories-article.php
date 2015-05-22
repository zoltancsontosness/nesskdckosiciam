<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>


<div class="container">
  <ion:page>
    <section class="success-stories">
      <ion:article>     
        <h1 class="hero"><ion:article:title /></h1>
        <div class="row">
          <div class="col-md-8">
            <ion:medias:media size="750,342" type="picture" method="adaptive"> 
              <img src="<ion:media:src/>" class="img-responsive"> 
            </ion:medias:media>          
            <h3><ion:article:subtitle /></h3> 
            <ion:article:content />
          </div>
          <div class="col-md-4">
            <ul>
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