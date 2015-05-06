<?php

/**
 * Recaptcha Module's TagManager
 *
 * @author  : İskender TOTOĞLU | Altı ve Bir Bilişim Teknolojileri | http://www.altivebir.com.tr
 */
class Recaptcha_Tags extends TagManager {

    /**
     * Tags declaration
     * To be available, each tag must be declared in this static array.
     *
     * @var array
     *
     * @usage	<ion:recaptcha:html />
     *
     */
    public static $tag_definitions = array
    (
        "recaptcha:html"                     => "tag_html"
    );

    // ------------------------------------------------------------------------

    /**
     * Base module tag
     *
     * @usage	<ion:recaptcha>
     *			...
     *			</ion:recaptcha>
     *
     */
    public static function index(FTL_Binding $tag)
    {
        $str = $tag->expand();
        return $str;
    }

    // ------------------------------------------------------------------------

    /**
     * @usage   <ion:html />
     *
     * @param FTL_Binding $tag
     * @return mixed
     */
    public static function tag_html(FTL_Binding $tag) {

        self::$ci->load->library('recaptcha');

        return self::$ci->recaptcha->recaptcha_get_html();
    }

    // ------------------------------------------------------------------------

}
