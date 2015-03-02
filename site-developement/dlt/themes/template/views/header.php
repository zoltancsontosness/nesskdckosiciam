<!DOCTYPE HTML>
<html lang="<ion:current_lang />">
	<head>
		<meta charset="utf-8" />
    
    <!-- Website title : Will display the page or article's meta title or the site title if not set -->
    <title><ion:meta_title /></title>
 
    <meta name="description" content="<ion:meta_description />" />
    <meta name="keywords" content="<ion:meta_keywords />" />
 
    <!-- Theme_2 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="<ion:theme_url />assets/scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<ion:theme_url />assets/scripts/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Icons -->
    <link href="<ion:theme_url />assets/scripts/icons/general/stylesheets/general_foundicons.css" media="screen" rel="stylesheet" type="text/css" />  
    <link href="<ion:theme_url />assets/scripts/icons/social/stylesheets/social_foundicons.css" media="screen" rel="stylesheet" type="text/css" />
    <!--[if lt IE 8]>
        <link href="<ion:theme_url />assets/scripts/icons/general/stylesheets/general_foundicons_ie7.css" media="screen" rel="stylesheet" type="text/css" />
        <link href="<ion:theme_url />assets/scripts/icons/social/stylesheets/social_foundicons_ie7.css" media="screen" rel="stylesheet" type="text/css" />
    <![endif]-->
    <link rel="stylesheet" href="<ion:theme_url />assets/scripts/fontawesome/css/font-awesome.min.css">
    <!--[if IE 7]>
        <link rel="stylesheet" href="<ion:theme_url />assets/scripts/fontawesome/css/font-awesome-ie7.min.css">
    <![endif]-->

    <link href="<ion:theme_url />assets/scripts/carousel/style.css" rel="stylesheet" type="text/css" />
    <link href="<ion:theme_url />assets/scripts/camera/css/camera.css" rel="stylesheet" type="text/css" />
    <link href="<ion:theme_url />assets/scripts/wookmark/css/style.css" rel="stylesheet" type="text/css" />
    <link href="<ion:theme_url />assets/scripts/yoxview/yoxview.css" rel="stylesheet" type="text/css" />

    <link href="http://fonts.googleapis.com/css?family=Syncopate" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Abel" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link href="http://fonts.googleapis.com/css?family=Maven+Pro&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css">

    <link href="<ion:theme_url />assets/styles/custom.css" rel="stylesheet" type="text/css" />  
    <!-- /Theme_2 -->
	</head>
  <body id="pageBody">
    
<div id="divBoxed" class="container">
  <div class="transparent-bg" style="position: absolute;top: 0px;left: 0px;width: 100%;height: 100%;z-index: -1;zoom: 1;"></div>
    <div class="divPanel notop nobottom">
      <div class="row-fluid">
        <div class="span12">					
          <div id="divLogo">
            <a href="<ion:home_url />">
              <ion:page id="logo" limit="1">
                <ion:page:medias type="picture">
                  <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive" id="logoImg" style="max-height: 300px;" />
                </ion:page:medias>        
              </ion:page>
            </a>
          </div>
        </div>
      </div> 
      <div class="row-fluid">
        <div class="span12">				
          <div class="centered_menu">                      
            <div class="navbar second-menu">
              <button type="button" class="btn btn-navbar-highlight btn-large btn-primary" data-toggle="collapse" data-target=".nav-collapse">
                MENU <span class="icon-chevron-down icon-white"></span>
              </button>
              <div class="nav-collapse collapse">                          
                <ion:tree_navigation active_class="active" tag="ul" class="nav nav-pills ddmenu" menu="main">
                  <li>
                    <a href="<ion:url />"><ion:title /></a>
                  </li>
                </ion:tree_navigation>
              </div>
            </div>                     
          </div>				
          <div class="centered_menu">                      
            <div class="navbar second-menu">
              <div class="nav-collapse collapse">                          
                <ion:tree_navigation active_class="active" tag="ul" class="nav nav-pills ddmenu second-menu" menu="main_second">
                  <li>
                    <a href="<ion:url />"><ion:title /></a>
                  </li>
                </ion:tree_navigation>
              </div>
            </div>                     
          </div>
        </div>
      </div>
    </div>