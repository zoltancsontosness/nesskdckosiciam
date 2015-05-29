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
	}
);

/* ---------- Animation for career-article using animate.css ------------- */
$("a#send-cv").click(function () {
	$("#content").addClass("animated fadeOutDown");
	$("body").animate({
		scrollTop: 0
	});
	$(this).removeClass("flipInY").addClass("hide");
	$("#more-info").removeClass("hide").addClass("animated flipInY");
	setTimeout(function () {
		$("#content").addClass("hide");
		$("#form").removeClass("hide fadeOutDown").addClass("animated fadeInUp");
	}, 300);

	return false;
});

$("a#more-info").click(function () {
	$("#form").addClass("animated fadeOutDown");
	$("body").animate({
		scrollTop: 0
	});
	$(this).removeClass("flipInY").addClass("hide");
	$("a#send-cv").removeClass("hide").addClass("animated flipInY");
	setTimeout(function () {
		$("#form").addClass("hide");
		$("#content").removeClass("hide fadeOutDown").addClass("animated fadeInUp");
	}, 300);

	return false;
});

/* Read the uploaded file */
$(document).on('change', '.btn-file :file', function() {
  var input = $(this),
      numFiles = input.get(0).files ? input.get(0).files.length : 1,
      label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
  input.trigger('fileselect', [numFiles, label]);
});

$(document).ready( function() {
    $('.btn-file :file').on('fileselect', function(event, numFiles, label) {
        var input = $(this).parents('.input-group').find(':text');
        var log = numFiles > 1 ? numFiles + ' files selected' : label;
        
        if( input.length ) {
            input.val(log);
        } else {
            if( log ) alert(log);
        }        
    });
});