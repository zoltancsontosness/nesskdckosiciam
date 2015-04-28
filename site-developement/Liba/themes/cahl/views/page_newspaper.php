<ion:partial view="header" />

    <section class="main-content wrapper clearfix">
        <div class="articles left col-xs-12 col-md-12 col-lg-10">
            <!-- News -->
            <ion:page>
                <ion:articles>
                    <ion:article>
                        <article class="col-sm-12 clearfix">
                            <div class="media">
                                <div class="media-left">
                                    <time class="red-background clearfix white" datetime="<ion:date format="Y-d-m H:i" />">
                                    <strong><ion:date format="d" /></strong>
                                    <ion:date format="M" />
                                    </time>
                                </div>
                                <div class="media-body">
                                    <h3 class="media-heading noBorder">
                                        <a href="<ion:url />"><ion:title /></a>
                                        <a href="<ion:url />" class="btn btn-danger pull-right"><ion:lang key="read_more" /></a>
                                    </h3>
                                </div>
                            </div>
                        </article>

                    </ion:article>
                </ion:articles>

                <?php
                $count = "<ion:page:articles:count />";
                ?>

                <?php if ($count == "") { ?>
                    <!-- No articles -->
                    <article class="clearfix">
                        <h3><ion:lang key="no-content-notice" /></h3>
                    </article>
                <?php } else { ?>

                    <!-- Pagination -->
                    <article class="clearfix">
                        <div id="pagination" class="text silver left">
                            <ion:articles:pagination />
                        </div>
                    </article>

                <?php } ?>

            </ion:page>

        </div>

        <ion:partial view="aside" />

    </section>

<script>
    $(".media-body a").attr({"target": "_blank"});
</script>
<ion:partial view="footer" />