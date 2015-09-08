<?php
function get_string() {
  $address_enc = urlencode('<ion:attr key="address" />');

  $options = array(
    'center' => $address_enc,
    'zoom' => 17,
    'size' => '<ion:attr key="size" />',
    'maptype' => 'roadmap',
    'markers' => 'icon:<ion:theme_url />assets/img/marker.png%7Ccolor:red%7Clabel:A%7C.'.$address_enc,
  );

  foreach ($options as $key => $value) {
    echo $key.'='.$value.'&amp;';
  }
}

?>

  <img src="https://maps.googleapis.com/maps/api/staticmap?<?php get_string(); ?>" alt="mapa" class="img-responsive" />