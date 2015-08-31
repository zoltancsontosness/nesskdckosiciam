<ion:partial view="header" breadcrumb="yes_please" />
<ion:page>

  <div class="section read_post_list tabs_content type_2">
    <h2 class="section_title section_title_big"><ion:title /></h2>

    <div class="row">

      <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="section" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
          <h3 class="section_title">Aktívne</h3>
          <ul>
            <ion:articles:article>
              <?php if('<ion:element:event-info:items:is-active:value />' == 'active') : ?>
                <li class="no-margin">
                  <ion:partial view="helpers/tile_event" />
                </li>
                <?php endif; ?>
            </ion:articles:article>
          </ul>
        </div>
      </div>

      <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="section" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
          <h3 class="section_title">Pasívne</h3>
          <ul>
            <ion:articles:article>
              <?php if('<ion:element:event-info:items:is-active:value />' == 'passive') : ?>
                <li class="no-margin">
                  <ion:partial view="helpers/tile_event" />
                </li>
                <?php endif; ?>
            </ion:articles:article>
          </ul>
        </div>
      </div>

      <div class="col-xs-12 col-sm-6 col-md-4">
        <div class="section calendar" data-appear-animation="fadeInDown" data-appear-animation-delay="250">
          <h3 class="section_title">Kalendár udalostí</h3>
        
           
        </div>
      </div>

    </div>
  </div>

</ion:page>
<ion:partial view="footer" />