<div class="pathway">
    <?= $model['html']['breadcrumbs'] ?>
</div>
<h1 class="content_right_title esenin">Наши служения</h1>
<div class="list clearfix">
    <?php foreach ($model['list'] as $item) { ?>
    <div class="list_article clearfix">
        <img src="<?= $URL_UPLOAD ?>/ministries/normal_<?= $item['img'] ?>"/>
        <div class="list_article_txt clearfix">
            <h3 class="list_article_title georgia"><?= $item['title_show'] ?></h3>
            <p class="parametr clearfix">
                <span>Лидер:</span>
                <?php if(array_key_exists($item['leader'], $model['leaders'])) { ?>
                    <a href="<?= '/about/structure/show/' . $item['leader'] ?>"><?= $model['leaders'][$item['leader']] ?></a>
                <?php }else{ ?>
                    <span class="value"><?= $item['leader_name'] ?></span>
                <?php } ?>
            </p>
            <div class="txt"><?= $item['description'] ?></div>
        </div>
    </div>
    <?php } ?>
</div>
<?= $model['html']['pagination'] ?>
