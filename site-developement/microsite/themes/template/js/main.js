/* Animations */
$(".item").hover(
	function () {
		var height = $(".overlay p.perex").height();
		$(this).find(".overlay").animate({
			height: height,
			bottom: 0,
			left: 0,
		})
	},
	function () {
		$(this).find(".overlay").animate({
			height: "100%",
			bottom: 0,
			left: 0
		})
	});