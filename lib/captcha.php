<?php
    if($_REQUEST['refresh_captcha']){
        require_once ('config.php');
        require_once ('connect_db.php');
        session_start();
//        echo session_id();
    }
    
    //удаляет файл $filename из папки $directory
    //==============================================================================
    function delete_file($directory,$filename){ 
        // открываем директорию (получаем дескриптор директории) 
        $dir = opendir($directory); 

        // считываем содержание директории 
        while(($file = readdir($dir))){ 
                  // Если это файл и он равен удаляемому ... 
          if((is_file("$directory/$file")) && ("$directory/$file" == "$directory/$filename")){ 
            // ...удаляем его. 
            unlink("$directory/$file"); 

             // Если файла нет по запрошенному пути, возвращаем TRUE - значит файл удалён. 
            if(!file_exists($directory."/".$filename)) return $s = TRUE; 
          } 
        } 
        // Закрываем дескриптор директории. 
        closedir($dir); 
    } 
    // проверяем версию библиотеки GD
    //================================================================================
    function gdVersion() {
        ob_start();
        phpinfo(8);
        $phpinfo=ob_get_contents();
        ob_end_clean();
        $phpinfo=stristr($phpinfo,"gd version");
        $phpinfo=stristr($phpinfo,"version");

        $end=strpos($phpinfo,"</tr>");
        if ($end) $phpinfo=substr($phpinfo,0,$end);
        $phpinfo=strip_tags($phpinfo);

        if (ereg(".*([0-9]+)\.([0-9]+)\.([0-9]+).*", $phpinfo, $r)) {
            $phpinfo=$r[1].".".$r[2].".".$r[3];
            }
        else $phpinfo=0;

        return($phpinfo);
    }

    // Функция генерации капчи
    // возвращает код капчи
    //================================================================================
    function generate_captcha_code($chars,$length) { 

        $numChars = strlen($chars); // Узнаем, сколько у нас задано символов
        $str = '';
        for ($i = 0; $i < $length; $i++) {
            $str .= substr($chars, rand(1, $numChars) - 1, 1);
        } // Генерируем код

        // Возвращаем полученный код
        return $str;
    }
    // Функция генерации капчи
    // возвращает картинку с кодом капчи
    //================================================================================
    function generate_captcha($code,$bg) { // $code - код нашей капчи, который мы укажем при вызове функции
        global $config;

        $font_path = $config['path']['root'].'/fonts/';

    // Шрифты для капчи. Задавать можно сколько угодно, они будут выбираться случайно
        $font["family"] = "georgia.ttf"; // Имя шрифта.
        $font["size"] = rand(14, 24); // Размер в pt
    // Накладываем текст капчи
        $x = rand(10, 20);
        for ($i = 0; $i < strlen($code); $i++) {
            $letter = substr($code, $i, 1);
            $color = imagecolorallocate($bg, rand(0, 255), rand(0, 255), rand(0, 255)); // Опять случайный цвет. Уже для текста.
            imagettftext($bg, $font["size"], rand(-30,30), $x, rand(20,40), $color, $font_path.$font["family"], $letter);
            $x+=rand(15,25);
        }

        return $bg;
    }
    // Функция генерации капчи
    // возвращает картинку с кодом капчи
    //================================================================================
    function generate_captcha_bg()  // генерирует картинку 4х значным кодом $pNumb
    {
      // задаем некоторые величины
      $lImgWidth  = 100;         // ширина картинки
      $lImgHeight = 50;          // высота картинки
      $lGradNum = rand(5, 10);   // кол-во градиентов (случайно герерируем)
      $lGradStep = round($lImgWidth / $lGradNum); // длинна одного градиента в пикселах
      // создаем изображение или прерываем работу скрипта в случае ошибки 
      $lImg = imagecreatetruecolor($lImgWidth, $lImgHeight) or die('Cannot create image');
      // сделаем градиентную заливку
      $R_end = rand(150, 255);  // здесь цвета (RGB) генерируются из диапазона 150-255, чтобы градиент был более светлым
      $G_end = rand(150, 255);  // а то если брать с 0-255, то текст на таком фоне трудно различим (чаще даже неразличим совсем :)) )
      $B_end = rand(150, 255);
      $X = 0;
      while ($X < $lImgWidth)
      {
        $R_beg = $R_end;
        $G_beg = $G_end;
        $B_beg = $B_end;
        $G_end = rand(150, 255); // генерируем следующий цвет для градиента
        $R_end = rand(150, 255);
        $B_end = rand(150, 255);
        $R_step = ($R_end - $R_beg) / $lGradStep; // определяем величину шага изменения цвета в текущем градиенте для каждой составляющей цвета (RGB)
        $G_step = ($G_end - $G_beg) / $lGradStep;
        $B_step = ($B_end - $B_beg) / $lGradStep;
        for ($i = 0; $i < $lGradStep && $X < $lImgWidth; $i++, $X++) // зарисовываем градиентными линиями промежуток м/у текущими 2-я цветами градиента
        {
          $lColor = imageColorAllocate($lImg, $R_beg + $i * $R_step, $G_beg + $i * $G_step, $B_beg + $i * $B_step);
          imageline($lImg, $X, 0, $X, $lImgHeight, $lColor);
        }  
      }
      return $lImg;
    }

    $hash = sha1(time());
    $captcha_value = generate_captcha_code($hash, 4);
//    можем каждый раз генерировать фон    
//    $captcha_bg = generate_captcha_bg();
    $bg_rand = rand(1, 20);
    $captcha_bg = imagecreatefrompng($config['path']['root'].'/upload/captcha/background/'.$bg_rand.'.png');
    $captcha = generate_captcha($captcha_value,$captcha_bg);
    $_SESSION['hash'] = $hash;
    
    if(!isset($_SESSION['id'])){
        $_SESSION['id'] = session_id();
        $query =  "INSERT INTO `captcha` (`session`,`captcha`,`hash`)";
        $query .= " VALUES ('".$_SESSION['id']."','".$captcha_value."','".$hash."')";
        mysql_query($query);
    }else{
        $query =  "UPDATE `captcha` SET `captcha`='".$captcha_value."',`hash`='".$hash."'";
        $query .= " WHERE `session`='".$_SESSION['id']."'";
        mysql_query($query);

    }
    
    imagepng($captcha, $img_path = $config['path']['upload'].'/captcha/img/'.$hash.'.png');
    imagedestroy($captcha);

?>
<?php if($_REQUEST['refresh_captcha']){
        ob_start();
?>
        <img id="capcha-image" width="100" height="50" alt="" src="<?php echo $config['url']['upload'];?>/captcha/img/<?php echo $hash?>.png" />
<?php   $responce['.captcha_img_wr']['data'] = ob_get_contents();
        ob_end_clean();
        echo json_encode($responce);
      } 
?>

