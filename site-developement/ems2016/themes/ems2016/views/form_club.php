<ion:partial view="header" breadcrumb="true" /> 
<div class="section">
  <h2 class="section_title section_title_big"><ion:page:title /></h2>
  <div class="clearfix">
    <form name="clubs" action="" class="form_type_1 type_2 col-xs-12 col-sm-8 col-sm-offset-2" method="POST" enctype="multipart/form-data">
      <input type="hidden" name="form" value="clubs">
      <div class="row">
        <div class="col-xs-12">
          <ion:form:clubs:validation:error is="true" >
            <div class="alert alert-danger text-center">
              <b>Niekde nastala chyba!</b> Znovu skontrolujte formulár prosím
            </div>
          </ion:form:clubs:validation:error>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Meno klubu, zväzu, organizácie:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="club_name" type="text"value="<ion:form:clubs:field:club_name />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Meno klubu, zväzu, organizácie" data-content="Uveďte oficiálny názov organizácie."></i>
            </div>
            <ion:form:clubs:error:club_name tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">IČO:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="ico" type="text"value="<ion:form:clubs:field:ico />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="IČO" data-content="Uveďte IČO organizácie."></i>
            </div>
            <ion:form:clubs:error:ico tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Emailová adresa:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="email" type="text" value="<ion:form:clubs:field:email />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Emailová adresa" data-content="Uveďte e-mail organizátora."></i>
            </div>
            <ion:form:clubs:error:email tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Ulica a čislo:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="address" type="text" value="<ion:form:clubs:field:address />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Ulica a číslo" data-content="Uveďte ulicu a číslo na ktorej sídli klub."></i>
            </div>
            <ion:form:clubs:error:address tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Webstránka:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="webpage" type="text"value="<ion:form:clubs:field:webpage />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Webstránka" data-content="Uveďte adresu webovej stránky organizácie."></i>
            </div>
            <ion:form:clubs:error:webpage tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Telefón:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="phone" type="text" value="<ion:form:clubs:field:phone />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Telefón" data-content="Uveďte telefónne číslo, na ktorom Vás budú môcť administrátori kontaktovať."></i>
            </div>
            <ion:form:clubs:error:phone tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <label class="control-label">Popis:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <textarea name="desc"><ion:form:clubs:field:desc /></textarea>
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popis" data-content="Uveďte popis činnosti organizácie."></i>
            </div>
            <ion:form:clubs:error:desc tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <label class="control-label">Príloha (logo):</label>
          <small class="help-block">(formát <span class="warning">jpg</span>, <span class="warning">jpeg</span> a <span class="warning">png</span> o veľkosti max. 1MB)</small>
          <div class="controls">
            <!-- Foto 1 -->
            <div class="input-group control-group input-profiles">
              <span class="input-group-btn">
                <span class="button btn-file button_orange">
                  Vyberte prílohu ...
                  <input name="attachment[]" type="file" id="cv">
                </span>
              </span>
              <input type="text" readonly="" class="file-reader" />
            </div>
            <p class="error-input alert-danger">
              <ion:session:get key="error_file" />
            </p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 control-group">
          <input name="rules_1" type="checkbox" id="rules_1">
          <label for="rules_1">Súhlasím s <a href="<ion:theme_url />assets/files/pravna-zodpovednost.pdf" target="_blank">podmienkami pridávania klubu</a></label>
          <ion:form:clubs:error:rules_1 tag="p" class="error-input alert-danger" />
        </div> 
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-4">
          <!-- <div class="g-recaptcha" data-sitekey="6Le-dAsTAAAAAMFkOVKzrWM84QF5t0BVw6wTL5Gn"></div> -->
          <?php
            include($_SERVER['DOCUMENT_ROOT']."/themes/ems2016/libraries/Tagmanager/captcha/simple-php-captcha.php");
            $_SESSION['captcha'] = simple_php_captcha();
          ?>
          <img src="<?=  $_SESSION['captcha']['image_src'] ?>" alt="captcha" id="captcha-img"/>
          <button type="button" id="refresh-captcha">
            <i class="icon glyphicon glyphicon-refresh"></i>
          </button>
        </div>
      </div>
      <div class="row control-group">
        <div class="col-xs-4">
          <label for="captcha">Opíšte text z obrázka</label>
          <input name="captcha" type="text">
        </div>
      </div>
      <ion:form:clubs:error:captcha tag="p" class="error-input alert-danger" />
      <p class="error-input alert-danger">
        <ion:session:get key="captcha_error" />
      </p>
      <button type="submit" class="button button_type_icon_big button_orange btn-block"><i class="fa fa-pencil"></i>Registrovať klub</button>
    </form>
  </div>
</div>
  

  <script src="<ion:theme_url/>assets/plugins/tinymce/tinymce.min.js"></script>
  <script src="<ion:theme_url/>assets/plugins/tinymce/langs/sk.js"></script>
  <script>tinymce.init({selector:'textarea'});</script>
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