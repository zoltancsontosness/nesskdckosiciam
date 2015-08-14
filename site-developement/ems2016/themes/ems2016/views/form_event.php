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
          <label class="control-label">Názov organizátora:</label>
          <div class="controls">
            <input name="organizer" type="text">
            <ion:form:events:error:organizer tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">IČO:</label>
          <div class="controls">
            <input name="ico" type="text">
            <ion:form:events:error:ico tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Názov akcie:</label>
          <div class="controls">
            <input name="event_name" type="text">
            <ion:form:events:error:event_name tag="p" class="error-input alert-danger" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Miesto konania akcie:</label>
          <div class="controls">
            <input name="address" type="text">
            <ion:form:events:error:address tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-12">
          <label class="control-label">Dátum a čas konania:</label>
          <div class="controls">
            <input name="date" type="text" id="datetimepicker-from">
            <ion:form:events:error:date tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-12">
          <label class="control-label">Dĺžka trvania do:</label>
          <div class="controls">
            <input name="length" type="text" id="datetimepicker-to">
            <ion:form:events:error:length tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-12">
          <label class="control-label">Webstránka:</label>
          <div class="controls">
            <input name="webpage" type="text">
            <ion:form:events:error:webpage tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <label class="control-label">Popis:</label>
          <div class="controls">
            <textarea name="desc"></textarea>
            <ion:form:events:error:desc tag="p" class="error-input alert-danger" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <label class="control-label">Príloha:</label>
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
          <label for="rules_1">Súhlasím s <a href="none">podmienkami pridávania podujatí</a></label>
          <ion:form:events:error:rules_1 tag="p" class="error-input alert-danger" />
        </div> 
      </div>
      <div class="row">
        <div class="col-xs-12 control-group">
          <input name="rules_2" type="checkbox" id="rules_2">
          <label for="rules_2">Súhlas so spracovaním a zverejnením kontaktných údajov</label>
          <ion:form:events:error:rules_2 tag="p" class="error-input alert-danger" />
        </div>   
      </div>
      <button type="submit" class="button button_type_icon_big button_orange btn-block"><i class="fa fa-pencil"></i>Registrovať športovisko</button>
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