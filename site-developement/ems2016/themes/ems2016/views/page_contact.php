<ion:partial view="header" breadcrumb="true" />
<div class="row">
  <div class="col-lg-8 col-md-8 col-sm-12">
    <div class="section">
      <h2 class="section_title section_title_big"><ion:page:title /></h2>
    </div>

    <div class="section_7">
      <ion:articles limit="1">
        <ion:article:content />
      </ion:articles>

      <ion:form:contact:validation:error is="true">
        <div class="alert alert-danger text-center">
          <b>Niekde nastala chyba!</b> Znovu skontrolujte formulár prosím
        </div>
      </ion:form:contact:validation:error>
      <ion:form:contact:validation:success tag="div" class="alert alert-success text-center" />

      <form class="contact_form" name="contact" method="POST">
        <input type="hidden" name="form" value="contact">
        <ul>
          <li>
            <label>Meno<span class="required">*</span></label>
            <input type="text" name="cf_name" id="cf_name">
            <ion:form:contact:error:cf_name tag="p" class="error-input alert-danger" />
          </li>
          <li>
            <label>Email<span class="required">*</span></label>
            <input type="text" name="cf_email" id="cf_email">
            <ion:form:contact:error:cf_email tag="p" class="error-input alert-danger" />
          </li>
          <li>
            <label>Predmet<span class="required">*</span></label>
            <input type="text" name="cf_subject" id="cf_subject">
            <ion:form:contact:error:cf_subject tag="p" class="error-input alert-danger" />
          </li>
          <li>
            <label>Správa<span class="required">*</span></label>
            <textarea name="cf_message" id="cf_message"></textarea>
            <ion:form:contact:error:cf_message tag="p" class="error-input alert-danger" />
          </li>
          <li>
            <!-- <div class="g-recaptcha" data-sitekey="6Le-dAsTAAAAAMFkOVKzrWM84QF5t0BVw6wTL5Gn"></div> -->
            <?php
              include($_SERVER['DOCUMENT_ROOT']."/themes/ems2016/libraries/Tagmanager/captcha/simple-php-captcha.php");
              $_SESSION['captcha'] = simple_php_captcha();
            ?>
            <img src="<?=  $_SESSION['captcha']['image_src'] ?>" alt="captcha" id="captcha-img"/>
            <button type="button" id="refresh-captcha">
              <i class="icon glyphicon glyphicon-refresh"></i>
            </button>
          </li>
          <div class="row control-group">
            <div class="col-xs-4">
              <label for="captcha">Opíšte text z obrázka</label>
              <input name="captcha" type="text" />
            </div>
          </div>
          <p class="error-input alert-danger">
            <ion:session:get key="captcha_error" />
          </p>
          <li>
            <button type="submit" class="button button_grey">Odoslať správu</button>
          </li>
        </ul>
      </form>
    </div>
  </div>
  <div class="col-lg-4 col-md-4 col-sm-12">
    <ion:partial view="modules/panel_socials" />
    <ion:partial view="modules/panel_coming_events" />
  </div>
</div>

<script>
    $('#refresh-captcha').on('click', function() {
      $.ajax({
        url: "<ion:base_url />refresh/captcha",
        method: "GET",
        cache: false,
        success: function(data) {
          var data = $.parseJSON(data);
          $("#captcha-img").attr('src', data.image_src);
        },
        error: function(){
          alert("Niečo sa nepodarilo. Obnovte stránku prosím!");
        }
      });
    });
  </script>
<ion:partial view="footer" />