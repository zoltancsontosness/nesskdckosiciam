<!DOCTYPE html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />

	<!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="revisit-after" content="15 days" />
	
	<meta name="description" content="<ion:meta_description />" />
	<meta name="keywords" content="<ion:meta_keywords />" />
	<meta name="language" content="<ion:current_lang />" />

	<title><ion:meta_title /> | <ion:site_title /></title>
  
	<!-- Included CSS Files -->
	<link rel="stylesheet" href="<ion:theme_url />assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="<ion:theme_url />assets/css/bootstrap-responsive.min.css">
	<link rel="stylesheet" href="<ion:theme_url />assets/fonts/font-awesome.min.css">
	<link rel="stylesheet" href="<ion:theme_url />assets/css/main.css">
	<link rel="stylesheet" href="<ion:theme_url />assets/css/jquery.fancybox.css">

	<script src="<ion:theme_url />javascript/vendor/modernizr-2.6.2.min.js"></script>
	<!--[if IE 7]>
		<link rel="stylesheet" media="all" href="<ion:theme_url />assets/fonts/font-awesome-ie7.min.css" />
	<![endif]-->

	<!-- Ionize JS Lang object -->
	<ion:jslang />

	<!-- if JS needs to get the theme URL, we give it to it -->
	<script type="text/javascript">
		var theme_url = '<ion:theme_url />';
	</script>

</head>

<body>

	<!-- Main body wrapper -->
	<div class="wrapper">
		
		<!-- =======================================================================
			 header
			 ======================================================================= -->
		<header class="clearfix">
		
			<!-- Site logo -->
			<div id="logo" class="clearfix">
				<a class="silver-text" href="<ion:home_url />">
					<strong>Theme</strong>
					<h1 class="cyan">Time</h1>
				</a>
				<a class="visible-phone nav_expander icon-reorder icon-2x cyan"></a>
			</div>
			
			<!--
				Language Selector
			<ion:languages tag="ul" class="right">
				<li <ion:language:is_active> class="active"</ion:language:is_active>>
					<a class="small button" href="<ion:language:url />">
						<ion:language:code />
					</a>
				</li>
			</ion:languages>	
			-->
			<ion:partial view="partials/navigation" />
			
		</header><!-- /header -->

		<div class="separator cyan-back clearfix">
			<div class="narrow-left silver-back"></div>
		</div>	
		