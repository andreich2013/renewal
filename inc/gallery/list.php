<script type="text/javascript">
    hs.graphicsDir = '/highslide/graphics/';
    hs.align = 'center';
    hs.transitions = ['expand', 'crossfade'];
    hs.wrapperClassName = 'dark borderless floating-caption';
    hs.fadeInOut = true;
    hs.dimmingOpacity = .01;
    hs.showCredits = false;

    // Add the controlbar
    if (hs.addSlideshow) hs.addSlideshow({
        //slideshowGroup: 'group1',
        interval: 5000,
        repeat: true,
        useControls: true,
        fixedControls: 'fit',
        overlayOptions: {
            opacity: .6,
            position: 'bottom center',
            hideOnMouseOut: true
        }
    });
</script>
<script type="text/javascript">
    $(document).ready(function() {
        Controller.pages.gallery.init();
    });
</script>
<h1 class="content_right_title esenin">Фотогалерея</h1>
<?= $model['html']['filter'] ?>
<div class="gallery clearfix">
    <?php foreach($model['list'] as $item) { ?>
        <div class="photo">
            <a name="sync" href="<?= $URL_UPLOAD . '/gallery/' . $item['img'] ?>" class="highslide" onclick="return hs.expand(this)">
                <img src="<?= $URL_UPLOAD . '/gallery/thumbs/' . $item['img'] ?>"/>
            </a>
        </div>
    <?php } ?>
</div>
<?= $model['html']['pagination'] ?>

