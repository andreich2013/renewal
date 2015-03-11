<?php

switch($_SERVER["SERVER_ADDR"]) {
    
    case '127.0.0.1':
        
        $config = array(
            'db' => array(
                'host' => 'localhost',
                'username' => 'root',
                'password' => '',
                'dbname' => 'renewal',
            ),
            'e-mail' => 'vakhrushev1988@gmail.com'
        );

        $ajax = 1; // флаг подгрузки: 0 - синхронно, 1 - асинхронно

        $index = 'main'; // главная страница
        
        break;
    
    case '31.170.164.233':
    
        $config = array(
            'db' => array(
                'host' => 'mysql.hostinger.ru',
                'dbname' => 'u230909341_renew',
                'username' => 'u230909341_user',
                'password' => 'ha211188vaj',
            ),
            'e-mail' => 'vakhrushev1988@gmail.com'
        );

        $ajax = 1; // флаг подгрузки: 0 - синхронно, 1 - асинхронно

        $index = 'main'; // главная страница
        
        break;
}

$config['url']['host'] = $_SERVER['HTTP_HOST'];
$config['url']['root'] = 'http://' . $config['url']['host'];// Базовый URL, например: http://modular.clients.lan
$config['url']['upload'] = $config['url']['root'] . '/upload';
$config['path']['root'] = getenv('DOCUMENT_ROOT');// Путь до www (public_html), например: /home/clients.lan/domains/modular.clients.lan/public_html
$config['path']['upload'] = $config['path']['root'] . '/upload';
$config['youtube']['key'] = 'AIzaSyADTKQKKV8QNSE8mDYhEkD8hK2dN7LsQa8';
$config['youtube']['channelId'] = 'UC5vGe88jWsVac3PcR5DNm2w';
$config['routes'] = array(
    'main' => array(
        'pattern' => '/^\/main$|^\/$/i',
        'controller' => array(
            'name' => 'MainController',
            'path' => '/inc/main/controller.php',
        ),
    ),
    '404' => array(
        'controller' => array(
            'name' => 'Controller404',
            'path' => '/inc/404/controller.php',
        ),
    ),
    'about' => array(
        'pattern' => '/^\/about(\/\d+)?$/i',
        'controller' => array(
            'name' => 'AboutController',
            'path' => '/inc/about/controller.php',
        ),
    ),
    'history' => array(
        'pattern' => '/^\/about\/history(\/\d+)?$/i',
        'controller' => array(
            'name' => 'HistoryController',
            'path' => '/inc/history/controller.php',
        ),
    ),
    'structure' => array(
        'pattern' => '/^\/about\/structure(\/show\/(\d+|\w+))?(\/\d+)?$/i',
        'controller' => array(
            'name' => 'StructureController',
            'path' => '/inc/structure/controller.php',
        ),
    ),
    'creed' => array(
        'pattern' => '/^\/about\/creed(\/\d+)?$/i',
        'controller' => array(
            'name' => 'CreedController',
            'path' => '/inc/creed/controller.php',
        ),
    ),
    'home_groups' => array(
        'pattern' => '/^\/about\/home_groups(\/\d+)?$/i',
        'controller' => array(
            'name' => 'HomeGroupsController',
            'path' => '/inc/homeGroups/controller.php',
        ),
    ),
    'ministries' => array(
        'pattern' => '/^\/about\/ministries(\/\d+)?$/i',
        'controller' => array(
            'name' => 'MinistriesController',
            'path' => '/inc/ministries/controller.php',
        ),
    ),
    'news' => array(
        'pattern' => '/^\/news(\/show\/(\d+|\w+))?(\/\d+)?$/i',
        'controller' => array(
            'name' => 'NewsController',
            'path' => '/inc/news/controller.php',
        ),
    ),
    'video' => array(
        'pattern' => '/^\/media\/video(\/\d+)?$/i',
        'controller' => array(
            'name' => 'VideoController',
            'path' => '/inc/video/controller.php',
        ),
    ),
    'audio' => array(
        'pattern' => '/^\/media\/audio(\/\d+)?$/i',
        'controller' => array(
            'name' => 'AudioController',
            'path' => '/inc/audio/controller.php',
        ),
    ),
    'gallery' => array(
        'pattern' => '/^\/media\/gallery(\/\d+)?$/i',
        'controller' => array(
            'name' => 'GalleryController',
            'path' => '/inc/gallery/controller.php',
        ),
    ),
    'contacts' => array(
        'pattern' => '/^\/contacts(\/\d+)?$/i',
        'controller' => array(
            'name' => 'ContactsController',
            'path' => '/inc/contacts/controller.php',
        ),
    ),
);

$URL_ROOT = $config['url']['root'];
$URL_UPLOAD = $config['url']['upload'];

//echo '<pre>';
//print_r($config);
//echo '</pre>';
//exit();

?>