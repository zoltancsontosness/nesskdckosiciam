<ion:partial view="header" />

<div class="page-header">
  <ion:article:title tag="h1" class="page_title" />
</div>

<ion:article>
  <div class="row">
    <div class="col-md-12">

      <script>
        $(function () {
          $('wide').find('table, thead, tbody, tfoot, colgroup, caption, label, legend, script, style, textarea, button, object, embed, tr, th, td, li, h1, h2, h3, h4, h5, h6, form').addClass('dontsplit');
          $('.wide').find('h1, h2, h3, h4, h5, h6').addClass('dontend');
          $('.wide').find('br').addClass('removeiflast').addClass('removeiffirst');

          $('h1').addClass("dontend");
          $('.wide').columnize({
            lastNeverTallest: true
          });
        });
      </script>

      <div class="wide">
        <div class="column">
          <ion:content tag="p" />
          <ion:article:media type="picture" limit="1">
            <img src="<ion:media:src method=" adaptive " />" alt="<ion:media:alt />" class="img-responsive center-block">
          </ion:article:media>
        </div>
      </div>

    </div>
  </div>
  <hr />
  <div class="row">
    <ion:article:medias type="picture">
      <div class="col-xs-6 col-sm-3 col-md-3 col-lg-2">
        <a href="<ion:media:src />" data-lightbox="roadtrip" data-title="<ion:media:title />" class="thumbnail">
          <img src="<ion:media:src size="200, 150" method="adaptive" />" alt="<ion:media:title />">
        </a>
      </div>
    </ion:article:medias>
  </div>
</ion:article>

<ion:partial view="footer" />