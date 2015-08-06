<div class="widget widget_categories appear-animation fadeInDown appear-animation-visible" data-appear-animation="fadeInDown" data-appear-animation-delay="1150" style="-webkit-animation: 1150ms;">
  <h3 class="widget_title" style="margin-top: 50px; color: #3E454C; border-top: 1px solid #3E454C;">
    Športy
  </h3>

  <ion:page id="playgrounds">
    <?php $n=0 ; ?>
    <ul class="categories_list">
      <li>
        <ion:categories tag="ul">
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
      Všetky kategórie
      </a>
    <?php endif; ?>
  </ion:page>
</div>