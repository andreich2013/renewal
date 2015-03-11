<?php
    if(!$article){
        echo 'данные удалены или нет информации по интересующему Вас запросу - проверьте, пожалуйста введенные Вами данные в адресную строку';
    }else{  
        
        // создадим крошки
        $breadcrumbs[0]['name'] = 'Свидетельства';
        $breadcrumbs[0]['url'] = $config['url']['root'].'/about_us/testemonies';
        $breadcrumbs[1]['name'] = $article['title'];
        
        $date = strtotime($article['date']);
        $article['date'] = date("d.m.Y", $date);
?>
    <div class="pathway">
        <?php breadcrumbs($breadcrumbs);?>
    </div>
    <div class="news">
            <?php if($article['video']){?>
                    <span class="img">
                        <iframe width="230" height="173" src="<?php echo $article['video'];?>" frameborder="0" allowfullscreen></iframe>
                    </span>
            <?php }else{
                      if(!empty($article['img'])){?>
                        <script type="text/javascript">
                            hs.graphicsDir = '/highslide/graphics/';
                            hs.wrapperClassName = 'borderless';
                            hs.align = 'center';
                            hs.transitions = ['expand', 'crossfade'];
                            hs.dimmingOpacity = .01;
                            hs.showCredits = false;
                        </script>
                        <span class="img">
                            <a name="sync" href="<?php echo $config['url']['upload']?>/testemonies/real_<?php echo $article['img'];?>" class="highslide" onclick="return hs.expand(this)">
                                <img src="<?php echo $config['url']['upload']?>/testemonies/normal_<?php echo $article['img'];?>"/>
                            </a>
                        </span>
                <?php }?>
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