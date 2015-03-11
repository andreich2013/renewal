<?php
        $select_testimony = 'SELECT * FROM `testemonies` ORDER BY RAND() LIMIT 3';

        $testimonies_data =  mysql_query($select_testimony);
        if(!$testimonies_data){
            echo 'Не удалось вытянуть данные из таблицы `evidence`';
        }else{
            if(mysql_num_rows($testimonies_data) > 0){
                while ($row = mysql_fetch_assoc($testimonies_data)) {
                    $testimonies[] = $row;
                }

            }
        }
        
?>
<div class="testimonies">
    <?php foreach ($testimonies as $testimony){
       $testimony['short_txt'] = mb_substr($testimony['short_txt'], 0, 109);
       $testimony['short_txt'] .= '...';
    ?>
    <div class="testimony">
        <a href="<?php echo '/about_us/testemonies/show/'.$testimony['url'];?>">
            <img src="<?php echo $config['url']['upload']?>/testemonies/small_<?php echo $testimony['img']?>"/>
            <div class="testimony_description"><?php echo $testimony['short_txt'];?></div>
            <div class="clear"></div>
        </a>
        <div class="clear"></div>
    </div>
    <?php }?>
    <div class="clear"></div>
</div>