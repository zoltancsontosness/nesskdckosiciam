<div class="section" data-appear-animation="fadeInDown" data-appear-animation-delay="1150">
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
              <ion:articles:article>
                <li class="post_text">
                  <div class="comment_number">
                    <ion:date format="d.m." />
                    <br/>
                    <small><ion:date format="Y" /></small>
                  </div>
                  <div class="wrapper">
                    <a href="<ion:url />"><h4><ion:title /></h4></a>
                    <div class="event_date">
                      <ion:content characters="85" />
                    </div>
                  </div>
                </li>
              </ion:articles:article>
            </ul>
          </div>
        </ion:page>
      </ion:pages>
    </div>
  </div>
</div>