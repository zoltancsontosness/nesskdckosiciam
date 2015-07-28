<ion:partial view="header" />

<ion:page>
  <div class="page-header">
    <ion:title tag="h1" />
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="partners-wrapper">
        <ion:medias type="picture" size='50,100' method='height'>
          <ion:media:link is_not="">
            <a href="<ion:media:link />" target="_blank" data-toggle="tooltip" data-placement="top" title="<ion:media:title /> - <ion:media:description />">
              <img src="<ion:media:src />" alt="<ion:media:alt/>" />
            </a>
          </ion:media:link>
          <ion:else>
            <img src="<ion:media:src />" alt="<ion:media:alt/>" data-toggle="tooltip" data-placement="top" title="<ion:media:title /> - <ion:media:description />"/>
          </ion:else>
        </ion:medias>
      </div>
    </div>
  </div>
</ion:page>

<script>
  $(document).ready(function () {
    $('[data-toggle="tooltip"]').tooltip();
  });
</script>

<ion:partial view="footer" partners="false" />