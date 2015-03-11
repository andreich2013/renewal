<script type="text/javascript">
    $(document).ready(function() {
        var el = document.getElementById("sortable-list");
            
        Sortable.create(el, {
            animation: 150,
            handle: '.fa-sort',
            group: {
                name: 'audio-player',
                pull: 'clone'
            }
        });
        
        _.each($(el).find("li"), function(item) {
            if(tmp.audioPlaylist.indexOf(item.dataset.id) !== -1) {
                item.dataset.inPlaylist = true;
            }
        });
        
    });
</script>
<h1 class="content_right_title esenin">Наше Аудио</h1>
<?= $model['filter']['html'] ?>
<ul id="sortable-list" class="audio-list">
    <?php foreach ($model['articles'] as $item) { ?>
        <?php $title = sprintf('%s &ndash; %s', $item['band'], $item['title'])?>
        <li data-id="<?= $item['id'] ?>" 
            data-title="<?= $item['title'] ?>" 
            data-band="<?= $item['band'] ?>" 
            data-time="<?= $item['time'] ?>" 
            data-mp3="<?= $item['mp3'] ?>" 
            data-ogg="<?= $item['ogg'] ?>">
                <a name="sync" target="_blank" href="<?= $URL_UPLOAD . '/audio/' . $item['mp3'] ?>">
                    <i class="fa fa-play"></i>
                </a>
                <i class="fa fa-sort"></i>
                <i class="fa fa-toggle"></i>
                <span class="item-content">
                    <span class="time"><?= $item['time'] ?></span>
                    <span class="title" title="<?= $title ?>"><?= $title ?></span>
                </span>
        </li>
    <?php } ?>
</ul>
<?= $model['html']['pagination'] ?>
