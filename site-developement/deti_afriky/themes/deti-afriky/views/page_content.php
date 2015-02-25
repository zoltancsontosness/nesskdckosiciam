<ion:partial view="header"/>
<div class="main_bg"><!-- start main -->
    <div class="container">
        <div class="about details row">
            <article class="col-xs-12 col-lg-9">
                <div class="col-xs-12 col-lg-12">
                    <ion:article:title tag="h2"/>
                    <ion:article:subtitle tag="p" class="text-muted" />
                    <div class="article-para">
                        <ion:article:content />
                    </div>
                    <ion:article:medias>
                        <a href="<ion:media:src />" data-lightbox="project-gallery" data-title="<ion:media:title />">
                            <div class="col-xs-12 col-lg-4">
                                <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive" style="max-height: 160px; margin-left: auto; margin-right: auto;" />
                            </div>
                        </a>
                    </ion:article:medias >
                </div>
            </article>
            <ion:partial view="aside" />
        </div>
    </div><!-- container -->
</div>
<ion:partial view="footer"/>