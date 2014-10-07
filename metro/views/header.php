<!DOCTYPE HTML>
<html lang="<ion:language:code />" dir="<ion:language:dir />">
	<head>
		<meta charset="utf-8">	
		<title><ion:meta_title /> | <ion:site_title /></title>
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta name="description" content="<ion:meta_description />" />
		<meta name="keywords" content="<ion:meta_keywords />" />
		
		<meta property="og:title" content="<ion:meta_title /> | <ion:site_title />" />
		<meta property="og:image" content="<ion:theme_url />images/logo-final.png" />		
		<meta property="og:description" content="<ion:meta_description />" />		
		<link rel="shortcut icon" href="<ion:theme_url />images/favicon.png">
		
		<!-- Styles -->
		<!-- Bootstrap CSS -->
		<link href="<ion:theme_url />css/bootstrap.min.css" rel="stylesheet">
		<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
		<link rel="stylesheet" href="<ion:theme_url />css/settings.css" media="screen" />
		<!-- Pretty Photo CSS -->
		<link href="<ion:theme_url />css/prettyPhoto.css" rel="stylesheet">
		<!-- Parallax slider -->
		<link rel="stylesheet" href="<ion:theme_url />css/slider.css">
		<!-- Flexslider -->
		<link rel="stylesheet" href="<ion:theme_url />css/flexslider.css">
		<!-- Font awesome CSS -->
		<link href="<ion:theme_url />css/font-awesome.min.css" rel="stylesheet">		
		<!-- Custom CSS -->
		<link href="<ion:theme_url />css/style.css" rel="stylesheet">
		<!-- Colors - Orange, Purple, Light Blue (lblue), Red, Green and Blue -->
		<link href="<ion:theme_url />css/lblue.css" rel="stylesheet">
		<link href="<ion:theme_url />css/camera.css" rel="stylesheet">
		<!-- End of styles -->
		
		<!-- Scripts -->
		<script src="<ion:theme_url />js/jquery.min.js"></script>
		<script src="<ion:theme_url />js/jquery-migrate-1.2.1.min.js"></script>
		
		<script src="<ion:theme_url />js/jquery.mmenu.js"></script>
		<script src="<ion:theme_url />js/modernizr.custom.28468.js"></script>
		<script src="<ion:theme_url />js/modernizr.custom.js"></script>
		<script src="<ion:theme_url />js/jquery.easing.js"></script>
		<script src="<ion:theme_url />js/jquery.mobile.customized.min.js"></script>
		<script src="<ion:theme_url />js/camera.min.js"></script>
		<script src="<ion:theme_url />js/classie.js"></script>
		<!-- End of scripts -->
	</head>
	<body>
	
	<!-- Header Starts -->
		<header>
		  <div class="container">
			<div class="row">
			  <div class="col-md-4 col-sm-4">
				<div class="logo">
				  <h1><a href="#"><img src="<ion:theme_url />img/logo-final.png" title="NESS KDC Kosiciam"/></a></h1>
				  <div class="hmeta"></div>
				</div>
			  </div>
			  <div class="col-md-5 col-md-offset-3 col-sm-6 col-sm-offset-2">
				
					<form class="form-inline" role="form">
					  <div class="form-group">
						<input type="text" class="form-control" id="search" placeholder="Type Something...">
					  </div>
					  <button type="submit" class="btn btn-default">Search</button>
					</form>
				
			  </div>
			</div>
		  </div>
		</header>
	<!-- Header Ends -->
	
	<!-- Navigation bar starts -->

		<div class="navbar bs-docs-nav" role="banner">
		  <div class="container">
		   <div class="navbar-header">
			 <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
				 <span class="sr-only">Toggle navigation</span>
				 <span class="icon-bar"></span>
				 <span class="icon-bar"></span>
				 <span class="icon-bar"></span>
			 </button>
		   </div>
		   
		  <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
			<ion:tree_navigation tag="ul" class="nav navbar-nav">
				<li <ion:is_active>class="active"</ion:is_active>>
					<a href="<ion:url />" class="dropdown-toggle" data-toggle="dropdown"><ion:title /> <b class="caret"></b></a>
				</li>				
			</ion:tree_navigation>
		  </nav>
		 </div>
	  </div>

	<!-- Navigation bar ends -->