<!DOCTYPE html>
<html lang="<ion:language:code />">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>
    <ion:meta_title with_site_title="true" position="after" separator=" | " />
  </title>

  <meta name="description" content="<ion:meta_description />" />
  <meta name="author" content="NESS KDC Košiciam">
  <meta name="keywords" content="<ion:meta_keywords />" />
  <link rel="icon" type="image/png" href="<ion:theme_url />assets/img/la_logo.ico">

  <link href="<ion:theme_url />assets/css/bootstrap.css" rel="stylesheet">
  <link href="<ion:theme_url />assets/css/bootstrap-theme.css" rel="stylesheet">
  <link href="<ion:theme_url />assets/css/font-awesome.min.css" rel="stylesheet">
  <link href="<ion:theme_url />assets/css/owl.carousel.css" rel="stylesheet">
  <link href="<ion:theme_url />assets/css/lightbox.css" rel="stylesheet">
  <link href="<ion:theme_url />assets/css/style.css" rel="stylesheet">
</head>

<body>
  <noscript>
    <div class="container-fluid">
      <div class="row">
        <div class="alert alert-danger text-center">
          Je nám ľúto ale pre správne fungovanie stránky je potrebné, aby ste si aktovovali <strong>Javascript</strong>.
        </div>
      </div>
    </div>
  </noscript>

  <div class="container">
    <div class="row">
      <div class="col-md-12" id="header">

        <div id="header-image" data-stellar-background-ratio="0.5">
          <div class="col-sm-8 col-md-9 site-header" data-stellar-background-ratio="0.75">
            <span><ion:site_title /></span>
            <small><ion:meta_description /></small>
          </div>
          <div class="col-sm-4 col-md-3 hidden-xs logo-wrapper">
            <img src="<ion:theme_url />assets/img/la_logo.png" alt="" class="img-responsive" />
          </div>
        </div>

        <nav class="navbar navbar-default">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
              <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
            </button> <a class="navbar-brand visible-xs" href="#">Menu</a>
          </div>

          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ion:tree_navigation active_class="active" tag="ul" class="nav navbar-nav" menu="main" />
          </div>

        </nav>

      </div>
    </div>