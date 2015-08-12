<ion:partial view="header" /> 
  <h1 class="section_title section_title_medium"><ion:page:title /></h1>
  <div class="clearfix">
  <ion:form:events:validation:error is="true" >
    <span class="red">
        Error : Some form data are missing or seem to be incorrect.
    </span>
  </ion:form:events:validation:error>
    <form name="events" action="" class="form_type_1 type_2 col-xs-12 col-sm-8 col-sm-offset-2" method="POST" enctype="multipart/form-data">
      <input type="hidden" name="form" value="events">
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Názov organizátora:</label>
          <div class="controls">
            <input name="organizer" type="text">
            <ion:form:events:error:organizer tag="p" class="input-error" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">IČO:</label>
          <div class="controls">
            <input name="ico" type="text">
            <ion:form:events:error:ico tag="p" class="input-error" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Názov akcie:</label>
          <div class="controls">
            <input name="event_name" type="text">
            <ion:form:events:error:event_name tag="p" class="input-error" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Miesto konania akcie:</label>
          <div class="controls">
            <input name="address" type="text">
            <ion:form:events:error:address tag="p" class="input-error" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Dátum konania:</label>
          <div class="controls">
            <input name="date" type="text">
            <ion:form:events:error:date tag="p" class="input-error" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Čas konania:</label>
          <div class="controls">
            <input name="time" type="text">
            <ion:form:events:error:time tag="p" class="input-error" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Dĺžka trvania:</label>
          <div class="controls">
            <input name="length" type="text">
            <ion:form:events:error:length tag="p" class="input-error" />
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Webstránka:</label>
          <div class="controls">
            <input name="webpage" type="text">
            <ion:form:events:error:webpage tag="p" class="input-error" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <label class="control-label">Popis:</label>
          <div class="controls">
            <textarea name="desc"></textarea>
            <ion:form:events:error:desc tag="p" class="input-error" />
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
            <ion:form:events:error:attachment tag="p" class="input-error" />
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <input name="rules_1" type="checkbox" id="rules_1">
          <label for="rules_1">Súhlasím s <a href="none">podmienkami pridávania športoviska</a></label>
        </div>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <input name="rules_2" type="checkbox" id="rules_2">
          <label for="rules_2">Súhlas so spracovaním a zverejnením kontaktných údajov</label>
        </div>
      </div>
      <button type="submit" class="button button_type_icon_big button_orange btn-block"><i class="fa fa-pencil"></i>Registrovať športovisko</button>
    </form>
  </div>

  <script src="<ion:theme_url/>assets/plugins/tinymce/tinymce.min.js"></script>
  <script src="<ion:theme_url/>assets/plugins/tinymce/langs/sk.js"></script>
  <script>tinymce.init({selector:'textarea'});</script>

<ion:partial view="footer" />