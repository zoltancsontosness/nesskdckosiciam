<div class="widget widget_categories" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
  <ion:page id="playgrounds">
    <h3 class="widget_title">
      <ion:page:title />
    </h3>

    <?php $n=0 ; ?>
    <ul class="categories_list">
      <li>
        <ion:categories tag="ul" order_by='nb DESC'>
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

  <ion:page id="categories">
    <?php if($n < $categories_count): ?>
    <a href="<ion:url />" class="button button_type_icon_medium button_grey btn-block margin-top-20">
      <ion:lang key="btn_allcategories" /><i class="fa fa-list fa-lg"></i>
    </a>
    <?php endif; ?>
  </ion:page>
</div>