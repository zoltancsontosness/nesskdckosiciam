<!DOCTYPE html>

  <html lang="<ion:current_lang />">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><ion:meta_title /></title>
    <meta name="description" content="<ion:meta_description />" />
    <meta name="keywords" content="<ion:meta_keywords />" />

  <link rel="stylesheet" href="<ion:theme_url/>css/bootstrap.css">
  <link rel="stylesheet" href="<ion:theme_url/>css/main.css">
  <link rel="stylesheet" href="<ion:theme_url/>css/camera.css">
  
  <script type="text/javascript" src="<ion:theme_url/>js/jquery.min.js"></script>
  <script type="text/javascript" src="<ion:theme_url/>js/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="<ion:theme_url/>js/jquery.mobile.customized.min.js"></script>
    
  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>


<body>
  <div class="container-fluid">
  
    <header>
	
	  <!-- Navigation -->
	  <div class="row navigation">	    
	    <div class="col-lg-3 col-lg-offset-1">
	      <a class="logo" href="/"><img src="<ion:theme_url/>img/ness-logo.png" alt="Ness Technologies" /></a>
		</div>
		<div class="col-lg-6 col-lg-offset-1">
	      <nav>
	      <ion:navigation tag="ul">
	        <li<ion:is_active> class="active"</ion:is_active>>
		      <a href="<ion:url />"><ion:title /></a>
 	        </li>
	      </ion:navigation>
          </nav>
		</div>		
	  </div>
	
	  <!-- Camera slider -->
	  <div class="slider clearfix">
	    <div class="cover"></div>
	    <div class="slider-text col-xs-12">
	    	<h1>Join Ness Today</h1>
		    <p class="perex col-xs-12 col-md-4 col-md-offset-4">
		    	We have 40 jobs open. Seek your oportunity or apply for Ness Academy to grow your skills faster.
		    </p>
		    <div class="buttons col-xs-12">
		    	<a href="#" class="btn btn-green btn-lg">Seek for your oportunity</a>
		    	<a href="#" class="btn btn-transparent btn-lg">Apply for Ness Academy</a>
		    </div>
	    </div>
	    <div class="camera_wrap">
		  <div data-src="<ion:theme_url/>img/camera/slides/bridge.jpg"></div>
		  <div data-src="<ion:theme_url/>img/camera/slides/leaf.jpg"></div>
		  <div data-src="<ion:theme_url/>img/camera/slides/road.jpg"></div>
	    </div>
	  </div>	  
	  
    </header>
  