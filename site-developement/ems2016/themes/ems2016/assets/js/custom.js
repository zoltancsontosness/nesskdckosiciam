$(document).ready(function () {
  var navDropdowns = $("ul#navbar").children("li").has("ul");
  navDropdowns.children("a").append('<i class="fa fa-angle-down fa-fw"></i>');
  navDropdowns.children("ul").wrap('<div class="sub_menu_wrap type_2 clearfix"></div>');

  /**
   * Sticky footer responsive
   */
  var footerHeight = $("footer.footer").outerHeight() + 40;
  $("body").css("margin-bottom", footerHeight);

  /**
   * Tooltips
   */
  $('[data-toggle="popover"]').popover();

  /** Add to all tables responsive bootstrap view. **/
  $("table").wrap('<div class="table"></div>');
  $("table").removeAttr("border")
  $("table").addClass("table");
});

function showHistory(state) {
  switch (state) {
  case 'active':
    events_list_active.date.setMonth(events_list_active.date.getMonth() - 1);
    events_list_active.filter(function (item) {
      return (new Date(item._values.date) > events_list_active.date);
    });
    console.log('act'+events_list_active.date);
    break;
  case 'passive':
    events_list_passive.date.setMonth(events_list_passive.date.getMonth() - 1);
    events_list_passive.filter(function (item) {
      return (new Date(item._values.date) > events_list_passive.date);
    });
    console.log('pas'+events_list_passive.date);
    break;
  }
  sortList();
}

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

var events_list_active = new List('events_list_active', options);
var events_list_passive = new List('events_list_passive', options1);
var lists = [events_list_active, events_list_passive];

for (var i = 0; i < lists.length; i++) {
  lists[i].filter(function (item) {
    return (new Date(item._values.date) > lists[i].date);
  });

  sortList();
}

function sortList() {
  for (var i = 0; i < lists.length; i++) {
    lists[i].sort('date', {
      order: "asc"
    });
  }
}