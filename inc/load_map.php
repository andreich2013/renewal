<?php

    $table = $_REQUEST['referer'];
    $article_where = $_REQUEST['url'];
    
    $article = get_db_data_where($table,'url',$article_where);
    if(!$article){
        $article = get_db_data_where($table,'id',intval($article_where));
    }

?>
<iframe width="420" height="240" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="<?php echo $article['map_location']?>"></iframe>
