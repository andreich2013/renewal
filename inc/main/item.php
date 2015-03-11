<script type="text/javascript">
    $(document).ready(function() {
        App().views.main.init();
    });
</script>
<div class="colomn_left main_page clearfix">
    <img class="pastor" src="/img/pastor.jpg" alt="" />
    <div class="txt clearfix">
        <?= $model['greeting'][0]['txt1'] ?>
    </div>
</div>
<div class="colomn_right clearfix">
    <div class="menu_title">
        <p>Новости</p>
    </div>
    <div class="top-carousel jcarousel bg-transparent">
        <div class="jcarousel-container">
            <ul>
            <?php foreach($model['top'] as $item) { ?>
                <li>
                    <div>
                        <a href="<?= sprintf('news/show/%s', $item['url']) ?>">
                            <img src="<?= sprintf('%s/%s/big_%s', $URL_UPLOAD, $item['upload_dir'], $item['img']) ?>" 
                                 title="<?= $item['title'] ?>" 
                                 alt="" />
                        </a>
                    </div>
                </li>
            <?php }?>
            </ul>
        </div>
        <i class="fa fa-chevron-circle-left jcarousel-prev"></i>
        <i class="fa fa-chevron-circle-right jcarousel-next"></i>
        <div class="jcarousel-pagination"></div>
    </div>
</div>

