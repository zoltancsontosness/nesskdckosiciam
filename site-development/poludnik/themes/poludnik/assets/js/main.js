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

//images no-drag script
var elements = document.getElementsByClassName('no-drag');
for (var i = 0; i < elements.length; i++) {
  elements.item(i).draggable = false;
}

$('.responsive-element').responsiveEqualHeightGrid();

//navbar init :
$(".navbar-fixed-top").autoHidingNavbar();
jQuery(function ($) {
  $('.navbar .dropdown').hover(function () {
    $(this).find('.dropdown-menu').first().stop(true, true).delay(250).slideDown();

  }, function () {
    $(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideUp();
  });
});
