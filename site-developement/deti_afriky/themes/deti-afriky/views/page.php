<ion:partial view="header" />

<div class="main_bg"><!-- start main -->
    <div class="container">
        <div class="about details row">
            <article class="col-xs-12 col-lg-9">
                <ion:articles>
                    <ion:article>
                        <div class="clearfix">
                            <h2><ion:title /></h2>
                            <ion:article:medias limit="1">
                                <div class="pull-left">
                                    <a href="<ion:article:url />">
                                        <img class="media-object bg" src="<ion:media:src />" alt="<ion:media:alt />">
                                    </a>
                                </div>
                            </ion:article:medias>
                            <div class="media-body">
                                <div class="full-width">
                                    <div class="col-xs-12 col-lg-12">
                                        <div class="para">
                                            <ion:content characters="270" function="strip_tags"/>
                                        </div>
                                    </div>
                                    <a href="<ion:url />" class="fa-btn btn-1 btn-1e pull-right">Čítať viac &raquo;</a>
                                </div>
                            </div>
                        </div>
                        <hr/>
                    </ion:article>
                </ion:articles>
                <ion:pages parent="this">
                    <div class="media">
                        <h2><ion:page:title /></h2>
                        <ion:page:medias limit="1">
                            <div class="pull-left">
                                <a href="<ion:page:url />">
                                    <img class="media-object bg" src="<ion:media:src />" alt="<ion:media:alt />">
                                </a>
                            </div>
                        </ion:page:medias>
                        <div class="media-body">
                            <div class="full-width">
                                <div class="para">
                                    <ion:page:subtitle helper="trim_newlines"/>
                                </div>
                                <a href="<ion:page:url />" class="fa-btn btn-1 btn-1e pull-right">Čítať viac &raquo;</a>
                            </div>
                        </div>
                    </div>
                    <hr/>
                </ion:pages>
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
