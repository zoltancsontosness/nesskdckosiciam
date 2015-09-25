<div class="section_7" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
  <?php $count = 0; $show = 3; $already_shown = array(); $timeout = 0; ?>
    <ul class="related_articles_list">
      <?php while ($count < $show) : ?>
        <ion:pages:page page="news,articles,events" display_hidden="true">
          <?php $has_per_page = false; ?>
            <ion:articles:article type="headline" order_by="date DESC">
              <?php if ($count < $show and !in_array('<ion:name/>',$already_shown) and !$has_per_page) : 
              $count++;
              $has_per_page = true;
              array_push($already_shown,'<ion:name/>');
              ?>
                <li class="<ion:page:name />">
                  <ion:medias limit="1" type="picture" size="555,225" method="adaptive">
                    <div class="scale_image_container">
                      <a href="<ion:article:url />"><img src="<ion:media:src />" alt="<ion:media:title />" class="scale_image"></a>
                      <div class="post_image_buttons">
                        <a href="<ion:page:url />" class="button banner_button <ion:page:name />">
                          <ion:page:title />
                        </a>
                      </div>
                    </div>
                  </ion:medias>
                  <div class="clearfix">
                    <div class="f_left">
                      <div class="event_date">
                        <ion:date format="complete_date" />
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
                <?php endif; ?>
            </ion:articles:article>
        </ion:pages:page>
        <?php
          $timeout++;
          if($timeout >= 3) break;
          endwhile; ?>
    </ul>
</div>