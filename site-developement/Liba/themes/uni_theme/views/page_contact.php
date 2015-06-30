<ion:partial view="header" />

<div class="row">
  <ion:articles>
    <ion:article>
      <div class="col-md-12">
        <ion:article:title tag="h1" />
        <hr />
      </div>
      <div class="col-md-12 text-center">
        <ion:article:content/>
      </div>
    </ion:article>
  </ion:articles>
</div>
<div class="row">
  <div class="col-md-12">
    <hr />
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
    <div style="overflow:hidden;height:400px;width:100%;">
      <div id="gmap_canvas" style="height:400px;width:100%"></div>
      <style>
        #gmap_canvas img {
          max-width: none!important;
          background: none!important
        }
      </style>
    </div>
    <script type="text/javascript">
      function init_map() {
        var myOptions = {
          zoom: 15,
          center: new google.maps.LatLng(48.7184123, 21.21552930000007),
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
        map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);
        marker = new google.maps.Marker({
          map: map,
          position: new google.maps.LatLng(48.7184123, 21.21552930000007)
        });
        infowindow = new google.maps.InfoWindow({
          content: "<b>Dom &#318;udov&eacute;ho tanca</b><br/> Starozagorsk&aacute; 10 <br/> 040 23  Ko&scaron;ice"
        });
        google.maps.event.addListener(marker, "click", function () {
          infowindow.open(map, marker);
        });
        infowindow.open(map, marker);
      }
      google.maps.event.addDomListener(window, 'load', init_map);
    </script>
    <br />
  </div>
</div>
<div class="row">
  <h2 class="text-center">Kontaktný formulár</h2>

  <div class="col-md-7 col-md-offset-2">
    <!-- Contact form -->

    <!--
            Success message
            Displayed if the form was successfully validated
        -->
    <ion:form:contact:validation:success is="true">
      <div class="col-md-10 col-md-offset-2">
        <div class="alert alert-success fade in">
          <a href="#" class="close" data-dismiss="alert">&times;</a>
          <strong><ion:lang key="form_contact_success_title" /></strong>
          <ion:lang key="form_contact_success_message" />
        </div>
      </div>
    </ion:form:contact:validation:success>

    <!--
            Error message
            Displayed if the form doesn't pass the validation
            the 'form_message_error' key is located in : themes/your_theme/language/xx/tags_lang.php
        -->
    <ion:form:contact:validation:error is="true">
      <div class="col-md-10 col-md-offset-2">
        <div class="alert alert-danger fade in">
          <a href="#" class="close" data-dismiss="alert">&times;</a>
          <strong>Chyba !</strong>
          <ion:lang key="form_contact_error_message" />
        </div>
      </div>
    </ion:form:contact:validation:error>

    <form method="post" action="">

      <!--The form name must be set so the tags identify it.Same name than the one declared in forms.php-->
      <input type="hidden" name="form" value="contact" />

      <!--Input Name-->
      <div class="form-group clearfix <ion:form:contact:error:name is="true" >has-error</ion:form:contact:error:name >">
        <label for="name" class="col-md-2 control-label text-right">
          <ion:lang key="form_label_name" />
        </label>
        <div class="col-md-10">
          <input type="text" id="name" name="name" value="<ion:form:contact:field:name />" class="form-control" />
          <ion:form:contact:error:name tag="p" class="input-error" />
        </div>
      </div>

      <!--Input : Email-->
      <div class="form-group clearfix <ion:form:contact:error:email is="true" >has-error</ion:form:contact:error:email >">
        <label for="email" class="col-md-2 control-label text-right">
          <ion:lang key="form_label_email" />
        </label>
        <div class="col-md-10">
          <input type="text" id="email" name="email" value="<ion:form:contact:field:email />" class="form-control" />
          <ion:form:contact:error:email tag="p" class="input-error" />
        </div>
      </div>

      <!--Input : Phone-->
      <div class="form-group clearfix <ion:form:contact:error:phone is="true" >has-error</ion:form:contact:error:phone >">
        <label for="phone" class="col-md-2 control-label text-right">
          <ion:lang key="form_label_phone" />
        </label>
        <div class="col-md-10">
          <input type="text" id="phone" name="phone" value="<ion:form:contact:field:phone />" class="form-control" />
          <ion:form:contact:error:phone tag="p" class="input-error" />
        </div>
      </div>

      <!--Input : message-->
      <div class="form-group clearfix">
        <label for="message" class="col-md-2 control-label text-right">
          <ion:lang key="form_label_message" />
        </label>
        <div class="col-md-10">
          <textarea name="message" id="message" cols="60" rows="5" class="form-control"></textarea>
        </div>
      </div>

      <!--Submit : Button-->
      <div class="row">
        <div class="col-md-12">
          <div class="col-md-3 col-md-offset-9">
            <button type="submit" class="btn btn-success btn-block">
              <ion:lang key="form_button_send_message" />
            </button>
          </div>
        </div>
      </div>

    </form>
  </div>
</div>

<ion:partial view="footer" />