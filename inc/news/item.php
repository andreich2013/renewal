<?php $item = $model['item'][0]; ?>
<div class="pathway">
    <?= $model['html']['breadcrumbs'] ?>
</div>
<div class="news clearfix">
    <?php if($item['video']) {?>
        <span class="img">
            <iframe width="230" height="173" src="<?= $item['video'] ?>" frameborder="0" allowfullscreen></iframe>
        </span>
    <?php }else{ ?>
        <?php if(!empty($item['img'])) { ?>
           <script type="text/javascript">
               hs.graphicsDir = '/highslide/graphics/';
               hs.wrapperClassName = 'borderless';
               hs.align = 'center';
               hs.transitions = ['expand', 'crossfade'];
               hs.dimmingOpacity = .01;
               hs.showCredits = false;
           </script>
           <span class="img">
               <a name="sync" href="<?= $URL_UPLOAD . '/news/real_' . $item['img'] ?>" class="highslide" onclick="return hs.expand(this)">
                   <img src="<?= $URL_UPLOAD . '/news/normal_' . $item['img'] ?>"/>
               </a>
           </span>
        <?php }?>
    <?php }?>

    <div class="news_description clearfix">
        <h1 class="news_title georgia"><?= $item['title'] ?></h1>
        <span class="news_date"><?= date("d.m.Y", strtotime($item['date'])) ?></span>
        <div class="txt"><?= $item['txt'] ?></div>
    </div>
</div>
<?php include('/inc/comments.php'); ?>