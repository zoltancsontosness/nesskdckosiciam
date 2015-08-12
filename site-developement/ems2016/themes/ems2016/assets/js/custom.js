var navDropdowns = $("ul#navbar").children("li").has("ul");
navDropdowns.children("a").append('<i class="fa fa-angle-down fa-fw"></i>');
navDropdowns.children("ul").wrap('<div class="sub_menu_wrap type_2 clearfix"></div>');
