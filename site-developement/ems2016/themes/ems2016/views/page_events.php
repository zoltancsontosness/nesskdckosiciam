<ion:partial view="header" breadcrumb="yes_please" />
<ion:page>
  <div class="row">
    <div class="col-xs-12 col-md-8">
      <div class="section">
        <h2 class="section_title section_title_big"><ion:title /></h2>
      </div>
      <div class="section_7">
        <div id="events_list">

          <div class="search-input">
            <div class="control-group ">
              <div class="controls">
                <input id="search" class="search hasclear" type="text" placeholder="Hľadať" />
                <button class="clearer"><i class="fa fa-times fa-lg"></i></button>
              </div>
            </div>
          </div>

          <div class="row section_3">
            <ul>
              <li class="col-sm-4">
                <button class="button button_type_2 button_grey_light btn-block" onclick="filterByType('all')">Všetky</button>
              </li>
              <li class="col-sm-4">
                <button class="button button_type_icon_medium button_grey_light active btn-block" onclick="filterByType('active')">
                  Aktívne<i class="fa fa-heartbeat "></i></button>
              </li>
              <li class="col-sm-4">
                <button class="button button_type_icon_medium button_grey_light passive btn-block" onclick="filterByType('passive')">
                  Divák<i class="fa fa-television"></i></button>
              </li>
            </ul>
          </div>

          <div class="section_3">
            <h4 class="section_title section_title_small pull-left">
              Zoradiť podľa : &nbsp;
            </h4>

            <button class="sort button button_type_3 button_grey_light" data-sort="date">
              Dátum
            </button>
            <button class="sort button button_type_3 button_grey_light" data-sort="title">
              Názov
            </button>
          </div>

          <div class="row">
            <ul class="list">
              <ion:articles:article>
                <li class="no-margin col-sm-6">
                  <ion:partial view="helpers/tile_event" />
                </li>
              </ion:articles:article>
            </ul>
          </div>

          <div class="pagination_block text-center">
            <ul class="pagination"></ul>
          </div>
        </div>
      </div>
    </div>

    <div class="col-xs-12 col-md-4">
      <ion:partial view="modules/panel_calendar" />
      <div class="section">
        <ion:page id="pridanie-podujatia">
          <a href="<ion:url />" class="button button_type_icon_medium button_grey btn-block" onclick="filterByType('all')">
            Pridať podujatie<i class="fa fa-plus"></i></a>
        </ion:page>
      </div>

    </div>

  </div>
</ion:page>

<script>
  var list;

  $(document).ready(function () {
    var options = {
      date: new Date(),
      valueNames: ['title', 'date', 'type'],
      page: 10,
      plugins: [
        ListPagination({}),
      ],
    };

    list = new List('events_list', options);
  });

  function filterByType(type) {
    if (type === "all") {
      list.filter(function (item) {
        return true;
      });
      return;
    }

    list.filter(function (item) {
      return (item._values.type == type);
    });
  }

  function filterByDate() {
    list.filter(function (item) {
      return (new Date(item._values.date) > list.date);
    });
  };

  $(".hasclear").keyup(function () {
    var t = $(this);
    t.next('button').toggle(Boolean(t.val()));

  });

  $(".clearer").hide($(this).prev('input').val());

  $(".clearer").click(function () {
    $(this).prev('input').val('').focus();
    $(this).hide();
    list.search();
  });
</script>

<ion:partial view="footer" />