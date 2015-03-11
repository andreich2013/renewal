<?php   // обработка формы контактов
    
    $referer = $_SERVER['HTTP_REFERER'];
    if(strpos($referer,'/#/')){
        $referer = str_replace('/#/', '/', $referer);
    }
    $referer = substr($referer,  strlen($config['url']['root']));

    switch($referer){
        case '/contacts': 
            $referer_page = 'contacts.php';
            $messeges_table = 'contacts_messeges';
            $answer = '<p>Сообщение отправлено успешно!</p>';
            break;
        case '/about_jesus': 
            $referer_page = 'contacts.php';
            $messeges_table = 'contacts_messeges';
            $answer = '<p>Сообщение отправлено успешно!</p>';
            break;
        case '/faq': 
            $referer_page = 'faq.php';
            $messeges_table = 'faq';
            $answer = '<p>Ваш вопрос появится после модерации</p>';
            break;
    }
        
    if(!$ajax){
        
        
        $parametrs['name']['data'] = $_REQUEST['name'];
        $parametrs['name']['required'] = 1;
        $parametrs['name']['title'] = 'Имя';
        
        $parametrs['phone']['data'] = $_REQUEST['phone'];
        $parametrs['phone']['required'] = 0;
        $parametrs['phone']['title'] = 'Телефон';
        
        $parametrs['email']['data'] = $_REQUEST['email'];
        $parametrs['email']['required'] = 1;
        $parametrs['email']['title'] = 'E-mail';
        
        $parametrs['txt']['data'] = $_REQUEST['txt'];
        $parametrs['txt']['required'] = 1;
        $parametrs['txt']['title'] = 'Сообщение';
        
        $parametrs['captcha_input']['data'] = $_REQUEST['captcha_input'];
        $parametrs['captcha_input']['required'] = 1;
        $parametrs['captcha_input']['title'] = 'Сообщение';

        $errors = isRequired($parametrs);
            
        if($errors){
            include($referer_page);
            $answer = false;
            return;
        }
        
        $params = isValid($parametrs);
        
        if($params['errors']){
            $errors = $params['errors'];
            include($referer_page);
            $answer = false;
            return;
        }
        
        $data = array(
            'name' => $params['name'],
            'phone' => $params['phone'],
            'email' => $params['email'],
            'txt' => $params['txt'],
        );

        insert_db($messeges_table, $data);
        
        include('form_redirect.php');
//            echo '<pre>';
//            print_r($_REQUEST);
//            echo '</pre>';
//            exit();
    }else{

        if(!$_REQUEST['change_page']){
    
            $errors = isRequired($parametrs);

            if($errors){
                include('form_contacts.php');
                $answer = false;
                return;
            }

            $params = isValid($parametrs);
            
//            echo '<pre>';
//            print_r($parametrs);
//            echo '</pre>';
//            exit();

            if($params['errors']){
                $errors = $params['errors'];
                include('form_contacts.php');
                $answer = false;
                return;
            }

            $data = array(
                'name' => $params['name'],
                'phone' => $params['phone'],
                'email' => $params['email'],
                'txt' => $params['txt'],
            );
            
            insert_db($messeges_table, $data);
            
            include('form_contacts.php');
        }
    }
?>

