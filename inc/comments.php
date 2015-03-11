<?php if($article['vk_comments_id']){?>
<script type="text/javascript">
      VK.init({ apiId: <?php echo $article['vk_comments_id'];?>, 
                onlyWidgets: true
              });
</script>
<div class="comments">
    <div id="vk_comments"></div>
    <script type="text/javascript">
        VK.Widgets.Comments("vk_comments", 
                            {
                                limit: 5,
                                width: "720",
                                attach: false,
                                autoPublish: 0
                            }
                           );
    </script>
</div>
<?php }?>
