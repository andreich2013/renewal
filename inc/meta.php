<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<!--<meta http-equiv-"X-UA-Compatible" content="IE=9"/>-->

<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"/>
<link rel="icon" href="/favicon.ico" type="image/x-icon"/>

<link type="text/css" rel="stylesheet" href="<?php path_root()?>/production/style.css"/>
<?php if(strstr($_SERVER['HTTP_USER_AGENT'], 'Opera') == true){?>
<link type="text/css" rel="stylesheet" href="<?php path_root()?>/css/style_opera.css"/> 
<?php }?>
<!--[if lte IE 9]>
    <link type="text/css"rel="stylesheet"  href="<?php path_root()?>/css/style_ie9.css" />
<![endif]-->
<!--[if lte IE 8]>
    <link type="text/css"rel="stylesheet"  href="<?php path_root()?>/css/style_ie8.css" />
<![endif]-->
<!--[if lte IE 7]>
    <link type="text/css" rel="stylesheet" href="<?php path_root()?>/css/style_ie7.css" />
    <link type="text/css" rel="stylesheet" href="<?php path_root()?>/highslide/highslide-ie6.css" />
<![endif]-->

<title><?php echo $title;?></title>

<?php if($ajax){?>
    <?php if(strstr($_SERVER['HTTP_USER_AGENT'], 'MSIE 10') == true){?>

    <?php }else if(strstr($_SERVER['HTTP_USER_AGENT'], 'MSIE') == true){?>
<script type="text/javascript" src="<?php path_root()?>/js/history.min.js?type=/&redirect=true&basepath=/"></script>
    <?php }?>
<?php }?>

<script type="text/javascript">
    variables = {
        path_root: '<?php echo path_root();?>', // путь к корню
        title: '<?php echo $title;?>'
    }
    history_href_0 = window.location.toString().replace('/#/','/');
    history_href = history_href_0.substr(variables.path_root.length);
<?php if($ajax){?>  
    params = {
        "variables": variables,
        "change_page": "1",
        "href": history_href,
        "title": variables.title
    }
    first_state = {
        "params": params
    }
<?php }?>
</script>
<script type="text/javascript" src="//vk.com/js/api/openapi.js?78"></script>
<script type="text/javascript" src="<?php path_root()?>/production/script.js"></script>
<?php if($ajax){?>
<script type="text/javascript">
    $(document).ready(function(){
        // хакаем ie при старте, чтобы подгрузить нужную страницу
        if(window.location.toString().indexOf('/#/') != -1){
            first_state.params["hash"] = window.location.hash.substr(1);
            ajax_load(variables.path_root+'/lib/core_html4.php','POST',first_state.params);
        }
        <?php if(strstr($_SERVER['HTTP_USER_AGENT'], 'MSIE 10') == true){?>
               
        <?php }else if(strstr($_SERVER['HTTP_USER_AGENT'], 'MSIE') == true){?>
           if((window.location.toString() == variables.path_root) || (window.location.toString() == (variables.path_root+'/'))){
                first_state.params["hash"] = '/';
                ajax_load(variables.path_root+'/lib/core_html4.php','POST',first_state.params);
           }
        <?php }?>
        history.replaceState(first_state, first_state.params.title, first_state.params.href);
    });
</script>
<?php }?>
<script type="text/javascript">
    function isOldIe() {
        return ($.browser.msie && $.browser.version <= 8.0) ? true : false;
    }
</script>
<?php if((strstr($_SERVER['HTTP_USER_AGENT'], 'MSIE 8') == true) ||
         (strstr($_SERVER['HTTP_USER_AGENT'], 'MSIE 7') == true)){?>
<script type="text/javascript" src="<?php path_root()?>/js/test/jquery.jplayer.js"></script>
<?php }?>