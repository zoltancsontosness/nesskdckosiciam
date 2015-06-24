<ion:partial view="header" />

<div class="row">
  <ion:articles limit="1">
    <ion:article>
      <div class="crop about">
        <ion:medias type="picture" limit="1">
          <img src="<ion:media:src  />" alt="<ion:media:title />" class="no-drag">
        </ion:medias>
      </div>
      <div class="col-md-12">
        <div class="page-header">
          <ion:page:title tag="h1" class="page_title" />
        </div>

        <script>
          $(function () {
            $('#columnize-about').columnize({
              width:"600",
              lastNeverTallest: true
            });
          });
        </script>

        <div id="columnize-about">
          <div class="column">
            <ion:content tag="p" />
            <p class="pull-right">
              <b>
            <ion:subtitle />
          </b>
            </p>
          </div>
        </div>

      </div>
    </ion:article>
  </ion:articles>
</div>

<ion:partial view="footer" />