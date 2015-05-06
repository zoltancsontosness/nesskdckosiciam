<?php if( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Recaptcha MODULE ADMIN CONTROLLER
 *
 * @author  : İskender TOTOĞLU | Altı ve Bir Bilişim Teknolojileri | http://www.altivebir.com.tr
 */
class Recaptcha extends Module_Admin
{
    /**
     * Controller URL
     *
     * @var string (with admin url)
     */
    protected $controller_url;

    /**
     * Controller View Folder
     *
     * @var string
     */
    protected $controller_folder = 'admin/recaptcha/';

    /**
     * Constructor
     *
     * @access	public
     * @return	void
     */
    public function construct()
    {
        // Set Controller URL
        $this->controller_url = admin_url() . 'module/recaptcha/recaptcha/';
    }

    // ------------------------------------------------------------------------

    /**
     * Index of comment module
     */
    public function index()
    {

        if(Authority::can('access', 'module/recaptcha/admin'))
        {
            $module_configs = Modules()->get_module_config("recaptcha");

            $this->template = array(
                'public_key'        => $module_configs['public_key'],
                'private_key'       => $module_configs['private_key'],
                'recaptcha_theme'   => $module_configs['recaptcha_theme']
            );

            $this->output($this->controller_folder . 'index');
        }
        else
        {
            self::_alert('danger', FALSE, lang('module_recaptcha_permission_access'));
        }
    }

    // ------------------------------------------------------------------------

    /**
     * Save items to config file
     */
    function save()
    {
        // Antispam key
        $config_items   = array('public_key', 'private_key', 'recaptcha_theme');
        $module_configs = Modules()->get_module_config("recaptcha");

        $this->load->model('config_model', '');
        $this->config_model->open_file('config.php', 'recaptcha');

        foreach($config_items as $config_item)
        {
            if ($module_configs[$config_item] != $this->input->post($config_item) )
            {
                $this->config_model->set_config($config_item, $this->input->post($config_item), 'recaptcha');

                if (FALSE === $this->config_model->save())
                    $this->error(lang('ionize_message_error_writing_ionize_file'));
            }

        }

        // UI panel to update after saving
        $this->update[] = array(
            'element' => 'mainPanel',
            'url' => $this->controller_url . 'index'
        );

        $this->success(lang('ionize_message_settings_saved'));
    }

    // ------------------------------------------------------------------------
}