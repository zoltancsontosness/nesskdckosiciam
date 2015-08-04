<ion:partial view="header" />

  <div class="section_2">
    <h3 class="section_title section_title_medium"><ion:page:title /></h3>
    <div class="tabs ui-tabs ui-widget ui-widget-content ui-corner-all">
      <!--tabs navigation-->
      <div class="clearfix tabs_container">
        <ul class="tabs_nav clearfix ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all" role="tablist">
          <li class="ui-state-default ui-corner-top ui-tabs-active ui-state-active" role="tab" tabindex="0" aria-controls="tab-1" aria-labelledby="ui-id-1" aria-selected="true"><a href="#tab-1" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-1"><h3>Športovisko</h3></a></li>
          <li class="ui-state-default ui-corner-top" role="tab" tabindex="-1" aria-controls="tab-2" aria-labelledby="ui-id-2" aria-selected="false"><a href="#tab-2" class="ui-tabs-anchor" role="presentation" tabindex="-1" id="ui-id-2"><h3>Event</h3></a></li>
        </ul>
      </div>
      <!--tabs content-->
      <div class="tabs_content clearfix">
        <div id="tab-1" aria-labelledby="ui-id-1" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-expanded="true" aria-hidden="false" style="display: block;">
          <form action="." class="form_type_1 type_2 col-xs-12 col-sm-8 col-sm-offset-2">
            <div class="row">
              <div class="control-group input_profiles col-xs-12 col-sm-6">
                <label class="control-label">Názov prevádzkara:</label>
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
                <label class="control-label">Názov športoviska:</label>
                <div class="controls">
                  <input name="textinput" type="text">
                </div>
              </div>
              <div class="control-group input_profiles col-xs-12 col-sm-6">
                <label class="control-label">Adresa:</label>
                <div class="controls">
                  <input name="textinput" type="text">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="control-group input_profiles col-xs-12 col-sm-6">
                <label class="control-label">Kontaktný telefón:</label>
                <div class="controls">
                  <input name="textinput" type="text">
                </div>
              </div>
              <div class="control-group input_profiles col-xs-12 col-sm-6">
                <label class="control-label">Kontaktný e-mail:</label>
                <div class="controls">
                  <input name="textinput" type="text">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="control-group input_profiles col-xs-12 col-sm-6">
                <label class="control-label">Webová stránka:</label>
                <div class="controls">
                  <input name="textinput" type="text">
                </div>
              </div>
              <div class="control-group input_profiles col-xs-12 col-sm-6">
                <label class="control-label">Facebook link:</label>
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
                <label class="control-label">Fotografie:</label>
                <div class="controls">
                  <!-- Foto 1 -->
                  <div class="input-group control-group input-profiles">
                    <span class="input-group-btn">
                      <span class="button btn-file button_orange">
                        Vyberte foto ...
                        <input name="cv" type="file" id="cv">
                      </span>
                    </span>
                    <input type="text" readonly="" class="file-reader form-control" />
                  </div>

                  <!-- Foto 2 -->
                  <div class="input-group control-group input-profiles">
                    <span class="input-group-btn">
                      <span class="button btn-file button_orange">
                        Vyberte foto ...
                        <input name="cv" type="file" id="cv">
                      </span>
                    </span>
                    <input type="text" readonly="" class="file-reader" />
                  </div>

                  <!-- Foto 3 -->
                  <div class="input-group control-group input-profiles">
                    <span class="input-group-btn">
                      <span class="button btn-file button_orange">
                        Vyberte foto ...
                        <input name="cv" type="file" id="cv">
                      </span>
                    </span>
                    <input type="text" readonly="" class="file-reader" />
                  </div>

                  <!-- Foto 4 -->
                  <div class="input-group control-group input-profiles">
                    <span class="input-group-btn">
                      <span class="button btn-file button_orange">
                        Vyberte foto ...
                        <input name="cv" type="file" id="cv">
                      </span>
                    </span>
                    <input type="text" readonly="" class="file-reader" />
                  </div>

                  <!-- Foto 5 -->
                  <div class="input-group control-group input-profiles">
                    <span class="input-group-btn">
                      <span class="button btn-file button_orange">
                        Vyberte foto ...
                        <input name="cv" type="file" id="cv">
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
        <div id="tab-2" aria-labelledby="ui-id-2" class="ui-tabs-panel ui-widget-content ui-corner-bottom" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
          <form action="." class="form_type_1 type_2 col-xs-12 col-sm-8 col-sm-offset-2">
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
      </div>
    </div>
  </div>

<ion:partial view="footer" />