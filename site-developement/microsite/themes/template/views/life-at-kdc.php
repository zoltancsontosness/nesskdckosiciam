<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>

<div class="container">
  <ion:page>
  <h1 class="hero row gutter-bottom-small"><ion:title /></h1>
    <div class="items row">
      <div class="col-sm-12">
        <div class="row">
          <ion:articles>
            <ion:article:medias limit="1" size="400,400" method="adaptive">
              <a href="<ion:article:url />">
                <div class="item small-column col-sm-4">
                  <div class="overlay overlay-<ion:media:description />">
                    <p class="perex"><ion:media:title /></p>
                  </div>
                  <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
                </div>
              </a>
            </ion:article:medias>
          </ion:articles>
        </div>
      </div>
    </div>
  </ion:page>
</div>

<ion:partial view="footer" />