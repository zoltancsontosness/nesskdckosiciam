<!DOCTYPE html>
<html lang="<ion:current_lang />">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <!-- Website title : Will display the page or article's meta title or the site title if not set -->
    <title><ion:meta_title /></title>

    <meta name="description" content="<ion:meta_description />" />
    <meta name="keywords" content="<ion:meta_keywords />" />

    <!-- The "style.css" file will be located in /themes/my_theme/assets/css/ -->
    <link rel="stylesheet" type="text/css" media="all" href="<ion:theme_url/>assets/css/style.css" />

    <link href="<ion:theme_url/>assets/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- <link href="<ion:theme_url/>assets/css/bootstrap.css" rel='stylesheet' type='text/css' /> -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js" async></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js" async></script>
    <![endif]-->
    <link href="<ion:theme_url/>assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- start plugins -->
    <script type="text/javascript" src="<ion:theme_url/>assets/js/jquery.min.js"></script>
    <!-- <script type="text/javascript" src="<ion:theme_url/>assets/js/bootstrap.js"></script> -->
    <script type="text/javascript" src="<ion:theme_url/>assets/js/bootstrap.min.js"></script>
    <!-- start slider -->
    <link href="<ion:theme_url/>assets/css/slider.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="<ion:theme_url/>assets/js/modernizr.custom.28468.js"></script>
    <script type="text/javascript" src="<ion:theme_url/>assets/js/jquery.cslider.js"></script>

    <script type="text/javascript">
        $(function() {

            $('#da-slider').cslider({
                autoplay : true,
                bgincrement : 500
            });

        });
    </script>
    <!-- Owl Carousel Assets -->
    <link href="<ion:theme_url/>assets/css/owl.carousel.css" rel="stylesheet">
    <script src="<ion:theme_url/>assets/js/owl.carousel.js"></script>
    <script>
        $(document).ready(function() {

            $("#owl-demo").owlCarousel({
                items : 4,
                lazyLoad : true,
                autoPlay : true,
                navigation : true,
                navigationText : ["", ""],
                rewindNav : false,
                scrollPerPage : false,
                pagination : false,
                paginationNumbers : false,
            });

        });
    </script>
    <!-- //Owl Carousel Assets -->
    <!----font-Awesome----->
    <link rel="stylesheet" href="<ion:theme_url/>assets/fonts/css/font-awesome.min.css">
    <!----font-Awesome----->
</head>

<body>

<!-- Main Navigation menu -->
<ion:navigation id="home" level="0" tag="ul" class="navigation" active_class="active" />

<div class="header_bg1">
    <div class="container">
        <div class="row header">
            <div class="logo navbar-left">
                <a href=".">
                    <img src="<ion:theme_url />assets/images/logo.png" alt=""/>
                </a>
            </div>
            <div class="h_search navbar-right">
                <form>
                    <input type="text" class="text" value="Enter text here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter text here';}">
                    <input type="submit" value="search">
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="container">
        <div class="row h_menu">
            <nav class="navbar navbar-default navbar-left" role="navigation">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ion:navigation tag="ul" class="nav navbar-nav">
                        <li<ion:is_active> class="active"</ion:is_active>>
                        <a href="<ion:url />"><ion:title /></a>
                        </li>
                    </ion:navigation>

                </div><!-- /.navbar-collapse -->
                <!-- start soc_icons -->
            </nav>
            <div class="soc_icons navbar-right">
                <ul class="list-unstyled text-center">
                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                    <!-- <li><a href="#"><i class="fa fa-google-plus"></i></a></li> -->
                    <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                    <!-- <li><a href="#"><i class="fa fa-linkedin"></i></a></li> -->
                </ul>
            </div>
        </div>
    </div>
</div>
