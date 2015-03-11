<?php

    if(empty($_REQUEST['section']) || empty($_REQUEST['table'])) {
        return;
    }

    require_once(getenv('DOCUMENT_ROOT') . '/lib/config.php');
    require_once(getenv('DOCUMENT_ROOT') . '/lib/lib.php');
    
    $db = new DB($config['db']);
    
    $model = $db->select(array(
        'columns' => array('id', 'title', 'value'),
        'table' => 'filter_categories',
        'where' => array(
            "AND" => array(
                "subordinate" => $_REQUEST['section'],
                $_REQUEST['table'] => '1',
            )
        ),
//        'debug' => true,
    ));
    
    echo json_encode($model);
?>

