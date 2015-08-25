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

  <link href="<ion:theme_url />assets/css/bootstrap.min.css" rel="stylesheet">
  <link href="<ion:theme_url />assets/css/bootstrap-theme.css" rel="stylesheet">
  <link href="<ion:theme_url />assets/css/font-awesome.min.css" rel="stylesheet">
  <link href="<ion:theme_url />assets/css/owl.carousel.css" rel="stylesheet">
  <link href="<ion:theme_url />assets/css/lightbox.css" rel="stylesheet">
  <link href="<ion:theme_url />assets/css/style.css" rel="stylesheet">

</head>

<body>

  <div class="container">
    <div class="row">        
      <div class="col-md-12" id="header">
        <img src="<ion:theme_url />assets/img/header.png" alt="" class="img-responsive" />        
      </div>       
      <div class="col-md-12 header">
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