<ion:partial view="header" /> 
  <h1 class="section_title section_title_medium"><ion:page:title /></h1>
  <div class="clearfix">
    <form action="" class="form_type_1 type_2 col-xs-12 col-sm-8 col-sm-offset-2" method="POST">
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Názov organizátora:</label>
          <div class="controls">
            <input name="textinput" type="text">
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">IČO:</label>
          <div class="controls">
            <input name="textinput" type="text">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Názov akcie:</label>
          <div class="controls">
            <input name="textinput" type="text">
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Miesto konania akcie:</label>
          <div class="controls">
            <input name="textinput" type="text">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Dátum konania:</label>
          <div class="controls">
            <input name="textinput" type="text">
          </div>
        </div>
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Čas konania:</label>
          <div class="controls">
            <input name="textinput" type="text">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12 col-sm-6">
          <label class="control-label">Dĺžka trvania:</label>
          <div class="controls">
            <input name="textinput" type="text">
          </div>
        </div>

      </div>
      <div class="row">
        <div class="control-group input_profiles col-xs-12">
          <label class="control-label">Popis:</label>
          <div class="controls">
            <textarea name="textinput"></textarea>
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
                  <input name="cv" type="file" id="cv">
                </span>
              </span>
              <input type="text" readonly="" class="file-reader form-control" />
            </div>
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