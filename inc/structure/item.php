<?php $item = $this->model['item'][0] ?>
<div class="pathway">
    <?= $model['html']['breadcrumbs'] ?>
</div>
<div class="servant_about txt">
    <?php if($item['img']) {?>
    <div class="avatar bg-transparent clearfix">
        <img src="<?= $URL_UPLOAD . '/structure/fool_' . $item['img'] ?>"/>
    </div>
    <?php } ?>
    <?= $item['about_person'] ?>
</div>
