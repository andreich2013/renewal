<?php
    $articles = $db->select(array(
        'table' => 'video',
        'where' => array(
            'OR' => array(
                'url' => $model['params']['video'],
                'id' => intval($model['params']['video']),
            ),
        ),
        'limit' => 1,
    ));
?>
<script type="text/javascript">
    videoPlayer.loadVideo({
        url: '<?php echo $articles[0]['url'];?>',
        address: '<?php echo $articles[0]['adress'];?>',
        comments: '<?php echo $articles[0]['vk_comments_id'];?>',
        title: '<?php echo $articles[0]['title'];?>'
    });
</script>
