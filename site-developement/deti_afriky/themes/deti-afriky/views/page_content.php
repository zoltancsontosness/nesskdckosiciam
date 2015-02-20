<ion:partial view="header"/>
<div class="main_bg"><!-- start main -->
    <div class="container">
        <div class="about details row">
            <article class="col-xs-12 col-lg-9">
                <ion:page:title tag="h2"/>
                <ion:articles>
                    <div class="img-thumbnail text-center col-xs-12 col-lg-6">
                        <h4><ion:article:title /></h4>
                        <ion:article:subtitle tag="p" class="text-muted" />
                        <!-- intro image -->
                        <ion:article:medias type="picture" limit="1">
                            <div class="intro-img">
                                <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive"/>
                            </div>
                        </ion:article:medias >

                        <div class="para text-center"><ion:article:content /></div>
                    </div>
                </ion:articles>
            </article>
            <ion:partial view="aside" />
        </div>
    </div><!-- container -->
</div>
<ion:partial view="footer"/>