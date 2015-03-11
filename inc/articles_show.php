<?php
    if(!$article){
        echo 'данные удалены или нет информации по интересующему Вас запросу - проверьте, пожалуйста введенные Вами данные в адресную строку';
    }else{  

        // создадим крошки
        $breadcrumbs = array(
            0 => array(
                'name' => 'Статьи',
                'url' => '/articles',
            ),
            1 => array(
                'name' => $article['title'],
            ),
        );
        
        $article['date'] = date("d.m.Y", strtotime($article['date']));
?>
    <script type="text/javascript">
        hs.graphicsDir = '/highslide/graphics/';
        hs.wrapperClassName = 'borderless';
        hs.align = 'center';
        hs.transitions = ['expand', 'crossfade'];
        hs.dimmingOpacity = .01;
        hs.showCredits = false;
    </script>
    <div class="pathway">
        <?php breadcrumbs($breadcrumbs);?>
    </div>
    <div class="news">
        <?php if(!empty($article['img'])){?>
        <span class="img">
            <a name="sync" href="<?php echo $config['url']['upload']?>/articles/real_<?php echo $article['img'];?>" class="highslide" onclick="return hs.expand(this)">
                <img src="<?php echo $config['url']['upload']?>/articles/normal_<?php echo $article['img'];?>"/>
            </a>
        </span>
        <?php }?>
        <div class="news_description">
            <h1 class="news_title georgia"><?php echo $article['title'];?></h1>
            <span class="news_date"><?php echo $article['date'];?></span>
            <div class="txt"><?php echo $article['txt'];?></div>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
    <?php include($config['path']['root'].'/inc/comments.php'); ?>
<?php }?>
