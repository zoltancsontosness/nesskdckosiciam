<ion:partial view="header"/>
<div class="main_bg"><!-- start main -->
    <div class="container">
        <div class="about details row">
            <article class="col-xs-12 col-lg-9">
                <ion:page:title tag="h2"/>
                <ion:articles>
                    <div class="row">
                        <div class="col-xs-12 col-lg-12">
                            <ion:article:medias type="picture" limit="1">
                                <img src="<ion:media:src />" alt="<ion:media:alt />" class="img-responsive col-sm-12 col-sm-4 col-lg-4"/>
                            </ion:article:medias >
                            <div class="col-sm-12 col-lg-8">
                                <h4><ion:article:title /></h4>
                            </div>
                            <div class="para col-sm-12 col-lg-8">
                                <ion:article:subtitle tag="p"/>
                                <ion:article:content />
                            </div>
                        </div>
                    </div>
                    <hr/>
                </ion:articles>
            </article>
            <ion:partial view="aside" />
        </div>
    </div><!-- container -->
</div>
<ion:partial view="footer"/>