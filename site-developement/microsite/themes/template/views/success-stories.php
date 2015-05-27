<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>


<div class="container">
  <ion:page>
  <h1 class="hero"><ion:title /></h1>
    <div class="items row">
      <div class="col-sm-12">
        <div class="row">
          <ion:medias type="picture" range="1,3" size="400,400" method="adaptive">
            <a href="<ion:page:url />/<ion:media:link />">
              <div class="item small-column col-sm-4">
                <div class="overlay overlay-<ion:media:description />">
                  <p class="perex"><ion:media:title /></p>
                </div>
                <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
              </div>
            </a>
          </ion:medias>
          <ion:medias type="picture" range="4,6" size="400,400" method="adaptive">
            <a href="<ion:page:url />/<ion:media:link />">
              <div class="item small-column col-sm-4">
                <div class="overlay overlay-<ion:media:description />">
                  <p class="perex"><ion:media:title /></p>
                </div>
                <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">  
              </div>
            </a>
          </ion:medias>
          <ion:medias type="picture" range="7,9" size="400,400" method="adaptive">
            <a href="<ion:page:url />/<ion:media:link />">
              <div class="item small-column col-sm-4">
                <div class="overlay overlay-<ion:media:description />">
                  <p class="perex"><ion:media:title /></p>
                </div>
                <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
              </div>
            </a>
          </ion:medias>
        </div>
      </div>
    </div>
  </ion:page>
</div>

<ion:partial view="footer" />