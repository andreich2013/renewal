<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
<link rel="icon" href="/favicon.ico" type="image/x-icon"/>

<link type="text/css" rel="stylesheet" href="/css/style.css"/>
<link type="text/css" rel="stylesheet" href="/highslide/highslide.css"/>
<link type="text/css" rel="stylesheet" href="/css/jquery.plugins.css"/>
<link type="text/css" rel="stylesheet" href="/css/lib.css"/>

<title><?php echo $title;?></title>

<script type="text/javascript" src="/js/jquery-1.7.2.min.js"></script>

<script type="text/javascript">
    var URL_ROOT = '<?php echo $URL_ROOT;?>',
        TOUCH = !!('ontouchstart' in window) ||
                !!(('msMaxTouchPoints' in window.navigator) && !('onmouseover' in window));
        variables = {
            path_root: URL_ROOT, // путь к корню
            title: '<?php echo $title;?>'
        },
        
        config = {
            url: {
                sync: '/lib/core_ajax.php',
                captcha: '/lib/captcha.php',
                filter: '/inc/filter.php'
            }
        };
<?php if($ajax){?>  
    var params = {
            variables: variables,
            change_page: "1",
            href: window.location.href.substr(URL_ROOT.length),
            title: variables.title
        };
    
    $(document).ready(function() {
        history.replaceState({params: params}, params.title, params.href);
    });
<?php }?>
</script>

<script type="text/javascript" src="/highslide/highslide-full.packed.js"></script>
<script type="text/javascript" src="/js/jquery.plugins.min.js"></script>
<script type="text/javascript" src="//vk.com/js/api/openapi.js?78"></script>
<script type="text/javascript" src="/js/test/lib.js"></script>
<?php if($ajax){?>
<script type="text/javascript" src="/js/lib_start.js"></script>
<?php }?>
<script type="text/javascript" src="/js/start.js"></script>