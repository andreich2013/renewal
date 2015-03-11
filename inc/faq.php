<?php 
        $select_questions = "SELECT `f`.*, `s`.`url`, `s`.`img`, `s`.`fio` FROM 
                            `faq` AS `f` INNER JOIN `structure` AS `s` WHERE
                            (`s`.`id`=`f`.`answered`) AND (`f`.`show` = 1) ORDER BY `date` DESC";
        
        $select_questions = mysql_query($select_questions);

        if(!$select_questions){
            echo 'Не удалось вытянуть данные из таблицы';
        }else{
            if(mysql_num_rows($select_questions) > 0){
                while ($row = mysql_fetch_assoc($select_questions)) {
                    $articles[] = $row;
                }

            }
        }
?>
<script type="text/javascript">
    $(document).ready(function(){
        $('.popup_rules').popup({
            push_teg: 'popup_push',
            position: 'another_faq_rules',
            event: 'click',
            maxWidth: 500,
            maxHeight: 300
        });
        $('.popup_question').popup({
            push_teg: 'popup_push',
            position: 'bottom',
            event: 'click',
            maxWidth: 400,
            maxHeight: 300
        });
    });
</script>
<h1 class="content_right_title esenin">Вопрос-ответ</h1>
<div class="faq">
    <div class="faq_description">Здесь (согласно 
        <div class="popup_wr" style="display: inline;">
            <div class="popup_push" style="display: inline;">
                <span class="send_messege">правил пользования сайтом</span>
            </div>
            <div class="popup popup_rules">
                <i class="popup_close fa fa-close"></i>
                <div class="clear"></div>
                <div class="rules">
                    <h3 class="georgia">Правила пользования сайтом</h3>
                    <p>1. Запрещено использование ненормативной лексики, а также некорректное поведение в отношении других польозователей, администрации сайта.</p>
                    <p style="margin: 0 0 40px 0;">2. Запрещено добавление спама.</p>
                    <p><strong>Лица, получившие три предупреждения, по нарушению этих правил будут баниться (вплоть до невозможности попадания на сайт)!</strong></p>
                </div>
                <div class="popup_arrow"></div>
            </div>
        </div>
        ) вы можете 
        <div class="popup_wr" style="display: inline;">
            <div class="popup_push" style="display: inline;">
                <span class="send_messege">задать интересующий Вас вопрос</span>
            </div>
            <div class="popup popup_question" onclick="$(this).find('.form_responce p').fadeOut();">
                <div class="popup_close"></div>
                <div class="clear"></div>
                <div class="post_form contacts_form">
                    <?php include('form_contacts.php') ?>
                </div>
                <div class="form_responce"></div>
                <div class="popup_arrow"></div>
            </div>
        </div>
        и служитель Церкви обязательно ответит на него.
    </div>
    <div class="catalog_product_comments">
        <?php if($articles > 0){
                foreach($articles as $article){ 
                    $date = strtotime($article['date']);
                    $article['date'] = strftime("%d.%m.%Y | %H:%M", $date);
        ?>
        <div class="catalog_product_comments_comment">
            <div style="margin: 0 0 20px 0;">
                <div class="user_data">
                    <?php echo $article['name'];?>
                    &nbsp;
                    <?php echo $article['date'];?>
                </div>
                <div class="clear"></div>
                <div class="comment_txt fool">
                    <?php echo $article['txt'];?>
                </div>
                <div class="clear"></div>
            </div>
            <?php if($article['answer']){?>
            <div>
                <div class="user_data">
                    <a href="<?php echo '/about_us/structure/show/'.$article['url'];?>"><?php echo $article['fio'];?></a>
                    &nbsp;
                    <?php 
                        $answer_date = strtotime($article['answer_date']);
                        $article['answer_date'] = strftime("%d.%m.%Y | %H:%M", $answer_date);
                        echo $article['answer_date'];
                    ?>
                </div>
                <div class="clear"></div>
                <?php 
                    $txt_class = '';
                    if($article['img']){
                    $txt_class = ' last ';
                ?>
                    <div class="comments_avatar">
                        <img src="<?php echo $config['url']['upload']?>/structure/icon_<?php echo $article['img'];?>" width="50"/>
                    </div>
                <?php }?>
                <div class="comment_txt <?php echo $txt_class?>" style="color: #ffffff;">
                    <?php echo $article['answer'];?>
                </div>
                <div class="clear"></div>
            </div>
            <?php }else{?>
                <div><span style="color: #ffffff;">Ответ на вопрос будет дан в ближайшее время!</span></div>
            <?php }?>
            <div class="clear"></div>
        </div>
          <?php }?>
        <?php }?>
        <div class="clear"></div>
    </div><!--end .catalog_product_comments-->
    <div class="clear"></div>
</div><!--end .faq-->