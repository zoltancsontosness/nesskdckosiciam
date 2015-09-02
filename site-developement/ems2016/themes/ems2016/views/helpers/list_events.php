<?php $active = '<ion:attr key="active" />'; ?>
<div id="events_list_<?php echo $active?>">
  <ul class="list">
    <ion:articles:article>
      <?php $date = '<ion:element:event-info:items:length:value format="o-m-d h:i"/>';
$act_date = date('o-m-d h:i');
if(strtotime($date) > strtotime($act_date) and '<ion:element:event-info:items:is-active:value />' == $active) : ?>
      <li class="no-margin">
        <ion:partial view="helpers/tile_event" />
      </li>
      <?php endif; ?>
    </ion:articles:article>
  </ul>
</div>

<script>
  var options = {
    id: 'events_list_<?php echo $active?>',
    valueNames: ['title', 'date']
  };
  var events_list = new List('events_list_<?php echo $active?>', options);
  events_list.sort('date', {
    order: "asc"
  });
</script>