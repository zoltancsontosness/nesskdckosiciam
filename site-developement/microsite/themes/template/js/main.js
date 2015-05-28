/* Animations */
$(".item").hover(
	function () {
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

/* ---------- Animation for career-article using animate.css ------------- */
$("a.send-cv").click(function () {
	$("#content").addClass("animated fadeOutLeft");
	setTimeout(function () {
		$("#content").addClass("hide");
		$("#form").removeClass("hide").addClass("animated fadeInLeft");
	}, 600);
});