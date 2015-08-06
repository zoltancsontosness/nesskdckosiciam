<ion:partial view="header" />
  <h1 class="section_title section_title_medium"><ion:page:title /></h1>
  <div class="clearfix">
    <form action="" class="form_type_1 type_2 col-xs-12 col-sm-8 col-sm-offset-2" method="POST">
    <input type="hidden" name="form" value="facilities">
    <div class="row">
      <div class="control-group input_profiles col-xs-12 col-sm-6">
        <label class="control-label">Názov prevádzkara:</label>
        <div class="controls">
          <input name="operator" type="text">
        </div>
      </div>
      <div class="control-group input_profiles col-xs-12 col-sm-6">
        <label class="control-label">IČO:</label>
        <div class="controls">
          <input name="ico" type="text">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="control-group input_profiles col-xs-12 col-sm-6">
        <label class="control-label">Názov športoviska:</label>
        <div class="controls">
          <input name="facility" type="text">
        </div>
      </div>
      <div class="control-group input_profiles col-xs-12 col-sm-6">
        <label class="control-label">Adresa:</label>
        <div class="controls">
          <input name="address" type="text">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="control-group input_profiles col-xs-12 col-sm-6">
        <label class="control-label">Kontaktný telefón:</label>
        <div class="controls">
          <input name="phone" type="text">
        </div>
      </div>
      <div class="control-group input_profiles col-xs-12 col-sm-6">
        <label class="control-label">Kontaktný e-mail:</label>
        <div class="controls">
          <input name="email" type="text">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="control-group input_profiles col-xs-12 col-sm-6">
        <label class="control-label">Webová stránka:</label>
        <div class="controls">
          <input name="webpage" type="text">
        </div>
      </div>
      <div class="control-group input_profiles col-xs-12 col-sm-6">
        <label class="control-label">Facebook link:</label>
        <div class="controls">
          <input name="fblink" type="text">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="control-group input_profiles col-xs-12">
        <label class="control-label">Popis:</label>
        <div class="controls">
          <textarea name="desc"></textarea>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="control-group input_profiles col-xs-12">
        <label class="control-label">Fotografie:</label>
        <div class="controls">
          <!-- Foto 1 -->
          <div class="input-group control-group input-profiles">
            <span class="input-group-btn">
              <span class="button btn-file button_orange">
                Vyberte foto ...
                <input name="photo[]" type="file" id="cv">
              </span>
            </span>
            <input type="text" readonly="" class="file-reader form-control" />
          </div>

          <!-- Foto 2 -->
          <div class="input-group control-group input-profiles">
            <span class="input-group-btn">
              <span class="button btn-file button_orange">
                Vyberte foto ...
                <input name="photo[]" type="file" id="cv">
              </span>
            </span>
            <input type="text" readonly="" class="file-reader" />
          </div>

          <!-- Foto 3 -->
          <div class="input-group control-group input-profiles">
            <span class="input-group-btn">
              <span class="button btn-file button_orange">
                Vyberte foto ...
                <input name="photo[]" type="file" id="cv">
              </span>
            </span>
            <input type="text" readonly="" class="file-reader" />
          </div>

          <!-- Foto 4 -->
          <div class="input-group control-group input-profiles">
            <span class="input-group-btn">
              <span class="button btn-file button_orange">
                Vyberte foto ...
                <input name="photo[]" type="file" id="cv">
              </span>
            </span>
            <input type="text" readonly="" class="file-reader" />
          </div>

          <!-- Foto 5 -->
          <div class="input-group control-group input-profiles">
            <span class="input-group-btn">
              <span class="button btn-file button_orange">
                Vyberte foto ...
                <input name="photo[]" type="file" id="cv">
              </span>
            </span>
            <input type="text" readonly="" class="file-reader" />
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