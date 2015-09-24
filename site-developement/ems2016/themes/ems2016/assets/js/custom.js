$(document).ready(function () {
  var navDropdowns = $("ul#navbar").children("li").has("ul");
  navDropdowns.children("a").append('<i class="fa fa-angle-down fa-fw"></i>');
  navDropdowns.children("ul").wrap('<div class="sub_menu_wrap type_2 clearfix"></div>');

  /**
   * Tooltips
   */
  $('[data-toggle="popover"]').popover();

  /** Add to all tables responsive bootstrap view. **/
  $("table").wrap('<div class="table"></div>');
  $("table").removeAttr("border")
  $("table").addClass("table");
  sticky_footer();
});

/**
 * Sticky footer responsive
 */
function sticky_footer() {
  var footerHeight = $("footer.footer").outerHeight() + 40;
  $("body").css("margin-bottom", footerHeight);
}

/*
  Equalize Heights of elements
*/
function equalize(elementClass) {
  var elements = $('.' + elementClass);
  if ($(window).width() >= 992) {
    var maxHeight = 0;
    elements.each(function () {
      if ($(this).height() > maxHeight) {
        maxHeight = $(this).height();
      }
    });
    elements.height(maxHeight);
  } else {
    elements.removeAttr("style");
  }
};