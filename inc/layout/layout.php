<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <?php require_once('/inc/layout/head.php');?>
    </head>
    <body>
        <div id="wrapper">
            <div class="about_jesus">
                <span>!</span>
                <a href="/about_jesus">
                    Узнать об Иисусе
                </a>
            </div>    
            <div id="header">
                <?php require_once('/inc/layout/header.php');?>
            </div><!--end #header-->
            <div id="content">
                <div class="container clearfix">
                    <div class="content_left clearfix">
                        <?php include ('/inc/layout/left_side.php')?>
                    </div>
                    <div class="content-right clearfix">
                        <div class="content-preloader"></div>
                        <div id="content-right" class="content_right_essence clearfix">
                            <?=  $model['html']['content'] ?>
                        </div>
                        <script type="text/javascript">
                            document.title = '<?= $model['title'] ?>';
                        </script>
                    </div>
                </div><!--end .container-->
            </div><!--end #content-->
            <div id="audioplayer" class="player-wrapper player-hidden clearfix" data-is-playlist-hidden="false">
                <div class="player-container clearfix">
                    <div class="player-drag-handle" draggable="true"></div>
                    <div class="player-controls">
                        <i class="fa fa-player-play" title="play" ></i>
                        <i class="fa fa-stop" title="stop"></i>
                        <i class="fa fa-fast-backward" title="previous"></i>
                        <i class="fa fa-fast-forward" title="next"></i>
                        <i class="fa fa-toggle-playlist" title="toggle playlist"></i>
                        <i class="fa fa-volume-off" title="minimum"></i>
                        <div id="jp_volume_bar">
                            <div id="jp_volume_bar_value"></div>
                        </div>
                        <i class="fa fa-volume-up" title="maximum"></i>
                        <i class="fa fa-close" title="close player"></i>
                    </div>
                    <div id="player-progress">
                        <div id="jp_progress_load_bar">
                            <div id="jp_progress_play_bar"></div>
                        </div>
                    </div>
                    
                    <div id="jp_playlist_message">
                        <div id="play_time"></div>
                        <div id="song_title"></div>
                        <div id="total_time"></div>
                    </div>
                </div>
                <div class="player-playlist">
                    <div class="playlist-container">
                        <ul id="audio-playlist"></ul>
                    </div>
                </div>
            </div>
        </div><!--end .wrapper-->
        <div id="footer" class="clearfix">
            <?php require_once('/inc/layout/footer.php');?>
        </div><!--end #footer-->
        <a name="sync" class="to-up" id="back-to-top" href="javascript:void(0);">
            <img src="/img/scroll_to_top.png" alt="" />
        </a>
        <div id="videoplayer" class="player-video-overlay player-hidden clearfix">
            <div class="player-video clearfix">
                <div class="clearfix">
                    <i class="fa fa-toggle-size"></i>
                    <i class="fa fa-close"></i>
                    <div id="player-video" class="player-video-container">
                        <!--<iframe width="560" height="315" frameborder="0" allowfullscreen></iframe>-->
                    </div>
                    <h3 class="player-video-title georgia"></h3>
                    <div id="vk_comments_video" class="hide"></div>
                </div>
<!--                <div class="player-playlist">
                    <div class="playlist-container">
                        <ul id="video-playlist"></ul>
                    </div>
                </div>-->
            </div>
        </div>
        <?php 
            if($model['params']['video']){
                include ('inc/layout/load_video.php');
            }
        ?>
        <input class="popup-helper" type="checkbox" id="popup-error-toggle"/>
        <div id="popup-error" class="popup">
            <label class="popup_close" for="popup-error-toggle">
                <i class="fa fa-close"></i>
            </label>
            <div class="txt">
                <h3>Error</h3>
                <p></p>
            </div>
        </div>
        <label class="popup-overlay" for="popup-error-toggle"></label>
    </body>
</html>