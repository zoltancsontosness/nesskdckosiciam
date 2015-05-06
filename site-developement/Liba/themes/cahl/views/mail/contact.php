<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title><ion:data:subject /></title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-Language" content="<ion:current_lang />" />
</head>
<body>
 
<table border="0" width="100%" cellpadding="0" cellspacing="0">
    <tr>
        <td class="bg_fade">
            <table border="0" width="880">
                <tr>
                    <td>
                        <!--
                            Dear %s,
                        -->
                        <h1><ion:data:lang key="mail_contact_dear" swap="data::name" /></h1>
 
                        <!--
                            Message
                            Important : to swap text in the translated string, the 'lang' tag must be called
                            with the 'data' tag as parent.
                        -->
                        <p><ion:data:lang key="mail_contact_message" swap="global::site_title, data::heard, data::email" autolink="false"/></p>
 
                        <p><ion:lang key="mail_contact_message2" /></p>
 
                        <p>
                            <ion:lang key="form_label_name"/> : <b><ion:data:name /></b>,
                            <ion:lang key="form_label_email"/> : <b><ion:data:email /></b>
                            <ion:lang key="form_label_company"/> : <b><ion:data:topic /></b>
                            <ion:lang key="form_label_company"/> : <b><ion:data:message /></b>
                        </p>
                        </p>
 
                        <p>
                            <ion:lang key="mail_contact_thanks" swap="global::site_title" />
                        </p>
 
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
 
</body>
</html>