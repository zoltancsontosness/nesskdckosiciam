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

      <ion:form:report_problem:validation:error is="true">
        <div class="alert alert-danger text-center">
          <b>Niekde nastala chyba!</b> Znovu skontrolujte formulár prosím
        </div>
      </ion:form:report_problem:validation:error>
      <ion:form:report_problem:validation:success tag="div" class="alert alert-success text-center" />

      <form class="contact_form" name="report_problem" method="POST">
        <input type="hidden" name="form" value="report_problem">
        <ul>
          <li>
            <label>Email<span class="required">*</span></label>
            <input type="text" name="email" id="email">
            <ion:form:report_problem:error:email tag="p" class="error-input alert-danger" />
          </li>
          <li>
            <label>Chyba na stránke</label>
            <input type="text" name="link" id="link" value="<?=$_SERVER['HTTP_REFERER'] ?>" readonly>
            <ion:form:report_problem:error:link tag="p" class="error-input alert-danger"/>
          </li>
          <li>
            <label>Správa<span class="required">*</span></label>
            <textarea name="message" id="message"></textarea>
            <ion:form:report_problem:error:message tag="p" class="error-input alert-danger" />
          </li>
          <li>
            <div class="g-recaptcha" data-sitekey="6Le-dAsTAAAAAMFkOVKzrWM84QF5t0BVw6wTL5Gn"></div>
          </li>
          <?php if(isset($_POST['g-recaptcha-response'])): ?>
            <?php if($_POST['g-recaptcha-response'] === ""): ?>
              <p class="error-input alert-danger">Captcha nebola vyplnená</p>
            <?php endif; ?>
          <?php endif; ?>
          <li>
            <button type="submit" class="button button_grey">Nahlásiť</button>
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
<ion:partial view="footer" />