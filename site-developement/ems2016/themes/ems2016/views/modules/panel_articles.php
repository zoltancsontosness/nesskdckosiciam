<div class="section" data-appear-animation="fadeInDown" data-appear-animation-delay="500">
  <div class="tabs">

    <div class="clearfix tabs_conrainer">
      <ul class="tabs_nav clearfix">
        <ion:pages pages="news,events,articles" display_hidden="true">
          <ion:page>
            <li>
              <a href="#tab-<ion:id />"><h3><ion:title /></h3></a>
            </li>
          </ion:page>
        </ion:pages>
      </ul>
    </div>

    <div class="tabs_content side_bar_tabs comment_tabs">
      <ion:pages pages="news,events,articles" display_hidden="true">
        <ion:page>
          <div id="tab-<ion:id />">
            <ul class="comments_list">
              <ion:articles order_by="date DESC" limit="10" >
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
                        <ion:content characters="85" function="strip_tags"/>
                      </div>
                    </div>
                  </li>
                </ion:article>
              </ion:articles>
            </ul>

            <div class="col-xs-12 margin-top-20" >
              <a href="<ion:url/>" class="button button_type_icon_small button_grey pull-right">
                <ion:lang key="show_all" /> <ion:title /> <i class="fa fa-angle-right"></i>
              </a>
            </div>
          </div>
        </ion:page>
      </ion:pages>
    </div>
  </div>
</div>