<div class="widget widget_categories" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
  <ion:page id="playgrounds">
    <h3 class="widget_title">
      <ion:page:title />
      <ion:category:current:title expression="!=''">     
        <a href="<ion:url />" class="button button_grey view_button float-right">     
          <ion:lang key="btn_show_all" />
        </a>
      </ion:category:current:title>      
    </h3>

    <ul class="categories_list">
      <li>
        <ion:categories tag="ul" order_by='name ASC'>
          <li>
            <a href="<ion:category:url />">
              <ion:category:title />
            </a>
            <span>
              <ion:category:nb_articles /> 
            </span>
          </li>
        </ion:categories>
      </li>
    </ul>
  </ion:page>
</div>