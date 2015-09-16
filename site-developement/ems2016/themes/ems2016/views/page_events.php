<ion:partial view="header" breadcrumb="yes_please" />
<ion:page>
  <div class="row">
    <div class="section">
      <h2 class="section_title section_title_big"><ion:title /></h2>
    </div>
    <div class="col-xs-12 col-md-8">
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

          <ul class="row event-buttons-list">
            <li class="col-sm-4">
              <button class="button button_type_2 button_grey_light btn-block" onclick="filterByType('all')">Všetky</button>
            </li>
            <li class="col-sm-4">
              <button class="button button_type_2 button_grey_light active btn-block" onclick="filterByType('active')">Aktívne</button>
            </li>
            <li class="col-sm-4">
              <button class="button button_type_2 button_grey_light passive btn-block" onclick="filterByType('passive')">Divák</button>
            </li>
          </ul>

          <div class="margin-bottom-20">
            <span>Zoradiť podľa : </span>

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
      <!--<ion:partial view="modules/panel_calendar" />-->
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
  }
</script>

<ion:partial view="footer" />