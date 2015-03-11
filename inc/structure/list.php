<div class="pathway">
    <?= $model['html']['breadcrumbs'] ?>
</div>
<h1 class="content_right_title esenin">Наши служители</h1>
<div class="servants clearfix">
<?php foreach ($model['list'] as $item) { ?>
    <div class="servant popup_wr clearfix">
        <div class="popup_push">
            <a href="<?= '/about/structure/show/' . $item['url'] ?>">
                <img src="<?= $URL_UPLOAD . '/structure/normal_' . $item['img'] ?>"/>
                <?= $item['position'] ?>
            </a>
        </div>
        <?php if(!empty($item['description'])){?>
        <div class="popup bottom">
            <div class="txt"><?= $item['description']?></div>
        </div>
        <?php }?>
        <div class="clear"></div>
    </div>
<?php }?>
</div>
<?= $model['html']['pagination'] ?>