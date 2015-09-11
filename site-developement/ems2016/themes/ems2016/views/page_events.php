<ion:partial view="header" breadcrumb="yes_please" />
<ion:page>
  <div class="section read_post_list tabs_content type_2">
    <h2 class="section_title section_title_big"><ion:title /></h2>

    <div class="row">
      <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="section photo_gallery" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
          <h3 class="section_title">Aktívne</h3>
          <ion:partial view="helpers/list_events" active="active" />
        </div>
      </div>

      <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="section photo_gallery" data-appear-animation="fadeInDown" data-appear-animation-delay="500">
          <h3 class="section_title">Pasívne</h3>
          <ion:partial view="helpers/list_events" active="passive" />
        </div>
      </div>

      <div class="col-xs-12 col-sm-6 col-md-4">
        <ion:partial view="modules/panel_calendar" />
      </div>
    </div>
  </div>
</ion:page>

<script>
  var list_active;
  var list_passive;

  $(document).ready(function () {
    var options = {
      date: new Date(),
      valueNames: ['title', 'date'],
      page: 10,
      plugins: [
      ListPagination({}),
    ],
    };

    var options1 = {
      date: new Date(),
      valueNames: ['title', 'date'],
      page: 10,
      plugins: [
      ListPagination({}),
    ],
    };

    list_active = new List('events_list_active', options);
    list_passive = new List('events_list_passive', options1);

    filterList(list_active,0);
    filterList(list_passive,0);
  });

  function showHistoryOfState(state) {
    switch (state) {
    case 'active':
      filterList(list_active, -1)
      return true;
    case 'passive':
      filterList(list_passive, -1)
      return true;
    }
    return false;
  }
</script>

<ion:partial view="footer" />