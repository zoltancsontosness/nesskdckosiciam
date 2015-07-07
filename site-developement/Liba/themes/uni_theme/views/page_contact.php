<ion:partial view="header" />

    <div class="row">
      <ion:articles>
        <ion:article>
          <div class="col-md-12">
            <ion:article:title tag="h1" />
            <hr />
            <ion:article:content />  
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
        <style>#gmap_canvas img{max-width:none!important;background:none!important}</style>
        </div>
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div style="overflow:hidden;height:500px;width:600px;"><div id="gmap_canvas" style="height:500px;width:600px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style><a class="google-map-code" href="http://wptiger.com" id="get-map-data">premium wordpress themes</a></div><script type="text/javascript"> function init_map(){var myOptions = {zoom:16,center:new google.maps.LatLng(48.737674,21.252786300000025),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(48.737674, 21.252786300000025)});infowindow = new google.maps.InfoWindow({content:"<b>Liba Academy</b><br/>N&aacute;rodn&aacute; trieda 48<br/>04001 Ko&scaron;ice" });google.maps.event.addListener(marker, "click", function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
         <!-- Contact form -->

         <h2>Kontaktný formulár</h2>
        <!--
            Success message
            Displayed if the form was successfully validated
        -->
        <ion:form:contact:validation:success tag="p" class="green" />
         
        <!--
            Error message
            Displayed if the form doesn't pass the validation
            the 'form_message_error' key is located in : themes/your_theme/language/xx/tags_lang.php
        -->
        <ion:form:contact:validation:error is="true" >
            <span class="red">
                Error : Some form data are missing or seem to be incorrect.
            </span>
        </ion:form:contact:validation:error>
         
        <!--
            Form has no action because the same page will process the data.
            POST data are catched by the global Tagmanager and processed by the Tagmanager's library method 'process_data'
            defined in : /themes/your_theme/libraries/Tagmanager/Contact.php
            as declared in the form config file : /themes/your_theme/config/forms.php
        -->
          <form method="post" action="">
         
          <!--
              The form name must be set so the tags identify it.
              Same name than the one declared in forms.php
          -->
          <input type="hidden" name="form" value="contact" />
       
          <!--
              Input : Name
          -->
          <div class="form-group clearfix">
            <label for="name" class="col-md-2 control-label text-right">Meno</label>
            <div class="col-md-10">
              <!-- Fills again the user input in case of failed validation -->
              <input type="text" id="name" name="name" value="<ion:form:contact:field:name />" class="form-control"/>
           
              <!-- Displays the error linked to this input in the validation fails -->
              <ion:form:contact:error:name tag="p" class="input-error" />
            </div>
          </div>
       
       
          <!--
             Input : Company
           -->
          <div class="form-group clearfix">
            <label for="email" class="col-md-2 control-label text-right">Email</label>
            <div class="col-md-10">
              <input type="text" id="email" name="email" value="<ion:form:contact:field:email />" class="form-control"/>
              <ion:form:contact:error:email tag="p" class="input-error" />
            </div>
          </div>
       
       
          <!--
             Input : Email
             -->
          <div class="form-group clearfix">
            <label for="phone" class="col-md-2 control-label text-right">Telefón</label>
            <div class="col-md-10">
              <input type="text" id="phone" name="phone" value="<ion:form:contact:field:phone />" class="form-control"/>
              <ion:form:contact:error:phone tag="p" class="input-error" />
            </div>
          </div>
       
       
          <!--
             Input : You heard about our company...
             -->
          <div class="form-group clearfix">
           <label for="message" class="col-md-2 control-label text-right">Správa</label>
            <div class="col-md-10">
              <textarea name="message" id="message" cols="60" rows="5" class="form-control"></textarea>
            </div>
          </div>
          <!--
              Submit button
          -->
          <div class="row"> 
            <div class="col-md-10 col-md-offset-2">
              <button type="submit" class="btn btn-success btn-block">Odoslať</button>
            </div>
          </div>
       
        </form>
      </div>
    </div>

<ion:partial view="footer" />