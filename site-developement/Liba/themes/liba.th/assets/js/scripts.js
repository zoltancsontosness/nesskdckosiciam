/* Stellar parallax effect initial configuration. */
$(function () {
  $.stellar({
    horizontalScrolling: false,
    verticalOffset: 40,
    hideDistantElements: true,
  });
});

/* Owl carousel initial configuration. */
$(document).ready(function () {
  var fs = $("#footer-slider");
  var ss = $("#sidebar-slider");

  fs.owlCarousel({
    margin: 20,
    loop: true,
    autoWidth: true,
    autoplay: true,
    autoplayTimeout: 800,
  });

  ss.owlCarousel({
    items: 1,
    autoplay: true,
    autoplayTimeout: 3000,
    loop: true,
    nav: false,
    navText: ['<i class="fa fa-chevron-left fa-2x"></i>','<i class="fa fa-chevron-right fa-2x"></i>']
  });
});

/* Apply bootstrap dropdown classes to tree organized navigation bars. */
var navDropdowns = $("ul.nav").children("li").has("ul");
navDropdowns.addClass("dropdown").children("a").addClass("dropdown-toggle").attr({
  "data-toggle": "dropdown",
  "data-hover": "dropdown",
  role: "button",
  "aria-expanded": "false"
}).append(' <b class="caret"></b>');
navDropdowns.children("ul").addClass("dropdown-menu").attr({
  role: "menu"
});

/** Add to all tables responsive bootstrap view. **/
$("table").wrap('<div class="table-responsive"></div>');
$("table").removeAttr("border")
$("table").addClass("table");

/* Initialize google map at Contact page. */

$(function () {
  $('.columnize').find('table, thead, tbody, tfoot, colgroup, caption, label, legend, script, style, textarea, button, object, embed, tr, th, td, li, h1, h2, h3, h4, h5, h6, form').addClass('dontsplit');
  $('.columnize').find('h1, h2, h3, h4, h5, h6').addClass('dontend');
  $('.columnize').find('br').addClass('removeiflast').addClass('removeiffirst');

  $('h2').addClass("dontend");
  $('.columnize').columnize({
    lastNeverTallest: true,
    width: 600,
  });
});

$('.same-height').responsiveEqualHeightGrid();