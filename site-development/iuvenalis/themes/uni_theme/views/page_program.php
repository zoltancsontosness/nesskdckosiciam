<ion:partial view="header" />

<div class="page-header">
    <ion:page:title tag="h1" class="page_title" />
</div>

<div class="row hidden-xs" style="margin-top:20px">
    <div class="text-center">
        <h2>
            <ion:page id="events-menu">
                <ion:articles>
                    <ion:article:index is="1"><div class="col-md-2 col-sm-2"><ion:article:title /></div></ion:article:index>
                    <ion:article:index is="2"><div class="col-md-2 col-sm-2"><ion:article:title /></div></ion:article:index>
                    <ion:article:index is="3"><div class="col-md-4 col-sm-4"><ion:article:title /></div></ion:article:index>
                    <ion:article:index is="4"><div class="col-md-4 col-sm-4"><ion:article:title /></div></ion:article:index>
                </ion:articles>
            </ion:page>
        </h2>
    </div>
</div>

<div class="row">
    <hr width="100%" />
    <div class="events">
        <ion:articles>
            <ion:article>
                <div class="col-md-12 col-sm-12 " style="padding:10px 0 10px 0">
                    <div class="col-md-2 col-sm-2 text-center">
                        <b>
                        <p class=date>
                            <ion:language:code is="en"><ion:extend:date:value format="m/d/Y" /></ion:language:code>
                            <ion:language:code is="sl"><ion:extend:date:value format="d.m.Y" /></ion:language:code>
                            <br>
                            <ion:extend:date:value format="( D )" />
                        </p>
                    </b>
                    </div>

                    <div class="col-md-2 col-sm-2 text-center">
                        <p class="date">
                            <span class="glyphicon glyphicon-time" />
                            <ion:article:extend:time:value />
                        </p>
                    </div>

                    <div class="col-md-4 col-sm-4">
                        <ion:article:content tag="p" class="date" />
                    </div>

                    <div class="col-md-4 col-sm-4">
                        <ion:article:extend:place:value tag="p" class="date" />
                    </div>
                </div>
            </ion:article>
        </ion:articles>
    </div>
</div>

<ion:partial view="footer" />