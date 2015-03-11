<?php 

    require_once('lib/config.php');
    require_once('lib/lib.php');
    require_once('lib/ln/' . Util::getLocale() . '.php');
    
    $db = new DB($config['db']);
    $dom = new DOM();
    $router = new Router(array(
        'basePath' => getenv('DOCUMENT_ROOT'),
        'routes' => $config['routes']
    ));
    
    $route = $router->dispatch($_REQUEST['url']);

    include($config['path']['root'] . $route['controller']['path']);

    $controller = new $route['controller']['name'](array(
        'db' => $db,
        'data' => $route['data'],
    ));
    
    if('contacts' == $page['page']['page'] ||
        'about_jesus' == $page['page']['page'] ||
        'messeges' == $page['page']['page'] ||
        'faq' == $page['page']['page']){
         session_start();
     }
?>