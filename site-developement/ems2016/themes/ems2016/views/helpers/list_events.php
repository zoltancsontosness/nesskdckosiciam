<?php $active = '<ion:attr key="active" />'; ?>
  <button class="button button_type_icon_small button_grey_light view_button pull-right" onclick="showHistoryOfState('<?= $active ?>');">
    <ion:lang key="btn_history" />
    <i class="fa fa-clock-o"></i>
  </button>

  <div id="events_list_<?php echo $active?>">
    <ul class="list">
      <ion:articles:article>
        <?php if('<ion:element:event-info:items:is-active:value />' == $active) : ?>
          <li class="no-margin">
            <ion:partial view="helpers/tile_event" />
          </li>
          <?php endif; ?>
      </ion:articles:article>
    </ul>

    <div class="pagination_block text-center">
      <ul class="pagination"></ul>
    </div>
  </div>