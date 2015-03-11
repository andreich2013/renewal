<?php
        $lows = $db->select(array(
            'table' => 'about_jesus',
            'where' => array(
                'title' => 'spiritual_low'
            ),
        ));
        $article = $db->select(array(
            'table' => 'about_jesus',
            'where' => array(
                'title' => 'about_jesus'
            ),
            "limit" => 1,
        ));
        $phones = $db->select(array(
            'table' => 'static',
            'where' => array(
                'title' => 'phones'
            ),
            "limit" => 1,
        ));
?>
<h1 class="content_right_title esenin">Об Иисусе</h1>
<div class="content_right_essence clearfix">
    <div class="jesus_history txt">
        <?php if($article[0]['img1']){ ?>
            <img style="float: left;" src="<?php echo $URL_UPLOAD . '/about_jesus/' . $article[0]['img1'];?>"/>
        <?php } ?>
        <?php if($article[0]['img2']){ ?>
            <img style="float: right;" src="<?php echo $URL_UPLOAD . '/about_jesus/' . $article[0]['img2'];?>"/>
        <?php } ?>
        <?= $article[0]['txt'] ?>
    </div>
    <h3 class="about_us_title georgia">Четыре духовных закона</h3>
    <div class="tabs clearfix">
        <input type="radio" name="tabs" checked="checked" id="tab-1" />
        <input type="radio" name="tabs" id="tab-2" />
        <input type="radio" name="tabs" id="tab-3" />
        <input type="radio" name="tabs" id="tab-4" />
        <div class="tabs-nav clearfix">
            <label for="tab-1" class="bg-transparent georgia">
                Закон первый
            </label>
            <label for="tab-2" class="bg-transparent georgia">
                Закон второй
            </label>
            <label for="tab-3" class="bg-transparent georgia">
                Закон третий
            </label>
            <label for="tab-4" class="bg-transparent georgia">
                Закон четвертый
            </label>
        </div>
        <div class="tabs-panel bg-transparent txt clearfix">
            <?php foreach($lows as $key => $item){?>
                <div data-id="tab-<?= $key+1 ?>" class="tab">
                    <?php if($item['img1']){ ?>
                        <img class="spiritual_low" src="<?php echo $URL_UPLOAD . '/about_jesus/' . $item['img1'];?>"/>
                    <?php } ?>
                    <?php echo $item['txt'];?>   
                </div>
            <?php }?>
        </div>
    </div>
    <div class="feedback">
        <p>
            Обязательно найдите поместную Церковь в ближайшем к Вам насленном пункте. Искренне желаем Вам, чтобы вы обрели семью в Господе в виде поместной Церквию. Связаться с нами можно, <a name="sync" href="mailto:<?= $config['e-mail'] ?>" class="send_messege">написав нам сообщение</a> или позвонив нам по телефонам <?= $phones[0]['value1']?>, <?= $phones[0]['value2']?>
        </p>
    </div>
</div>