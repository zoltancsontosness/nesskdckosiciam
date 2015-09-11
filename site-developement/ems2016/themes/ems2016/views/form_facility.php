<ion:partial view="header" />
  <h1 class="section_title section_title_medium"><ion:page:title /></h1>
  <div class="clearfix">

    <form name="facilities" action="" class="form_type_1 type_2 col-xs-12 col-sm-8 col-sm-offset-2" method="POST" enctype="multipart/form-data">
      <input type="hidden" name="form" value="facilities">
      <div class="row">
        <div class="col-xs-12">
          <ion:form:facilities:validation:error is="true" >
            <div class="alert alert-danger text-center">
              <b>Niekde nastala chyba!</b> Znovu skontrolujte formulár prosím
            </div>
          </ion:form:facilities:validation:error>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Správca ihriska:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="operator" type="text"value="<ion:form:facilities:field:operator />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:facilities:error:operator tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">IČO: </label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="ico" type="text"value="<ion:form:facilities:field:ico />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:facilities:error:ico tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Názov športoviska:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="facility" type="text"value="<ion:form:facilities:field:facility />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:facilities:error:facility tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Mesto (obec):</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="city" type="text"value="<ion:form:facilities:field:city />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:facilities:error:city tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-9">
          <label class="control-label">Ulica:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="street" type="text"value="<ion:form:facilities:field:street />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
             <ion:form:facilities:error:street tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-3">
          <label class="control-label">Číslo:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="number" type="text"value="<ion:form:facilities:field:number />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
             <ion:form:facilities:error:number tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Kontaktný telefón:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="phone" type="text"value="<ion:form:facilities:field:phone />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:facilities:error:phone tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Kontaktný e-mail:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="email" type="text"value="<ion:form:facilities:field:email />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:facilities:error:email tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Webová stránka:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="webpage" type="text"value="<ion:form:facilities:field:webpage />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:facilities:error:webpage tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Facebook link:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="fblink" type="text"value="<ion:form:facilities:field:fblink />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:facilities:error:fblink tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <label class="control-label">Popis:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <textarea name="desc"><ion:form:facilities:field:desc /></textarea>
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:facilities:error:desc tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <label class="control-label">Fotografie:</label>
           <small class="help-block">(povolené prípony len <span class="warning">jpg</span>, <span class="warning">jpeg</span> a <span class="warning">png</span> každý o veľkosti max. 300kB)</small>
          <div class="controls">
            <!-- Foto 1 -->
            <div class="input-group control-group input-profiles">
              <span class="input-group-btn">
                <span class="button btn-file button_orange">
                  Vyberte foto ...
                  <input name="photos[]" type="file" id="cv">
                </span>
              </span>
              <input type="text" readonly="" class="file-reader" />
            </div>
            <ion:form:facilities:error:photos tag="p" class="error-input alert-danger" />

            <!-- Foto 2 -->
            <div class="input-group control-group input-profiles">
              <span class="input-group-btn">
                <span class="button btn-file button_orange">
                  Vyberte foto ...
                  <input name="photos[]" type="file" id="cv">
                </span>
              </span>
              <input type="text" readonly="" class="file-reader" />
            </div>
            <ion:form:facilities:error:photos tag="p" class="error-input alert-danger" />

            <!-- Foto 3 -->
            <div class="input-group control-group input-profiles">
              <span class="input-group-btn">
                <span class="button btn-file button_orange">
                  Vyberte foto ...
                  <input name="photos[]" type="file" id="cv">
                </span>
              </span>
              <input type="text" readonly="" class="file-reader" />
            </div>
            <ion:form:facilities:error:photos tag="p" class="error-input alert-danger" />

            <!-- Foto 4 -->
            <div class="input-group control-group input-profiles">
              <span class="input-group-btn">
                <span class="button btn-file button_orange">
                  Vyberte foto ...
                  <input name="photos[]" type="file" id="cv">
                </span>
              </span>
              <input type="text" readonly="" class="file-reader" />
            </div>
            <ion:form:facilities:error:photos tag="p" class="error-input alert-danger" />

            <!-- Foto 5 -->
            <div class="input-group control-group input-profiles">
              <span class="input-group-btn">
                <span class="button btn-file button_orange">
                  Vyberte foto ...
                  <input name="photos[]" type="file" id="cv">
                </span>
              </span>
              <input type="text" readonly="" class="file-reader" />
            </div>
            <ion:form:facilities:error:photos tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 control-group">
          <input name="rules_1" type="checkbox" id="rules_1">
          <label for="rules_1">Súhlasím s <a href="none">podmienkami pridávania športoviska</a></label>
          <ion:form:facilities:error:rules_1 tag="p" class="error-input alert-danger" />
        </div> 
      </div>
      <div class="row">
        <div class="col-xs-12 control-group">
          <input name="rules_2" type="checkbox" id="rules_2">
          <label for="rules_2">Súhlasím so spracovaním a zverejnením kontaktných údajov</label>
          <ion:form:facilities:error:rules_2 tag="p" class="error-input alert-danger" />
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
      <button type="submit" class="button button_type_icon_big button_orange btn-block"><i class="fa fa-pencil"></i>Registrovať športovisko</button>
    </form>
  </div>
  

  <script src="<ion:theme_url/>assets/plugins/tinymce/tinymce.min.js"></script>
  <script src="<ion:theme_url/>assets/plugins/tinymce/langs/sk.js"></script>
  <script>
    tinymce.init({selector:'textarea'});
  </script>

<ion:partial view="footer" />