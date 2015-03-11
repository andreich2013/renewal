<script type="text/javascript">
    $(document).ready(function() {
//        App().views.video.init();
    });
</script>
<h1 class="content_right_title esenin">Наше Видео</h1>
<?php // echo $model['filter']['html'] ?>
<div class="post_form filter clearfix"></div>

<div id="page-container">
    <ul id="sortable-video-list" class="clearfix"></ul>
    <div class="block-preloader">
        <i class="fa fa-refresh"></i>
    </div>
</div>
<!--<ul id="sortable-video-list" class="clearfix">
    <?php foreach ($model['articles'] as $item) { // выводим элементы на страницу
                    $item['date'] = date("d.m.Y", strtotime($item['date']));
                    $img = $URL_UPLOAD . '/video/' . $item['img'];
    ?>
            <li class="file"
                data-id="<?= $item['id'] ?>" 
                data-url="<?= $item['url'] ?>"
                data-address="<?= $item['adress'] ?>"
                data-title="<?= $item['title'] ?>"
                data-time="<?= $item['time'] ?>"
                data-date="<?= $item['date'] ?>"
                data-img="<?= $img ?>"
                data-speaker="<?= $item['speaker'] ?>"
                data-shortInfo="<?= $item['short_info'] ?>">
                    <a name="sync" href="<?= $item['adress'] ?>" target="_blank">
                        <span class="video_title_wr" style="top: 0px;">
                            <span class="video_title table">
                                <span class="table-cell">
                                    <span class="video_short_info"><?= $item['short_info'] ?></span>
                                </span>
                                <span class="video_time"><?= $item['time'] ?></span>
                            </span>
                        </span>
                        <img src="<?= $img ?>"/>
                        <span class="video_title_wr">
                            <span class="table">
                                <span class="video_title table-cell">
                                    <span><?= $item['title'] ?></span>
                                </span>
                            </span>
                        </span>
                    </a>
            </li>
    <?php } ?>
</ul>-->
<?php // echo $model['html']['pagination'] ?>
