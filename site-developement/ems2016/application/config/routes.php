<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = 'page';
$route['404_override'] = 'page';

/*
 * Route to Admin panel
 */
$route[config_item('admin_url')] = 'admin/desktop';
$route[config_item('admin_url').'(/.*)?'] = 'admin$1';

// API Route
$route['api/([a-z]+)(.*)'] = "api/$1/index$2";
$route['api(/.*)?'] = "api/$1";

/*
 * Route to the User controller
 */
$route['user'] = "user/index/$1";
$route['user(/.*)?'] = 'user/$1';

$route['picture'] = "picture/get/$1";
$route['picture(/.*)?'] = 'picture/$1';

/*
 * Route to the Json controller
 */
$route['json/list/(:any)'] = 'json/getList/$1';
$route['json/list/(:any)/(:num)'] = 'json/getList/$1/$2';
$route['json/versions'] = 'json/getVersions';
$route['json/(:any)'] = 'json/getArticle/$1';
$route['json/(:any)/(:num)'] = 'json/getArticle/$1/$2';

/*
 * Route to default controller
 */
$route['(.*)'] = $route['default_controller'].'/index/$1';


/* End of file routes.php */
/* Location: ./application/config/routes.php */