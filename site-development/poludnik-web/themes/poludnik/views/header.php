<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<ion:current_lang />" lang="<ion:current_lang />">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>
    <ion:meta_title />
  </title>
  <meta name="description" content="<ion:meta_description />" />
  <meta name="keywords" content="<ion:meta_keywords />" />

  <link href="<ion:theme_url/>assets/css/bootstrap.min.css" rel="stylesheet">
  <link href="<ion:theme_url/>assets/less/main.css" rel="stylesheet">
  <link href="<ion:theme_url/>assets/css/lightbox.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="<ion:theme_url/>assets/css/slick.css" />
  <link rel="stylesheet" type="text/css" href="<ion:theme_url/>assets/css/slick-theme.css" />

  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  <script type="text/javascript" src="<ion:theme_url/>assets/js/jquery-2.1.4.min.js"></script>
  <script src='<ion:theme_url/>assets/js/grids.min.js'></script>
  <script src='<ion:theme_url/>assets/js/jquery.bootstrap-autohidingnavbar.js'></script>
</head>

<body>
  <div class="container">
    <div class="row text-center" id="header-container">

      <div class="col-lg-2 visible-lg">
        <img src="<ion:theme_url />assets/images/musicaiuvenalis.png" class="hidden-xs hidden-sm desaturate no-drag header-logo" alt="Musica Iuvenalis" />
      </div>

      <div class="col-lg-2 col-xs-12 col-lg-push-8">
        <div class="btn-group pull-right" role="group">
          <ion:languages>
            <button type="button" class="btn btn-custom btn-lang" onclick="window.location.href='<ion:language:url />'">
              <img src="<ion:theme_url />assets/images/flags/<ion:language:code/>.png" alt="<ion:language:code/>" />
            </button>
          </ion:languages>
        </div>
      </div>

      <div id="header-title-wrapper" class="col-lg-8 col-xs-12 col-lg-pull-2 ">
        <a href="<ion:home_url />">
          <h1 class="hoverable"><ion:site_title tag=""/></h1>
          <h3><ion:meta_description tag=""/></h3>
        </a>
      </div>
    </div>

    <!--    DEFAULT NAVBAR-->
    <nav class="navbar navbar-inverse hidden-xs">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>
      
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ion:tree_navigation active_class="active" tag="ul" class="nav navbar-nav" menu="main">
          <li>
            <a href="<ion:url />">
              <ion:title />
            </a>
          </li>
        </ion:tree_navigation>
      </div>
    </nav>
    <!--        NAVBAR FOR MOBILE DEVICES -->
    <nav class="navbar navbar-fixed-top navbar-inverse visible-xs">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand">Menu</a>
      </div>
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
        <ion:tree_navigation active_class="active" tag="ul" class="nav navbar-nav" menu="main">
          <li>
            <a href="<ion:url />">
              <ion:title />
            </a>
          </li>
        </ion:tree_navigation>
      </div>
    </nav>