<h1 class="content_right_title esenin">Блог пастора</h1>
<?php //include('filter.php')?>
<?php

    $articles = $db->select(array(
        'table' => 'articles',
        'where' => $query_for_elem ? array(
            'IN' => array('id' => $query_for_elem)
        ) : null,
        'order' => array(
            'data' => "DESC",
        ),
    ));
        
    if($articles > 0){
        $num = 9; // количество выводимых элементов на страницу
        $page_active = pagination($articles,$num,$page_num); // выводим пагинацию страниц

        $i = 0;
        foreach($articles as $article){ // выводим элементы на страницу
            if($article['id'] > $GLOBALS['from_what_id']){
                $i++;

                $date = strtotime($article['date']);
                $article['date'] = date("d.m.Y", $date);
                
                $article['txt'] = mb_substr($article['txt'], 0, 543);
                $article['txt'] .= '...';
?>
<div class="news">
    <?php if(!empty($article['img'])){?>
        <a class="img" href="<?php echo $url[$page['page']['id']].'/show/'.$article['url'];?>">
            <img src="<?php echo $config['url']['upload']?>/articles/normal_<?php echo $article['img']?>"/>
        </a>
    <?php }?>
    <div class="news_description">
        <span class="shot_info">
        <?php if($article['author']){
                  if($article['author_url']){?>
                    автор:&nbsp;&nbsp;<a href="<?php echo '/about_us/structure/show/'.$article['author_url'];?>"><?php echo $article['author'];?></a>
            <?php }else{
                      echo 'автор:&nbsp;&nbsp;'.$article['author'];
                  }
            ?>
        <?php }?>
        </span>
        <h3 class="news_title georgia"><?php echo $article['title'];?></h3>
        <span class="news_date"><?php echo $article['date'];?></span>
        <div class="txt"><?php echo $article['txt'];?></div>
        <a class="more" href="<?php echo $url[$page['page']['id']].'/show/'.$article['url'];?>">подробнее...</a>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
</div>
<?php
                if($i == $num){ // количество элементов на странице равно $num
                    break;
                }
            }
        }
?>
        <div class="clear"></div>
<?php 
        echo $paginator;
    }else{
?>
    <div>По запросу не ничего найдено</div>
<?php
    }
?>
