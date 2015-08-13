<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie9" lang="en"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="<ion:current_lang />">
<!--<![endif]-->

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <title>
    <ion:meta_title />
  </title>
  <meta name="description" content="<ion:meta_description />" />
  <meta name="keywords" content="<ion:meta_keywords />" />
  <!-- FONTS -->
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

  <!-- Theme styles -->
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/style.css" />
  <link rel="stylesheet" href="<ion:theme_url/>assets/css/font-awesome.min.css" />
  <link rel="stylesheet" href="<ion:theme_url/>assets/css/meteocons.css">
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/responsive.css" />
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/owl.carousel.css" />
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/plugins/flexslider/flexslider.css" />
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/animate.css" />

  <!-- Main styles -->
  <link href="<ion:theme_url/>assets/css/main.css" rel="stylesheet" />
  <!--modernizr-->
  <script src="<ion:theme_url/>assets/js/jquery.modernizr.js"></script>
  <script src="<ion:theme_url/>assets/js/jquery-2.1.0.min.js"></script>
  <script src="<ion:theme_url/>assets/js/bootstrap.js"></script>
    <!-- Date & Time picker -->
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/plugins/datepicker/css/bootstrap-datetimepicker.css" />
</head>

<body>
  <div class="wrapper_container">

    <!-- Header -->
    <header role="banner" class="header header-main">
      <div class="h_bot_part">
        <div class="container">
          <div class="row">
            <div class="col-xs-12">
              <div class="clearfix">
                <a href="<ion:home_url />" class="f_left logo"><img src="<ion:theme_url/>assets/img/KE2016_horizont_eng.jpg" alt=""></a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="spacer"></div>
      <div class="menu_wrap">
        <div class="menu_border">
          <div class="container clearfix menu_border_wrap">
            <button id="menu_button">
              Menu
            </button>
            <nav role="navigation" class="main_menu menu_var2">
              <ion:tree_navigation active_class="current" tag="ul" id="navbar" />
            </nav>
          </div>
        </div>
      </div>
    </header>
    <div class="content section_5">
      <div class="container">