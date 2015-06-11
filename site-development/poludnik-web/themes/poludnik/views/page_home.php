<ion:partial view="header" />

<div class="row text-center slick-slider slideshow" id="slideshow">
  <ion:page id="slideshow">
    <ion:articles>
      <div class="slider">
        <ion:article:medias limit="1" type="picture">
          <div class="crop">
            <img src="<ion:media:src  />" alt="<ion:media:alt />" />
          </div>
        </ion:article:medias>
      </div>
    </ion:articles>
  </ion:page>
</div>

<script>
  $(document).ready(function () {
    $('.slick-slider').slick({
      arrows: false,
      lazyLoad: 'ondemand',
      infinite: true,
      autoplay: true,
      autoplaySpeed: 3000,
      dots: true,
      mobileFirst: true,
      responsive: [{
        breakpoint: 768,
        settings: {
          arrows: true,
        }

        }, {
        breakpoint: 300,
        settings: {
          arrows: false,
        }

        }]
    });
  });
</script>

<br />
<div class="row">
  <div class="col-md-7 col-xs-12 panel-news">
    <ion:page id="news">

      <ion:page:articles limit="4" order_by="created DESC">
        <ion:partial view="news" />
      </ion:page:articles>

      <hr class="splitter" />

      <button type="button" class="btn btn-primary btn-custom" onclick="window.location.href='<ion:page:url />'">
        <ion:lang key="btn_older" />
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      </button>
    </ion:page>
  </div>

  <div class="col-md-5 col-xs-12">
    <div class="home-panel">
      <ion:page id="events">
        <ion:title tag="h2" />
        <ion:articles limit="1">
          <ion:article:medias type="picture" limit="1">
            <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />">
            <img src="<ion:media:src />" alt="<ion:media:title />" class="img-responsive no-drag" />
          </a>
          </ion:article:medias>
        </ion:articles>
      </ion:page>
    </div>

    <div class="home-panel">
      <ion:page id="napisali-o-festivale">
        <ion:title tag="h2" />

        <ion:articles limit="4">
          <div class="col-xs-12">
            <a href="<ion:article:url />" target="_blank">
              <ion:article:title characters="42" tag="span" />
              <span class="glyphicon glyphicon-chevron-right pull-right" aria-hidden="true"></span>
            </a>
          </div>
        </ion:articles>

        <hr class="splitter" />

        <button type="button" class="btn btn-primary btn-custom" onclick="window.location.href='<ion:page:url />'">
          <ion:lang key="btn_show_more" />
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        </button>

      </ion:page>
    </div>
  </div>
</div>

<ion:partial view="footer" />