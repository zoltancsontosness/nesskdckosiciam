<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title><ion:meta_title /> | <ion:site_title /></title>
		<!-- TODO - add OG tags -->
        <meta name="description" content="<ion:meta_description />" />
		<meta name="keywords" content="<ion:meta_keywords />" />
        
		<meta name="author" content="NESS KDC">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="robots" content="index, follow" />

        <link rel="stylesheet" href="<ion:theme_url/>css/bootstrap.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="<ion:theme_url/>js/owl.carousel.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="<ion:theme_url />fonts/stylesheet.css" />
        <link rel="stylesheet" href="<ion:theme_url />css/resets.css" />
        <link rel="stylesheet" href="<ion:theme_url />css/colors.css" />
        <link rel="stylesheet" href="<ion:theme_url />css/main.css" />
        <link href="<ion:theme_url/>css/owl.carousel.css" rel="stylesheet">
        <link href="<ion:theme_url/>css/lightbox.css" rel="stylesheet" />
        <!-- <link rel="stylesheet" href="<ion:theme_url />css/main.min.css" /> -->

        <link rel="shortcut icon" href="<ion:theme_url />img/favicon.ico">

        <!--[if lt IE 9]>
            <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
            <script>window.html5 || document.write('<script src="js/html5shiv.js"><\/script>')</script>
        <![endif]-->
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
		<!-- Top small navigation -->
		<div id="top-nav" class="silver-background top-grill">
			<div class="wrapper clearfix">
				<!-- Lang selector -->
				<div class="lang-selector white left">
					<ion:languages tag="ul">
						<?php /*
						<li <ion:language:is_active> class="active"</ion:language:is_active>>
							<a href="<ion:language:url />"><ion:language:code /></a>
						</li>
						*/ ?>
					</ion:languages>
				</div>
				<!-- Search 
				<ion:page id="15">
				<div class="search right white-background">
					<form action="<ion:url />" name="search" method="post">
						<input type="hidden" name="form" value="search" />
						<input type="text" name="realm" value="" placeholder="<ion:lang key="search" />..." />
						<input type="submit" class="ico silver-light submit" value="&#xf002;" />
					</form>
				</div>
				</ion:page>	-->			
			</div>
		</div>
		
		<?php
			$pageId = <ion:page:id />;
			if ($pageId == 4) { ?>
			<ion:partial view="widgets/news_reader" />
		<?php } else { ?>
			<ion:partial view="widgets/custom_header" />			
		<?php } ?>
		
		<!-- Navigation -->
		<nav class="red-background white">
			<div class="wrapper clearfix">
				<ul>
					<li class="mobile"><a><span class="ico">&#xf0c9;</span> <ion:lang key="navigation" /></a></li>
					<ion:tree_navigation level="0"  active_class="active"  tag="ul" id="nav">
                        <li>
                            <a href="<ion:url />"><ion:title /></a>
                        </li>
					</ion:tree_navigation>
				</ul>
			</div>
		</nav>
