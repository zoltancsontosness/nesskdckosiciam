<!DOCTYPE html>

  <html lang="<ion:current_lang />">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><ion:meta_title /></title>
    <meta name="description" content="<ion:meta_description />" />
    <meta name="keywords" content="<ion:meta_keywords />" />
   	<!-- OG tags -->
		<?php $title = "<ion:page:article:title />" ?>
   	<?php if(addslashes($title)) : ?>
			<meta property="og:title" content="<ion:page:article:title />"/>
		<?php else : ?>
			<meta property="og:title" content="<ion:page:title />"/>
		<?php endif; ?>
		
		<?php if('<ion:page:article:url />' != '') : ?>
			<meta property="og:url" content="<ion:page:article:url />" />
		<?php else : ?>
			<meta property="og:url" content="<ion:page:url />" />
		<?php endif; ?>
		
		<meta property="og:image" content="<ion:theme_url />img/kdc-horizontal.jpg" />
		<meta property="og:image:width" content="300" />
		<meta property="og:type" content="website" />
		
		
  <link rel="shortcut icon" href="<ion:theme_url/>img/favicon.ico" type="image/x-icon">

  <link rel="stylesheet" href="<ion:theme_url/>css/bootstrap.css">
  <link rel="stylesheet" href="<ion:theme_url/>css/main.css">
  <link rel="stylesheet" href="<ion:theme_url/>css/camera.css">
  <link rel="stylesheet" href="<ion:theme_url/>css/animate.css">
  
  <script type="text/javascript" src="<ion:theme_url/>js/jquery.min.js"></script>
  <script type="text/javascript" src="<ion:theme_url/>js/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="<ion:theme_url/>js/jquery.mobile.customized.min.js"></script>
    
  <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
</head>


<body>
  <div class="container-fluid">    