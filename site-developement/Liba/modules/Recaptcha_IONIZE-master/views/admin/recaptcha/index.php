<div id="maincolumn">

    <h2 class="main recaptcha"><?php echo lang('module_recaptcha_title'); ?></h2>

    <div class="main subtitle">

        <p class="lite">
            <?php echo lang('module_recaptcha_about'); ?>
        </p>

    </div>
    <hr />
    <div class="mainTabs">
        <form name="recaptchaSettingsForm" id="recaptchaSettingsForm" method="post">

            <!-- public_key -->
            <dl class="mb10">
                <dt>
                    <label for="public_key"><?php echo lang('module_recaptcha_label_public_key'); ?></label>
                </dt>
                <dd>
                    <input id="public_key" name="public_key" type="text" class="inputtext w300" placeholder="<?php echo lang('module_recaptcha_label_public_key'); ?>" value="<?php echo $public_key; ?>"; />
                </dd>
            </dl>

            <!-- private_key -->
            <dl class="mb10">
                <dt>
                    <label for="private_key"><?php echo lang('module_recaptcha_label_private_key'); ?></label>
                </dt>
                <dd>
                    <input id="private_key" name="private_key" type="text" class="inputtext w300" placeholder="<?php echo lang('module_recaptcha_label_private_key'); ?>" value="<?php echo $private_key; ?>" />
                </dd>
            </dl>

            <!-- Encryption key -->
            <dl class="mb10">
                <dt>
                    <label for="recaptcha_theme"><?php echo lang('module_recaptcha_label_theme'); ?></label>
                </dt>
                <dd>
                    <select id="recaptcha_theme" name="recaptcha_theme" class="select">
                        <option value="red"<?php echo (($recaptcha_theme == 'red') ? ' selected="selected"' : ''); ?>><?php echo lang('module_recaptcha_label_theme_red'); ?></option>
                        <option value="white"<?php echo (($recaptcha_theme == 'white') ? ' selected="selected"' : ''); ?>><?php echo lang('module_recaptcha_label_theme_white'); ?></option>
                        <option value="blackglass"<?php echo (($recaptcha_theme == 'blackglass') ? ' selected="selected"' : ''); ?>><?php echo lang('module_recaptcha_label_theme_blackglass'); ?></option>
                        <option value="clean"<?php echo (($recaptcha_theme == 'clean') ? ' selected="selected"' : ''); ?>><?php echo lang('module_recaptcha_label_theme_clean'); ?></option>
                    </select>
                </dd>
            </dl>

            <dl class="mb10">
                <dt>&nbsp;</dt>
                <dd>
                    <input id="recaptchaSettingsFormSubmit" type="submit" class="submit" value="<?php echo lang('ionize_button_save'); ?>" />
                </dd>
            </dl>
        </form>
    </div>

</div>
<script type="text/javascript">

    var module_url = admin_url + 'module/recaptcha/recaptcha/';

    // Panel toolbox
    ION.initToolbox('empty_toolbox');

    // RECaptcha Settings form submit
    ION.setFormSubmit('recaptchaSettingsForm', 'recaptchaSettingsFormSubmit', module_url + 'save');

</script>