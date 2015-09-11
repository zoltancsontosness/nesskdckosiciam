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

/**
 * Filter list for events page by date.
 * @param   {Object}   list      list to filter
 * @param   {Number}   direction depending on number direction of showing history
 */
function filterList(list, direction) {
  list.date.setMonth(list.date.getMonth() + direction);
  list.filter(function (item) {
    return (new Date(item._values.date) > list.date);
  });

  for (var i = 0; i < list.length; i++) {
    list[i].sort('date', {
      order: "asc"
    });
  };
}