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
		
		<link rel='stylesheet' type='text/css' href="<ion:theme_url />css/style.css" />
	    <link rel="stylesheet" type="text/css" href="<ion:theme_url />css/style2.css" />
		<link rel="stylesheet" type="text/css" href="<ion:theme_url />css/jquery.mmenu.all.css" />
		<link rel="stylesheet" type="text/css" href="<ion:theme_url />css/camera.css" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,cyrillic-ext,cyrillic,latin-ext,greek,greek-ext' rel='stylesheet' type='text/css'>
		<script src="<ion:theme_url />js/jquery.min.js"></script>
		<script src="<ion:theme_url />js/jquery-migrate-1.2.1.min.js"></script>
		
		<script src="<ion:theme_url />js/jquery.mmenu.js"></script>
		<script src="<ion:theme_url />js/modernizr.custom.28468.js"></script>
		<script src="<ion:theme_url />js/modernizr.custom.js"></script>
		<script src="<ion:theme_url />js/classie.js"></script>
	</head>
	<body>
			<div id="page">
					<div id="header">
						<a class="navicon" href="#menu-left"> </a>
					</div>
					<nav id="menu-left">
            			<ion:tree_navigation tag="ul">
            			<li <ion:is_active>class="active"</ion:is_active>>
            			    <a href="<ion:url />"><ion:title /></a>
            			</li>				
            			</ion:tree_navigation>
					</nav>
			</div>
			<div class="header" id="move-top">
				<div class="wrap">
					<div class="header-left">
						<div class="logo">
							<a href="<ion:base_url />"><img src="<ion:theme_url />images/logo-final.png" title="wildflat" /> </a>
						</div>
					</div>
					<div class="header-right">
						<div class="top-nav">
							<ion:tree_navigation tag="ul">
							<li <ion:is_active>class="active"</ion:is_active>>
								<a href="<ion:url />"><ion:title /></a>
							</li>				
							</ion:tree_navigation>					
						</div>
					</div>
					<div class="clear"> </div>
				</div>
				<div class="clear"> </div>
			</div>
			