<ion:partial view="header" />

<div class="main_bg"><!-- start main -->
    <div class="container">
        <div class="about details row">
            <article class="col-xs-12 col-lg-9">
                <ion:pages parent="this">
                    <h2><ion:page:title /></h2>
                    <div class="img-thumbnail">
                        <ion:articles limit="2">
                            <div class="col-xs-12 col-lg-6">
                                <ion:article>
                                    <ion:media limit="1">
                                        <img class="img-small img-responsive" src="<ion:src />" alt="<ion:alt />"/>
                                    </ion:media>
                                    <ion:title tag="h4"/>
                                    <div class="para">
                                        <ion:content characters="150"/>
                                    </div>
                                </ion:article>
                            </div>
                        </ion:articles>
                        <a href="<ion:page:url />" class="fa-btn btn-1 btn-1e pull-right">Čítať viac &raquo;</a>
                    </div>
                </ion:pages>
                <ion:articles>
                    <ion:article>
                        <h2><ion:title /></h2>
                        <div class="img-thumbnail">
                            <div class="col-xs-12 col-lg-12">
                                <div class="para">
                                    <ion:content characters="270"/>
                                </div>
                            </div>
                            <a href="<ion:url />" class="fa-btn btn-1 btn-1e pull-right">Čítať viac &raquo;</a>
                        </div>
                    </ion:article>
                </ion:articles>

            </article>
            <ion:partial view="aside" />
        </div>
    </div>
</div>

<div class="row">

    <!--
        Articles : type 'bloc'
        authorization : not set : Apply filtering
                        all : displays all articles (includes all deny_codes)
                        401 : display only 401 articles
                        403 : display only 403 articles
                        404 : display only 404 articles
        usage :
        authorization="all" : 			All articles, with or without authorizations
        authorization="all,401,403" : 	Only free access articles + 401 + 403
        authorization="401,403" : 		Only 401 + 403
        authorization="401" : 			Only 401

    -->
    <ion:articles type="bloc" authorization="all">
        <ion:article >
            <div class="large-4 columns">
                <div class="panel">

                    <ion:title tag="h5" />

                    <ion:deny is=''>
                        <ion:content  />
                    </ion:deny>
                    <ion:else>

                        <ion:deny is='401'>
                            <ion:content paragraph="1"/>
                            <p><b>Restriction : 401</b></p>
                        </ion:deny>

                        <ion:deny is='403'>
                            <ion:content paragraph="1"/>
                            <p><b>Restriction : 403</b></p>
                        </ion:deny>

                    </ion:else>

                </div>
            </div>


        </ion:article>
    </ion:articles>

</div>


<ion:partial view="footer" />
