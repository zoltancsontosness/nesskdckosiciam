/* Animations */
$(".item").hover(
	function (event) {
		var height = $(this).find(".perex").outerHeight();
		$(this).find(".overlay").stop(true, false).animate({
			height: height,
			bottom: 0,
			left: 0,
		});
	},
	function () {
		$(this).find(".overlay").stop(true, false).animate({
			height: "100%",
			bottom: 0,
			left: 0
		});
	});