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

  <!-- ICONS -->
  <link rel="shortcut icon" href="<ion:theme_url/>assets/img/favicon.ico" type="image/x-icon">
  <link rel="icon" href="<ion:theme_url/>assets/img/favicon.ico" type="image/x-icon">

  <!-- FONTS -->
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>

  <!-- Theme styles -->
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/bootstrap.css">
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/style.css" />
  <link rel="stylesheet" href="<ion:theme_url/>assets/css/font-awesome.min.css" />
  <link rel="stylesheet" href="<ion:theme_url/>assets/css/meteocons.css">
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/responsive.css" />
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/owl.carousel.css" />
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/plugins/flexslider/flexslider.css" />
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/animate.css" />
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/jquery.fancybox-1.3.4.css" />

  <!-- Main styles -->
  <link href="<ion:theme_url/>assets/css/main.css" rel="stylesheet" />
  <!--modernizr-->
  <script src="<ion:theme_url/>assets/js/jquery-2.1.0.min.js"></script>
  <script src="<ion:theme_url/>assets/js/bootstrap.js"></script>
  <!-- Date & Time picker -->
  <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/plugins/datepicker/css/bootstrap-datetimepicker.css" />
  <script async src='//www.google.com/recaptcha/api.js'></script>

  <meta property="og:title" content="<ion:article:title />" />
  <meta property="og:type" content="article" />
  <meta property="og:image" content="<ion:article:medias:media:src limit='1' type='picture' />" />
  <meta property="og:url" content="<ion:article:url />" />
  <meta property="og:description" content="<ion:article:content function='strip_tags'/>" />
</head>

<body class="wide_layout">
  <div class="loader"></div>
  <!--[if (lt IE 9) | IE 9]>
    <div class="ie_message_block">
      <div class="container">
        <div class="wrapper">
          <div class="clearfix"><i class="fa fa-exclamation-triangle f_left"></i><b>Attention!</b> This page may   not display correctly. You are using an outdated version of Internet Explorer. For a faster, safer browsing experience.<a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode" class="button button_type_3 button_grey_light f_right" target="_blank">Update Now!</a></div>
        </div>
      </div>
    </div>
  <![endif]-->

  <!--cookie-->
  <!-- <div class="cookie">
          <div class="container">
            <div class="clearfix">
              <span>Please note this website requires cookies in order to function correctly, they do not store any specific information about you personally.</span>
              <div class="f_right"><a href="#" class="button button_type_3 button_orange">Accept Cookies</a><a href="#" class="button button_type_3 button_grey_light">Read More</a></div>
            </div>
          </div>
        </div>-->
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

    <ion:attr key="breadcrumb" is="true">
      <div class="breadcrumb">
        <div class="container">
          <div>
            <ion:page:breadcrumb article="true" child-tag="span" separator=" / " home="true" />
          </div>
        </div>
      </div>
    </ion:attr>

    <div class="content section_5">
      <div class="container">