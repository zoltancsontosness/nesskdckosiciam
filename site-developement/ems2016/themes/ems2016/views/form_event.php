<ion:partial view="header" /> 
  <h1 class="section_title section_title_medium"><ion:page:title /></h1>
  <div class="clearfix">
    <form name="events" action="" class="form_type_1 type_2 col-xs-12 col-sm-8 col-sm-offset-2" method="POST" enctype="multipart/form-data">
      <input type="hidden" name="form" value="events">
      <div class="row">
        <div class="col-xs-12">
          <ion:form:events:validation:error is="true" >
            <div class="alert alert-danger text-center">
              <b>Niekde nastala chyba!</b> Znovu skontrolujte formulár prosím
            </div>
          </ion:form:events:validation:error>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Meno organizátora:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="organizer" type="text" value="<ion:form:events:field:organizer />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:events:error:organizer tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">IČO:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="ico" type="text" value="<ion:form:events:field:ico />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:events:error:ico tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Názov akcie:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="event_name" type="text" value="<ion:form:events:field:event_name />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:events:error:event_name tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Miesto konania akcie:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="address" type="text" value="<ion:form:events:field:address />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:events:error:address tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Typ športu:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="sport_type" type="text" value="<ion:form:events:field:sport_type />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:events:error:sport_type tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Je šport aktívny?:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <div class="custom_select">
                <div class="select_title">Vyberte jednu z možností ...</div>
                <ul id="menu_type" class="select_list" style="display: none;">
                </ul>
                <select name="is_active" class="d_none" style="display: none;">
                  <option value="">Vyberte jednu z možností ...</option>
                  <option value="active">Áno</option>
                  <option value="passive">Nie</option>
                </select>
              </div>
            </div>
            <ion:form:events:error:is_active tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-12">
          <label class="control-label">Kategória športu:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <div class="custom_select">
                <div class="select_title">Vyberte jednu z možností ...</div>
                <ul id="menu_type" class="select_list" style="display: none;">
                </ul>
                <select name="category" class="d_none" style="display: none;">
                  <option value="">Vyberte jednu z možností ...</option>
                  <ion:categories>
                    <option value="<ion:category:id />"><ion:category:name /></option>
                  </ion:categories>
                </select>
              </div>
            </div>
            <ion:form:events:error:category tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-12">
          <label class="control-label">Dátum a čas konania:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="date" type="text" id="datetimepicker-from" value="<ion:form:events:field:date />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:events:error:date tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-12">
          <label class="control-label">Dĺžka trvania do:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="length" type="text" id="datetimepicker-to" value="<ion:form:events:field:length />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:events:error:length tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-12">
          <label class="control-label">Webstránka:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <input name="webpage" type="text" value="<ion:form:events:field:webpage />">
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:events:error:webpage tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <label class="control-label">Popis:</label>
          <div class="controls">
            <div class="inner-addon right-addon">
              <textarea name="desc"> <ion:form:events:field:desc /></textarea>
              <i class="icon glyphicon glyphicon-info-sign" data-trigger="hover" data-placement="top" data-toggle="popover" title="Popover title" data-content="And here's some amazing content. It's very engaging. Right?"></i>
            </div>
            <ion:form:events:error:desc tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <label class="control-label">Príloha:</label>
          <small class="help-block">(povolené prípony len <span class="warning">jpg</span>, <span class="warning">jpeg</span> a <span class="warning">png</span> o veľkosti max. 1MB)</small>
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
            <ion:form:events:error:attachment tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12 control-group">
          <input name="rules_1" type="checkbox" id="rules_1">
          <label for="rules_1">Súhlasím s <a href="<ion:theme_url />assets/files/pravna-zodpovednost.pdf" target="_blank">podmienkami pridávania podujatí</a></label>
          <ion:form:events:error:rules_1 tag="p" class="error-input alert-danger" />
        </div> 
      </div>
      <div class="row">
        <div class="col-xs-12 control-group">
          <input name="rules_2" type="checkbox" id="rules_2">
          <label for="rules_2">Súhlasím so spracovaním a zverejnením kontaktných údajov</label>
          <ion:form:events:error:rules_2 tag="p" class="error-input alert-danger" />
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
      <button type="submit" class="button button_type_icon_big button_orange btn-block"><i class="fa fa-pencil"></i>Registrovať podujatie</button>
    </form>
  </div>

  <script src="<ion:theme_url/>assets/plugins/tinymce/tinymce.min.js"></script>
  <script src="<ion:theme_url/>assets/plugins/tinymce/langs/sk.js"></script>
  <script src="<ion:theme_url/>assets/plugins/datepicker/js/moment.min.js"></script>
  <script src="<ion:theme_url/>assets/plugins/datepicker/js/bootstrap-datetimepicker.min.js"></script>
    <script src="<ion:theme_url/>assets/plugins/datepicker/locales/bootstrap-datetimepicker.sk.js"></script>
  <script>
  //TinyMCE init
  tinymce.init({selector:'textarea'});
  //Datepicker
  $(function () {
    $('#datetimepicker-from').datetimepicker({
      format: 'D.M.YYYY H:mm',
      showClose: true,
      locale: moment.locale('sk')
    });
    $('#datetimepicker-to').datetimepicker({
      format: 'D.M.YYYY H:mm',
      showClose: true,
      locale: moment.locale('sk')
    });
  });
  </script>

<ion:partial view="footer" />