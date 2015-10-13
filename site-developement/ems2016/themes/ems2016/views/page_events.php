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
              <li class="col-sm-3">
                <button class="button button_type_2 button_grey_light btn-block" onclick="filterByType('all')">Všetky</button>
              </li>
              <li class="col-sm-3">
                <button class="button button_type_icon_medium button_grey_light active btn-block" onclick="filterByType('active')">
                  Aktívne<i class="fa fa-heartbeat "></i></button>
              </li>
              <li class="col-sm-3">
                <button class="button button_type_icon_medium button_grey_light passive btn-block" onclick="filterByType('passive')">
                  Divák<i class="fa fa-television"></i></button>
              </li>
              <li class="col-sm-3">
                <button class="button button_type_2 button_grey btn-block" onclick="filterOld()">
                  Uskutočnené</button>
              </li>
            </ul>
          </div>

          <div class="section_3 margin-bottom-20">
            <div class="row">
              <div class="col-sm-6">
                <b>
                  Zoradiť podľa : &nbsp;
                </b>

                <button class="sort button button_type_3 button_grey_light" data-sort="date">
                  Dátum
                </button>
                <button class="sort button button_type_3 button_grey_light" data-sort="title">
                  Názov
                </button>
              </div>
              <div class="col-sm-6">
                <div class="text-right hidden-xs">
                  <b>Zobrazujú sa : </b> <span class="showing"></span>
                </div>
                <div class="visible-xs margin-top-20">
                  <b>Zobrazujú sa : </b> <span class="showing"></span>
                </div>
              </div>
            </div>
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
      <div class="section">
        <ion:page id="pridanie-podujatia">
          <a href="<ion:url />" class="button button_type_icon_medium button_grey btn-block" onclick="filterByType('all')">
            Pridať podujatie<i class="fa fa-plus"></i></a>
        </ion:page>
      </div>

      <ion:partial view="modules/panel_calendar" />
    </div>

  </div>
</ion:page>

<script>
  var list;

  $(document).ready(function () {
    var options = {
      valueNames: ['title', 'date', 'type', 'date_ends'],
      page: 10,
      plugins: [
        ListPagination({
          outerWindow : 1,
        }),
      ],
    };

    list = new List('events_list', options);
    list.on('updated', addAnimations);
    filterByType('all');
  });

  function filterByType(type) {
    if (type === 'all') {
      list.filter(function (item) {
        $(".showing").text('<ion:lang key="span_allevents" />');
        return (getDate(item._values.date_ends) > getDate('<?php echo date("m/d/o"); ?>'));
      });
      sortByDate();
      return;
    }

    if (type == 'active') {
      $(".showing").text('<ion:lang key="span_eventsactive" />');
    } else {
      $(".showing").text('<ion:lang key="span_eventspassive" />');
    }

    list.filter(function (item) {
      return (item._values.type == type && getDate(item._values.date_ends) > getDate('<?php echo date("m/d/o"); ?>'));
    });

    sortByDate();
  }

  function filterOld() {
    $(".showing").text('<ion:lang key="span_pastevents" />');

    list.filter(function (item) {
      return (getDate(item._values.date_ends) <= getDate('<?php echo date("m/d/o"); ?>'));
    });

    list.sort('date', {
      order: "desc"
    });
  }

  function sortByDate() {
    list.sort('date', {
      order: "asc"
    });
  }

  function addAnimations() {
    $("#events_list .list li").each(function (i) {
      var el = $(this),
          newone = el.clone(true);
      el.before(newone);
      el.remove();

      setTimeout(function () {
        newone.find(".event").removeClass("animated fadeInUp").addClass("animated fadeInUp");
      }, (i) * 100);
    });
  }

  function getDate(source) {
    date_parts = source.split('/');
    return new Date(date_parts[2], date_parts[0] - 1, date_parts[1]);
  }

  $(".hasclear").keyup(function () {
    var t = $(this);
    t.next('button').toggle(Boolean(t.val()));

  });

  $(".clearer").hide($(this).prev('input').val());

  $(".clearer").click(function () {
    $(this).prev('input').val('').focus();
    $(this).hide();
    list.search();
    sortByDate();
  });
</script>

<ion:partial view="footer" />