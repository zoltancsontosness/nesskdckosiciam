<?php $active = '<ion:attr key="active" />'; ?>
  <div id="events_list_<?php echo $active?>">
    <button class="button button_grey_light button_type_3" onclick="showHistory('<?= $active ?>');">Historia</button>

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