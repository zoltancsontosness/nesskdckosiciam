<div class="section" data-appear-animation="fadeInDown" data-appear-animation-delay="500">
  <div class="tabs">

    <div class="clearfix tabs_conrainer">
      <ul class="tabs_nav clearfix">
        <ion:pages pages="news,events" display_hidden="true">
          <ion:page>
            <li>
              <a href="#tab-<ion:id />"><h3><ion:title /></h3></a>
            </li>
          </ion:page>
        </ion:pages>
      </ul>
    </div>

    <div class="tabs_content side_bar_tabs comment_tabs">
      <ion:page id="news" display_hidden="true">
          <div id="tab-<ion:id />">
            <ul class="comments_list">
              <ion:articles order_by="date DESC" limit="8">
                <ion:article>
                  <li class="post_text">
                    <div class="comment_number">
                      <ion:date format="d.m." />
                      <br/>
                      <small><ion:date format="Y" /></small>
                    </div>
                    <div class="wrapper">
                      <a href="<ion:url />"><h4><ion:title /></h4></a>
                      <div class="event_date">
                        <ion:content characters="85" function="strip_tags" />
                      </div>
                    </div>
                  </li>
                </ion:article>
              </ion:articles>
            </ul>

            <div class="col-xs-12 margin-top-20">
              <a href="<ion:url/>" class="button button_type_icon_small button_grey pull-right">
                <ion:lang key="btn_show_all" />
                <ion:title /> <i class="fa fa-angle-right"></i>
              </a>
            </div>
          </div>
      </ion:page>

      <ion:page id="events" display_hidden="true">
        <div id="tab-<ion:id />">
          <ul class="comments_list list">
            <ion:articles>
              <ion:article>
                <li class="post_text">
                  <ion:article:element:event-info>
                    <ion:items>
                      <span class="date hidden"><ion:length:value format="m/d/o" /></span>

                      <div class="comment_number active <ion:is-active:value />">
                        <ion:date:value format="d.m." />
                        <br/>
                        <small><ion:date:value format="Y" /></small>
                      </div>
                      <div class="wrapper">
                        <div class="post_theme <ion:is-active:value />">
                          <ion:is-active:values:label />
                        </div>
                        <a href="<ion:article:url />"><h4 class="title"><ion:article:title /></h4></a>
                        <div class="event_date">
                          <ion:article:content characters="85" function="strip_tags" />
                        </div>
                      </div>
                    </ion:items>
                  </ion:article:element:event-info>
                </li>
              </ion:article>
            </ion:articles>
          </ul>

          <div class="col-xs-12 margin-top-20">
            <a href="<ion:url/>" class="button button_type_icon_small button_grey pull-right">
              <ion:lang key="btn_show_all" />
              <ion:title /> <i class="fa fa-angle-right"></i>
            </a>
          </div>
        </div>
      </ion:page>
    </div>
  </div>
</div>

<script>
  var list;

  $(document).ready(function () {
    var options = {
      valueNames: ['title', 'date'],
      page: 8,
    };

    list = new List('tab-9', options);

    list.filter(function (item) {
      return (getDate(item._values.date) >= getDate('<?php echo date("m/d/o"); ?>'));
    });

    list.sort('date', {
      order: "asc"
    });
  });

  function getDate(source) {
    date_parts = source.split('/');
    return new Date(date_parts[2], date_parts[0] - 1, date_parts[1]);
  }
</script>