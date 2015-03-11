<?php
    global $href;
    if(!$_REQUEST['data']['add_list']){
        $page_name = $page['page']['page'];
    }
    
    if($_REQUEST['data']){
        $parametrs = $_REQUEST['data'];
    }

    // если запрос на категрию или подкатегорию добавим еще селект 
    if($parametrs['add_list']){
        require_once('../lib/config.php');
        require_once($config['path']['root'].'/lib/lib.php');
        
        $parametrs['value'] = isValid(array('value' => $parametrs['value']));

        if($parametrs['list_2']){
            
            $form_name = 'category';
            $list_title = 'категория';
            $list = "list_3";
            $this_number = 0;
            
        }
        if($parametrs['list_3']){
            
            $form_name = 'subcategory';
            $list_title = 'подкатегория';
            $this_number = 1;
        }
        
        $articles = get_db_data_where2('filter_categories','subordinate',$parametrs['value']['value']);
        $list_number = $this_number + 1;
        
        ob_start();?>
        <?php if($articles){?>
            <label for="<?php echo $form_name;?>"><?php echo $list_title;?></label>
            <select class="form_elements" name="<?php echo $form_name;?>" onchange='<?php if(!$parametrs['list_3']){?>
                                    var value = {
                                        "data": this.value
                                    };
                                    var params_data = {
                                          "add_list": "1",
                                          "<?php echo $list ?>": "1",
                                          "value": value,
                                          "referer": "<?php echo $page_name?>"
                                    };
                                    ajax_load(variables.path_root+"/inc/filter.php","POST",{"data": params_data});
                              <?php }?>'>
                <option value="all_options" selected>Все</option>
                <?php foreach($articles as $article){?>
                <option value="<?php echo $article['value']?>"><?php echo $article['title']?></option>
                <?php }?>
            </select>
        <?php }else{?>
            <!--<span class="form_errors">Произошла ошибка! Пожалуйста, перезагрузите страницу, и попробуйте снова</span>-->
        <?php }?>
        <?php   
                $responce['.filter_section > .filter-block:gt('.$this_number.')']['data'] = '';
                $responce['.filter_section > .filter-block:eq('.$list_number .')']['data'] = ob_get_contents();
        ob_end_clean();

        echo json_encode($responce);
        
    }else{ // если запрос на добавление элементов
            
        if($parametrs){
            
            $parametrs = isValid($parametrs);
            
            $section_for_categories = $parametrs['section'];
            $category_for_subcategories = $parametrs['category'];
            $subcategory = $parametrs['subcategory'];
            $date_start = $parametrs['date_start'];
            $date_end = $parametrs['date_end'];
        }
    
    $sections = get_db_data('filter_sections');
?>        
<script type="text/javascript">
    $(document).ready(function(){
        $('.filter_date input[type="text"]').mask('99-99-9999');
    })    
</script>
<div class="post_form filter">
    <form action="<?php echo $href;?>">
        <fieldset>
            <p style="line-height: 78px; height: 52px;">Выбрать:</p>
            <div class="filter_section">
                <div class="filter-block">
                    <label for="section">раздел</label>
                    <select name="section" class="form_elements" onchange='var value = {
                                        "data": this.value
                                      };
                                      var params_data = {
                                            "add_list":"1",
                                            "list_2":"1",
                                            "value": value,
                                            "referer": "<?php echo $page_name?>"
                                      };
                                      ajax_load(variables.path_root+"/inc/filter.php","POST",{"data": params_data})'>
                        <?php $i = 0;
                              foreach($sections as $section){
                                  if('1' == $section[$page_name]){
                                      $i++;
                                      // актуальный раздел - если $section_for_categories == false
                                      // тогда ставим актуальным первый раздел
                                      if($section_for_categories == false){
                                        if($i == 1){
                                            $section_for_categories = $section['value'];
                                        }
                                      }                                   
                        ?>
                            <option <?php if($section_for_categories == $section['value']){echo 'selected';}?> value="<?php echo $section['value']?>"><?php echo $section['title']?></option>
                            <?php }?>
                        <?php }?>
                    </select>
                </div>
                <div class="filter-block">
                <?php if($section_for_categories){
                            $categories = get_db_data_where2('filter_categories','subordinate',$section_for_categories);
                            
                            if($categories){
                                
                                $form_name = 'category';
                                $list_title = 'категория';
                                $this_number = 1;
                                $list_number = $this_number + 1;
                            
                ?>
                    <label for="<?php echo $form_name;?>"><?php echo $list_title;?></label>
                    <select name="<?php echo $form_name;?>" class="form_elements" onchange='var value = {
                                          "data": this.value
                                      };
                                      var params_data = {
                                          "add_list": "1",
                                          "list_3": "1",
                                          "value": value,
                                          "referer": "<?php echo $page_name?>"
                                      };
                                      ajax_load(variables.path_root+"/inc/filter.php","POST",{"data": params_data});
                                      '>
                        <option value="all_options">Все</option>
                        <?php $i = 0;
                              foreach($categories as $article){
                                      $i++;
                                      // актуальная категория - если $category_for_subcategories == false
                                      // тогда ставим актуальной первую категорию
                                      if($category_for_subcategories == false){
                                          if($i == 0){
                                              $category_for_subcategories = $article['value'];
                                          }
                                      }?>
                        <option <?php if($category_for_subcategories == $article['value']){echo 'selected';}?> value="<?php echo $article['value']?>"><?php echo $article['title']?></option>
                        <?php }?>
                    </select>
                      <?php }?>
                <?php }?>
                </div>
                <div class="filter-block">
                <?php if($category_for_subcategories){
                            // если есть для категории
                            $subcategories = get_db_data_where2('filter_categories','subordinate',$category_for_subcategories);
                            // выбирем субкатегории, если есть  - сформирует еще один селект
                            if($subcategories){
                                
                                $form_name = 'subcategory';
                                $list_title = 'подкатегория';
                                $this_number = 2;
                                $list_number = $this_number + 1;
                            
                ?>
                    <label for="<?php echo $form_name;?>"><?php echo $list_title;?></label>
                    <select name="<?php echo $form_name;?>" class="form_elements" onchange=''>
                        <option value="all_options" selected>Все</option>
                        <?php foreach($subcategories as $article){
                                      $i++;
                                      // актуальная субкатегория - если $subcategory == false
                                      // тогда ставим актуальной первую субкатегорию
                                      if($subcategory == false){
                                          if($i == 0){
                                              $subcategory = $article['value'];
                                          }
                                      }?>
                        <option <?php if($subcategory == $article['value']){echo 'selected';}?> value="<?php echo $article['value']?>"><?php echo $article['title']?></option>
                        <?php }?>
                    </select>
                      <?php }?>
                <?php }
                    if(!$date_start){
                        $date_start = '';
                    }
                    if(!$date_end){
                        $date_end = '';
                    }
                ?>
                </div>
            </div>
            <div class="filter_date">
                <div class="filter-block last">
                    <span>период</span>
                    c&nbsp;
                    <input name="date_start" class="form_elements" tabindex="1" type="text" size="10" value="<?php echo $date_start;?>"/>
                    по&nbsp;
                    <input name="date_end" class="last form_elements"  tabindex="1" type="text" size="10" value="<?php echo $date_end;?>"/>
                </div>
            </div>
            <!--<div class="clear"></div>-->
            <input type="submit" value="Показать" onclick='<?php if($ajax){?>filter_load(this);return false;<?php }?>'/>
            <div class="clear"></div>
        </fieldset>
        <div class="clear"></div>
    </form>
    <div class="clear"></div>
</div>
<?php 
            // выбираем актуальную таблицу для подгружаемой страницы
            switch($page_name){
                case 'news':
                    $filter_table = 'filter_news';
                    break;
                case 'video':
                    $filter_table = 'filter_video';
                    break;
                case 'articles':
                    $filter_table = 'filter_articles';
                    break;
                case 'gallery':
                    $filter_table = 'filter_gallery';
                    break;
                case 'testemonies':
                    $filter_table = 'filter_testemonies';
                    break;
            }
            
            // собираем запрос на выборку на основании переданных параметров
            $query_for_elem = "SELECT `elem_id` FROM `".$filter_table."` ";
            $query_for_elem .= "WHERE `section`='".$section_for_categories."' ";
            if($category_for_subcategories == true && $category_for_subcategories != 'all_options'){
                $query_for_elem .= "AND `category`='".$category_for_subcategories."' ";
            }
            if($subcategory == true && $subcategory != 'all_options'){
                $query_for_elem .= "AND `subcategory`='".$subcategory."' ";
            }
            if($parametrs['date_start'] != ''){
                $query_for_elem .= "AND ";
                $query_for_elem .= "`date` >= STR_TO_DATE('".$parametrs['date_start']."', '%d-%m-%Y') ";
            }
            if($parametrs['date_end'] != ''){
                $query_for_elem .= "AND ";
                $query_for_elem .= "`date` <= STR_TO_DATE('".$parametrs['date_end']."', '%d-%m-%Y'); ";
            }

            $query_for_elem = mysql_query($query_for_elem);

            if(!$query_for_elem){
                echo 'Не удалось вытянуть данные из таблицы '.$filter_table;
            }else{
                if(mysql_num_rows($query_for_elem) > 0){
                    while ($row = mysql_fetch_assoc($query_for_elem)) {
                        $elements[] = $row['elem_id'];
                    }

                }else{
                    $elements[] = '0';
                }
            }

//            echo '<pre>';
//            print_r($elements);
//            echo '</pre>';
//            exit();
?>
<script type="text/javascript">
    //  переменная для подгрузки параметров в функцию change_page()
    global_params = {};
    function set_filter_params(){
        var section = {
            "data": "<?php echo $section_for_categories;?>",
            "required": 0,
            "title": "раздел"
        }
        <?php if($category_for_subcategories){?>
        var category = {
            "data": "<?php echo $category_for_subcategories;?>",
            "required": 0,
            "title": "категория"
        }
        <?php }?>
        <?php if($subcategory){?>
        var subcategory = {
            "data": "<?php echo $subcategory;?>",
            "required": 0,
            "title": "подкатегория"
        }
        <?php }?>
        <?php if($date_start){?>
        var date_start = {
            "data": "<?php echo $date_start;?>",
            "required": 0,
            "title": "период"
        }
        <?php }?>
        <?php if($date_end){?>
        var date_end = {
            "data": "<?php echo $date_end;?>",
            "required": 0,
            "title": "период"
        }
        <?php }?>
        global_params["data"] = {};
        global_params["data"]["section"] = section;
        <?php if($category_for_subcategories){?>
        global_params["data"]["category"] = category;
        <?php }?>
        <?php if($subcategory){?>
        global_params["data"]["subcategory"] = subcategory;
        <?php }?>
        <?php if($date_start){?>
        global_params["data"]["date_start"] = date_start;
        <?php }?>
        <?php if($date_end){?>
        global_params["data"]["date_end"] = date_end;
        <?php }?>
    }
</script>
<?php }?>
