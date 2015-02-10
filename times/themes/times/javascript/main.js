/*
 * Tab switching logic
 */ 
var tabSwitch = function (context) {
  
  var id = context.data('tab'),
      parent = context.closest('section');
  
  $('.tabs a').removeClass('selected');
  context.addClass('selected');
  parent.children('ol').hide(); 
  $('#' + id).fadeIn('slow');

};
 
/* ============================================================
   Triggers an windowResized event once the resize is completed
   ============================================================ */
$(window).resize(function() {
	if (this.resizeInProgress) 
		clearTimeout(this.resizeInProgress);
    this.resizeInProgress = setTimeout(function() {
		$(this).trigger('windowResized');
    }, 500);
}); 
 
$('document').ready(function() {

	/* ====================================
	   Carousel initialisation
	   ==================================== */
    $("#carousel").jaysCarousel({
        leftButton: $(".carousel-left-button"),
        rightButton: $(".carousel-right-button"),
        speed: 10000,
        direction: "left",
		positionContainer: $('#position-icons')
    });	
	
	// Tab switching
	$('.tabs a').on('click', function(e) {
		e.preventDefault();
		tabSwitch($(this));
	});
	
	// Expands the navigation
	$('.nav_expander').on('click', function () {
		$('#main-nav').slideToggle('slow');
	});
	
	// Fancy box
	$(".fancybox-button").fancybox();	
	
	// Controlls the aside gallery
	$('#aside-gallery .controll').on('click', function() {
		var direction = $(this).attr('data-direction'),
			prevItem = $('#aside-gallery ul.active').prev('ul').length === 0 ? $('#aside-gallery ul.active').next('ul') : $('#aside-gallery ul.active').prev('ul'),
			nextItem = $('#aside-gallery ul.active').next('ul').length === 0 ? $('#aside-gallery ul.active').prev('ul') : $('#aside-gallery ul.active').next('ul');
		$('#aside-gallery ul.active').removeClass('active');
		if (direction === "left") {
			prevItem.addClass('active');
			return true;
		}
		nextItem.addClass('active');
	});
	
	// Search hanling
	$('.search-submit').on('click', function() {
		$('#search-query').submit();
	});
	
});

/**
 * Put all javascript that needs to be refreshed after window resize here
 */
$(window).on('windowResized', function() {

	/* ====================================
	   Carousel re initialisation
	   ==================================== */
	$('#position-icons').empty();   
	var carousel = $('#carousel'),
		html = carousel.html(),
		parent = $('#carousel').parent();
	
	carousel.remove();
	parent.append('<div id="carousel"></div>');
	
	carousel = $('#carousel').append(html);
	carousel.children('ul').removeAttr('style');
	carousel.children('ul').children('li').removeAttr('style');
		
	carousel.jaysCarousel({
        leftButton: $(".carousel-left-button"),
        rightButton: $(".carousel-right-button"),
        speed: 200000,
        direction: "left",
		positionContainer: $('#position-icons')
    });
	
});