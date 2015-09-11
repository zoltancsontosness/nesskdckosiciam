<ion:partial view="header" breadcrumb="true" />
<ion:page>

  <div class="row">
    <div class="col-lg-8 col-md-8 col-sm-12">
      <div class="section">
        <h2 class="section_title section_title_big"><ion:title /></h2>
      </div>
      <div class="section_7">
        <div id="activity_list">

          <div class="search-input">
            <div class="control-group ">
              <div class="controls">
                <input id="search" class="search hasclear" type="text" placeholder="Hľadať" />
                <button class="clearer"><i class="fa fa-times fa-lg"></i></button>
              </div>
            </div>
          </div>

          <ul class="activity_list">
            <ion:articles:article>
              <li>
                <div class="post_text">
                  <div class="clearfix">
                    <a href="<ion:url />" class="f_left title"><h5><ion:title /></h5></a>
                  </div>
                  <div class="event_activity">pridané
                    <ion:date format="long" />
                  </div>
                  <ion:content characters="175" function="strip_tags" />
                </div>
                <a href="<ion:url />" class="button button_type_icon_small button_grey margin-top-20 pull-right">
                  <ion:lang key="btn_showmore" />
                  <i class="fa fa-angle-right fa-fw"></i>
                </a>
              </li>
            </ion:articles:article>
          </ul>

          <div class="text-center clearfix">
            <ul class="pagination"></ul>
          </div>
        </div>

        <?php if('<ion:articles:pagination />' != ''): ?>
          <div class="pagination_block">
            <ion:articles:pagination />
          </div>
          <?php endif; ?>
      </div>
    </div>
    <div class="col-lg-4 col-md-4 col-sm-12">
      <ion:partial view="modules/panel_headlines" />
    </div>
  </div>

</ion:page>

<script>
  $(document).ready(function () {
    options = {
      listClass: 'activity_list',
      valueNames: ['title'],
      page: 8,
      plugins: [
      ListPagination({}),
    ]
    };

    var clubsList = new List('activity_list', options);
  })

  $(".hasclear").keyup(function () {
    var t = $(this);
    t.next('button').toggle(Boolean(t.val()));
  });

  $(".clearer").hide($(this).prev('input').val());

  $(".clearer").click(function () {
    $(this).prev('input').val('').focus();
    $(this).hide();
  });
</script>

<ion:partial view="footer" />