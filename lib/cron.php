<?php
    require_once('config.php');
    require_once('connect_db.php');
//    session_set_cookie_params(79200);
    session_start();

    $current_time = strftime('%Y-%m-%d %H:%M:%S');
    
    $query =  "UPDATE `captcha` SET `is_online`='".$current_time."'";
    $query .= " WHERE `session`='".$_SESSION['id']."'";

    mysql_query($query);

    return;
?>