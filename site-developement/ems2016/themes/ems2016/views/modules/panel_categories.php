<div class="widget widget_categories appear-animation fadeInDown appear-animation-visible" data-appear-animation="fadeInDown" data-appear-animation-delay="1150" style="-webkit-animation: 1150ms;">
  <ion:page id="playgrounds">
    <h3 class="widget_title" style="margin-top: 50px; color: #3E454C; border-top: 1px solid #3E454C;">
    <ion:page:title />
  </h3>

    <?php $n=0 ; ?>
    <ul class="categories_list">
      <li>
        <ion:categories tag="ul" order_by_nb="true">
          <?php if($n<<ion:attr key="count" />): $n++; ?>
          <li>
            <a href="<ion:category:url />" style="color: #4B4D50;">
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

    <?php $categories_count=<ion:categories:count /> ?>
  </ion:page>

  <ion:page id="categories">
    <?php if($n < $categories_count): ?>
    <a href="<ion:url />" class="button button_type_2 button_grey btn-block margin-top-20">
      <ion:lang key="btn_allcategories" />
    </a>
    <?php endif; ?>
  </ion:page>
</div>