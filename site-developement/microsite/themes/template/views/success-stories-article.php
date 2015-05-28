<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>


<div class="container">
  <ion:page>
    <section class="success-stories">
      <ion:article>        
        <div class="row">
          <div class="col-md-8">
            <h1 class="hero"><ion:article:title /></h1>
            <ion:media:type is="picture"> 
              <img src="<ion:media:src/>" class="img-responsive"> 
            </ion:media:type>          
            <h3><ion:article:subtitle /></h3>
            <div class="text-justify">
              <ion:article:content />
            </div> 
          </div>
          <div class="col-md-4">
            <h2>Another stories</h2>
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