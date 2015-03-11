<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
<link rel="icon" href="/favicon.ico" type="image/x-icon"/>

<link type="text/css" rel="stylesheet" href="/font-awesome-4.2.0/css/font-awesome.min.css"/>
<link type="text/css" rel="stylesheet" href="/highslide/highslide.css"/>
<link type="text/css" rel="stylesheet" href="/css/main.css"/>

<title><?= $model['title'] ?></title>

<?php include('/inc/layout/templates.php') ?>

<script type="text/javascript" src="/js/libs/jquery/jquery-1.11.1.js"></script>
<script type="text/javascript" src="/js/libs/underscore/underscore.min.js"></script>

<script type="text/javascript" src="/js/app/App.js"></script>

<script type="text/javascript">
    var URL_ROOT = '<?= $URL_ROOT ?>',
        URL_UPLOAD = '<?= $URL_UPLOAD ?>',
        TOUCH = !!('ontouchstart' in window) ||
                !!(('msMaxTouchPoints' in window.navigator) && !('onmouseover' in window)),
        
        config = {
            async: '<?= $ajax ?>',
            youtube: {
                key: 'AIzaSyADTKQKKV8QNSE8mDYhEkD8hK2dN7LsQa8',
                channelId: 'UC5vGe88jWsVac3PcR5DNm2w'
//                channelId: 'UCZST5dyuJtJn9S_tubAcFwQ'
            },
            soundcloud: {
                clientID: 'ee49a924fd8cb00de50c13d883230867'
            },
            url: {
                index: '/index.php',
                sync: '/lib/core_ajax.php',
                captcha: '/lib/captcha.php',
                filter: '/lib/api/filter.php',
                cache: '/lib/api/cache.php'
            },
            reset: function() {
                tmp.jcarousels.forEach(function(item) {
                    item.jcarousel('destroy');
                });

                tmp.jcarousels = [];
            }
        },
        tmp = {
            jcarousels: [],
            audioPlaylist: [],
            videoPlaylist: []
        };
        
        App.URL_ROOT = URL_ROOT;
        App.URL_UPLOAD = URL_UPLOAD;
        App.TOUCH = TOUCH;
        App().config = config;
        App().tmp = tmp;
</script>

<script type="text/javascript" src="/js/app/api/history.js"></script>
<script type="text/javascript" src="/js/app/util/util.js"></script>
<script type="text/javascript" src="/js/app/util/observer.js"></script>
<script type="text/javascript" src="/js/app/util/ajax.js"></script>
<script type="text/javascript" src="/js/app/util/nav.js"></script>
<script type="text/javascript" src="/js/app/util/url.js"></script>
<script type="text/javascript" src="/js/app/util/search.js"></script>
<script type="text/javascript" src="/js/app/api/youtube.js"></script>
<script type="text/javascript" src="/js/app/views/filter.js"></script>
<script type="text/javascript" src="/js/app/views/main.js"></script>
<script type="text/javascript" src="/js/app/views/gallery.js"></script>
<script type="text/javascript" src="/js/app/views/video.js"></script>
<script type="text/javascript" src="/js/app/controllers/controller.js"></script>

<!--<script type="text/javascript" src="/js/test/lib.js"></script>-->
<script type="text/javascript" src="/highslide/highslide-full.packed.js"></script>
<script type="text/javascript" src="/js/jquery.plugins.min.js"></script>
<script type="text/javascript" src="/js/libs/sortable/Sortable.js"></script>
<script type="text/javascript" src="/js/test/jquery.drag_n_drop.js"></script>
<script type="text/javascript" src="/js/test/jquery.selectable.js"></script>
<script type="text/javascript" src="/js/test/player/jquery.playlist.js"></script>
<script type="text/javascript" src="/js/test/player/jquery.audioPlayer.js"></script>
<script type="text/javascript" src="/js/test/player/jquery.videoPlayer.js"></script>
<script type="text/javascript" src="//vk.com/js/api/openapi.js?78"></script>
<script type="text/javascript" src="/js/main.js"></script>