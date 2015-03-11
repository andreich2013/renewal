<?php
    global $href;
    $page_name = $page['page']['page'];
    
    if($_REQUEST['data']){
        $parametrs = $_REQUEST['data'];
        $parametrs = isValid($parametrs);
        $section_for_categories = $parametrs['section'];
    }

    if($request_param['section']){
        $section_for_categories = $request_param['section'];
    }
    
    $sections = get_db_data('filter_sections');
?>        
<div class="post_form filter">
    <form action="<?php echo $href;?>">
        <fieldset>
            <p style="line-height: 78px; height: 52px;">Выбрать:</p>
            <div class="filter_section">
                <div class="filter-block">
                    <label for="section">раздел</label>
                    <select name="section" class="form_elements">
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
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
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
            $query_for_elem = "SELECT `elem_id` FROM `$filter_table` WHERE `section`='$section_for_categories'";

//            $query_for_elem = mysql_query($query_for_elem);
//
//            if(!$query_for_elem){
//                echo 'Не удалось вытянуть данные из таблицы '.$filter_table;
//            }else{
//                if(mysql_num_rows($query_for_elem) > 0){
//                    while ($row = mysql_fetch_assoc($query_for_elem)) {
//                        $elements[] = $row['elem_id'];
//                    }
//
//                }else{
//                    $elements[] = '0';
//                }
//            }

//            echo '<pre>';
//            print_r($elements);
//            echo '</pre>';
//            exit();
?>
<script type="text/javascript">
    //  переменная для подгрузки параметров в функцию change_page()
    global_params = {};
    function set_filter_params(){
        global_params.data = {
            section: {
                data: "<?php echo $section_for_categories;?>",
                required: 0,
                title: "раздел"
            }
        };
    }
</script>
