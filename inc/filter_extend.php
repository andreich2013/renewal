<?php
    global $href;
    $page_name = $page['page']['page'];
    
    if($_REQUEST['data']){
        $parametrs = $_REQUEST['data'];
    }
    
    if($request_param['section']){
        $section_for_categories = $request_param['section'];
    }
    
    if($request_param['category']){
        $category_for_subcategories = $request_param['category'];
    }
    
    if($request_param['subcategory']){
        $subcategory = $request_param['subcategory'];
    }

    // если запрос на категорию или подкатегорию добавим еще селект    
    if($parametrs){

        $parametrs = isValid($parametrs);

        $section_for_categories = $parametrs['section'];
        $category_for_subcategories = $parametrs['category'];
        $subcategory = $parametrs['subcategory'];
    }

    $sections = get_db_data('filter_sections');
        
?>
<div class="post_form filter">
    <form action="<?php echo $href;?>">
        <fieldset>
            <p style="line-height: 78px; height: 52px;">Выбрать:</p>
            <div class="filter_section">
                <div class="filter-block" tab="section">
                    <label for="section">раздел</label>
                    <select name="section" rel="section" class="form_elements">
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
                            <option <?php if($section_for_categories == $section['value']){echo 'selected';}?> value="<?php echo $section['value']?>">
                                <?php echo $section['title']?>
                            </option>
                            <?php }?>
                        <?php }?>
                    </select>
                </div>
                <div class="filter-block" tab="category">
                <?php if($section_for_categories){
                            $categories = get_db_data_where2('filter_categories','subordinate',$section_for_categories);
                            
                            if($categories){
                                $form_name = 'category';
                                $list_title = 'категория';
                                $this_number = 1;
                                $list_number = $this_number + 1;
                            
                ?>
                    <label for="<?php echo $form_name;?>"><?php echo $list_title;?></label>
                    <select name="<?php echo $form_name;?>" rel="section" class="form_elements">
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
                        <option <?php if($category_for_subcategories == $article['value']){echo 'selected';}?> value="<?php echo $article['value']?>">
                            <?php echo $article['title']?>
                        </option>
                        <?php }?>
                    </select>
                      <?php }?>
                <?php }?>
                </div>
                <div class="filter-block" tab="subcategory">
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
                    <select name="<?php echo $form_name;?>" rel="category" class="form_elements" onchange=''>
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
                        <option <?php if($subcategory == $article['value']){echo 'selected';}?> value="<?php echo $article['value']?>">
                            <?php echo $article['title']?>
                        </option>
                        <?php }?>
                    </select>
                      <?php }?>
                <?php }?>
                </div>
            </div>
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
                case 'audio':
                    $filter_table = 'filter_audio';
                    break;
                case 'video':
                    $filter_table = 'filter_video';
                    break;
                case 'gallery':
                    $filter_table = 'filter_gallery';
                    break;
                case 'spiritual_regeneration':
                    $filter_table = 'filter_spiritual_regeneration';
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
        global_params["data"] = {};
        global_params["data"]["section"] = section;
        <?php if($category_for_subcategories){?>
        global_params["data"]["category"] = category;
        <?php }?>
        <?php if($subcategory){?>
        global_params["data"]["subcategory"] = subcategory;
        <?php }?>
    }
</script>
