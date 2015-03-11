<script type="text/javascript">
    $(document).ready(function(){  
        var $carousel = $('.history-carousel .jcarousel-container');
        
        $carousel.jcarousel({
            vertical: true,
            wrap: 'circular',
            transitions: {
                transforms: true,
                transforms3d: true,
                easing: 'ease'
            }
        });
        
        tmp.jcarousels.push($carousel);
        
        $carousel.jcarouselAutoscroll({
            interval: 5000
        });
        
        $('.jcarousel-prev').jcarouselControl({
            target: '-=1'
        });

        $('.jcarousel-next').jcarouselControl({
            target: '+=1'
        });
    });
    //<![CDATA[
    hs.graphicsDir = '/highslide/graphics/';
    hs.wrapperClassName = 'borderless';
    hs.align = 'center';
    hs.transitions = ['expand', 'crossfade'];
    hs.dimmingOpacity = .01;
    hs.showCredits = false;
    //]]> 
</script>
<h1 class="content_right_title esenin">Наша История</h1>
<div class="colomn_left clearfix" style="width: 540px;">
    <div class="txt">
        <?= $model['item'][0]['txt1'] ?>
    </div>
</div>
<div class="colomn_right clearfix" style="width: 160px;">
    <div class="history-carousel jcarousel">
        <div class="jcarousel-container">
            <ul>
            <?php foreach($model['imgs'] as $item){?>
                <?php if(!empty($item['history_img'])) {?>
                    <li>
                        <a name="sync" href="<?= $URL_UPLOAD . '/history/' . $item['history_img'] ?>" class="highslide" onclick="return hs.expand(this)">
                            <img src="<?= $URL_UPLOAD . '/history/thumbs/' . $item['history_img'];?>" width="120" height="100"/>
                        </a>
                    </li>
                <?php }?>
            <?php }?>
            </ul>
        </div>
        <i class="fa fa-angle-up jcarousel-prev"></i>
        <i class="fa fa-angle-down jcarousel-next"></i>
    </div>
</div>