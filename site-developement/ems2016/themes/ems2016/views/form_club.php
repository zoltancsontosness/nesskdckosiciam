<ion:partial view="header" /> 
  <h1 class="section_title section_title_medium"><ion:page:title /></h1>
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
          <label class="control-label">Meno prevadzkára:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="organizer" type="text"value="<ion:form:clubs:field:organizer />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:clubs:error:organizer tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">IČO:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="ico" type="text"value="<ion:form:clubs:field:ico />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:clubs:error:ico tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Názov klubu:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="club_name" type="text"value="<ion:form:clubs:field:club_name />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:clubs:error:club_name tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Webstránka:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="webpage" type="text"value="<ion:form:clubs:field:webpage />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:clubs:error:webpage tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <label class="control-label">Popis:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <textarea name="desc"><ion:form:clubs:field:desc /></textarea>
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:clubs:error:desc tag="p" class="error-input alert-danger" />
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
        <div class="col-xs-12 control-group">
          <input name="rules_2" type="checkbox" id="rules_2">
          <label for="rules_2">Súhlasím so spracovaním a zverejnením kontaktných údajov</label>
          <ion:form:clubs:error:rules_2 tag="p" class="error-input alert-danger" />
        </div>   
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <div class="g-recaptcha" data-sitekey="6Le-dAsTAAAAAMFkOVKzrWM84QF5t0BVw6wTL5Gn"></div>
        </div>
      </div>
      <?php if(isset($_POST['g-recaptcha-response'])): ?>
        <?php if($_POST['g-recaptcha-response'] === ""): ?>
          <p class="error-input alert-danger">Captcha nebola vyplnená</p>
        <?php endif; ?>
      <?php endif; ?>
      <button type="submit" class="button button_type_icon_big button_orange btn-block"><i class="fa fa-pencil"></i>Registrovať klub</button>
    </form>
  </div>

  <script src="<ion:theme_url/>assets/plugins/tinymce/tinymce.min.js"></script>
  <script src="<ion:theme_url/>assets/plugins/tinymce/langs/sk.js"></script>
  <script>tinymce.init({selector:'textarea'});</script>

<ion:partial view="footer" />