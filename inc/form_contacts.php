<?php 
    include($config['path']['root'].'/lib/captcha.php');
    
    if('faq' == $page['page']['page']){
        $label_txt = 'Вопрос:';
    }else{
        $label_txt = 'Сообщение:';
    }
?>
<form action="/messeges" method="post" enctype="multipart/form-data">
    <fieldset>
        <label for="name" class="required">Имя:</label>
        <input type="text" size="255" required name="name" id="name" class="form_elements" value="<?php if($errors){ echo $parametrs['name']['data'];}?>"/>
        <?php if($errors['name']){ ?>
            <span class="form_errors"><?php echo $errors['name'];?></span>
        <?php  }?>
        <label for="phone" class="optional">Телефон:</label>
        <input type="text" size="255" name="phone" id="phone" class="form_elements" value="<?php if($errors){ echo $parametrs['phone']['data'];}?>"/>
        <?php if($errors['phone']){ ?>
            <span class="form_errors"><?php echo $errors['phone'];?></span>
        <?php  }?>
        <label for="email" class="required">E-mail:</label>
        <input type="text" size="255" required name="email" id="email" class="form_elements" value="<?php if($errors){ echo $parametrs['email']['data'];}?>"/>
        <?php if($errors['email']){ ?>
            <span class="form_errors"><?php echo $errors['email'];?></span>
        <?php  }?>
        <label for="txt" class="required"><?php echo $label_txt;?></label>
        <textarea name="txt" required id="txt" class="form_elements"><?php if($errors){ echo $parametrs['txt']['data'];}?></textarea>
        <?php if($errors['txt']){ ?>
            <span class="form_errors"><?php echo $errors['txt'];?></span>
        <?php  }?>
        <div class="captcha"><label style="display: block;margin: 0 0 5px 0;" for="captcha_input" class="required">Введите код:</label>
            <div class="captcha_img_wr">
                <img id="capcha-image" width="100" height="50" alt="" src="<?php echo $config['url']['upload'];?>/captcha/img/<?php echo $hash?>.png" />
            </div>
            <input type="text" size="255" required name="captcha_input" id="captcha-input" value="" class="form_elements">
            <a class="refresh_captcha" href="javascript:void(0);" name="sync" onclick="refresh_captcha(this);">
                <img src="<?php echo $config['url']['root'];?>/img/refresh.png"/>
            </a>
            <div class="clear"></div>
            <?php if($errors['captcha_input']){ ?>
                <span class="form_errors"><?php echo $errors['captcha_input'];?></span>
            <?php  }?>
        </div>
        <div class="clear"></div>
        <input type="submit" name="submit" id="submit" value="Отправить" class="save_but button">
    </fieldset>
</form>