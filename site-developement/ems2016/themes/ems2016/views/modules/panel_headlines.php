<div class="section_post_left" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
  <ul class="related_articles_list">
    <ion:pages:page page="news,articles,events" display_hidden="true">
      <ion:articles:article type="headline" limit="1">
        <li class="<ion:page:name />">
          <ion:medias limit="1" type="picture" size="555,225" method="adaptive">
            <div class="scale_image_container">
              <a href="<ion:article:url />"><img src="<ion:media:src />" alt="<ion:media:title />" class="scale_image"></a>
              <div class="post_image_buttons">
                <a href="#" class="button banner_button <ion:page:name />">
                  <ion:page:title />
                </a>
              </div>
            </div>
          </ion:medias>
          <div class="clearfix">
            <div class="f_left">
              <div class="event_date">
                <ion:date format="complete" />
              </div>
            </div>
          </div>
          <div class="post_text">
            <h2 class="post_title"><a href="<ion:url />"><ion:title /></a></h2>
            <p>
              <ion:content function="strip_tags" characters="150" />
            </p>
          </div>
        </li>
      </ion:articles:article>
    </ion:pages:page>
  </ul>
</div>