<ion:partial view="head" />
<header>
  <ion:partial view="navigation" />
</header>

<div class="container gutter-bottom push-footer-bottom">
  <ion:page>
    <h1 class="hero gutter-bottom-small"><ion:title /></h1>
    <div class="items">
      <div class="col-sm-12">
        <div class="row gutter-bottom-small">
          <ion:pages parent="this">
            <ion:page:medias limit="3" size="400,400" method="adaptive">
              <a href="<ion:page:url />">
                <div class="item small-column col-sm-3">
                  <div class="overlay overlay-<ion:media:description />">
                    <p class="perex"><ion:page:title /></p>
                  </div>
                  <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive">
                </div>
              </a>
            </ion:page:medias>
          </ion:pages>
        </div>
      </div>
    </div>
  </ion:page>
</div>

<ion:partial view="footer" />