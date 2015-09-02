<div class="widget widget_categories" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
  <ion:page>
    <h3 class="widget_title">
    <ion:page:title />
    <ion:category:current:title expression="!=''">     
      <a href="<ion:url />" class="button button_grey view_button float-right">     
        Všetky
      </a>
    </ion:category:current:title>      
    </h3>
     
    <?php $n=0 ; ?>
      <ul class="categories_list">
        <li>
          <ion:categories tag="ul" order_by_nb="true">
            <?php if($n<'<ion:attr key="count" />' or null == '<ion:attr key="count" />'): $n++; ?>
              <li>
                <a href="<ion:category:url />">
                  <ion:category:title />
                </a>
                <span>
                  <ion:category:nb_articles /> 
                </span>
              </li>
              <?php endif; ?>
          </ion:categories>
        </li>
      </ul>

      <?php $categories_count='<ion:categories:count />' ?>
  </ion:page>
</div>