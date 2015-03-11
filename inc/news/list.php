<h1 class="content_right_title esenin">Новости</h1>
<?= $model['filter']['html'] ?>
<?php foreach($model['list'] as $item) { ?>
<div class="news clearfix">
    <?php if(!empty($item['img'])){?>
        <a class="img" href="<?= '/news/show/'.$item['url'] ?>">
            <img src="<?= $URL_UPLOAD ?>/news/normal_<?= $item['img'] ?>"/>
        </a>
    <?php }?>
    <div class="news_description clearfix">
        <span class="shot_info"><?= $item['video'] ? 'видео' : '' ?></span>
        <h3 class="news_title georgia">
            <a href="<?= '/news/show/'.$item['url'] ?>">
                <?= $item['title'] ?>
            </a>
        </h3>
        <span class="news_date"><?= date("d.m.Y", strtotime($item['date'])) ?></span>
        <div class="txt"><?= mb_substr($item['txt'], 0, 400) . '...' ?></div>
    </div>
</div>
<?php } ?>
<?= $model['html']['pagination'] ?>
