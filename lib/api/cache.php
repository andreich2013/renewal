<?php

    if(empty($_REQUEST['title'])) {
        return;
    }

    require_once(getenv('DOCUMENT_ROOT') . '/lib/config.php');
    require_once(getenv('DOCUMENT_ROOT') . '/lib/lib.php');
    
    $db = new DB($config['db']);
    
    $model = $db->select(array(
        'columns' => array('data'),
        'table' => 'cache',
        'where' => array(
            "title" => $_REQUEST['title']
        ),
//        'debug' => true,
    ));
    
    echo json_encode($model);
?>

