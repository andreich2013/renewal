<?php

// глобальные переменные
$count = 0;
$from_what_id = 0;
$href = '';
$paginator = '';

// =============================================================================
// вытащить определенные данные из таблицы БД по строке

class Util {
    
    public static function getLocale() {
//        return 'en';
        return 'ru';
    }


    public function debug($data, $isExit = false) {

        echo '<pre>';
        print_r($data);
        echo '</pre>';

        if ($isExit) {
            exit();
        }
    }
    
    public function basePath($path = null) {
        return (!$path) ? getenv('DOCUMENT_ROOT') : getenv('DOCUMENT_ROOT') . $path;
    }

}

class Router extends Util {

    protected $routes;
    protected $basePath;
    protected $pattern = array(
        'page' => '/(\/\d+)$/',
        'itemPage' => '/\/show\//'
    );
    
    public function __construct($options = null) {

        if ($options === null) {
            return;
        }

        $this->routes = $options['routes'];
        $this->basePath = $options['basePath'];
    }

    public function dispatch($url = null) {
        if ($url === null) {
            $url = isset($_SERVER['REQUEST_URI']) ? $_SERVER['REQUEST_URI'] : '/';
        }

        if (($pos = strpos($url, '?'))) {
            $url = substr($url, 0, $pos);
        }

        if(preg_match($this->pattern['itemPage'], $url)) {
            $page = null;
            $tmp = $url;
        } else {
            preg_match($this->pattern['page'], $url, $page);
            $tmp = preg_replace($this->pattern['page'], "", $url);
        }
        
        $data = array(
            'url' => explode('/', substr($tmp, 1)),
            'params' => $_REQUEST,
            'page' => is_array($page) ? substr($page[0], 1) : 0,
            'url_parts' => array(
                'host' => $tmp,
                'query' => $_SERVER['QUERY_STRING'],
            ),
        );
        
        foreach ($this->routes as $route) {
            if ($route['pattern'] && preg_match($route['pattern'], $url)) {
                return array(
                    'controller' => $route['controller'],
                    'data' => $data,
                );
            }
        }
        
        return array(
            'controller' => $this->routes['404']['controller'],
            'data' => $data,
        );
    }

}

class Controller extends Util {

    protected $isAjax;
    protected $ololo;

    public function __construct() {
        $this->isAjax = !empty($_SERVER['HTTP_X_REQUESTED_WITH']) && strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) == 'xmlhttprequest';
    }
    
    public function render($file, $model) {
        global $URL_ROOT, $URL_UPLOAD, $ajax, $ln;
        
        if (!$file) {
            $this->debug('@$file was not passed to the "render" function');
            return;
        }

        ob_start();
            include($file);
            $responce = ob_get_contents();
        ob_end_clean();
//        $this->debug($responce);
        return $responce;
    }

    public function renderEmptyPage() {
        return $this->render($this->basePath('/inc/helpers/empty.php'), $this->model);
    }
    
    public function renderLayout() {
        $footer = $this->db->select(array(
            'table' => 'footer',
            'where' => array(
                'id' => '1'
            ),
        ));
        
        $this->model['html']['footer'] = $footer[0];
        
        return $this->render($this->basePath('/inc/layout/layout.php'), $this->model);
    }
    
    protected function renderModel($options) {
        if(count($options['data']) === 0) {
            $this->model['html']['content'] = $this->renderEmptyPage();
        } else {
            $this->model['html']['breadcrumbs'] = $options['breadcrumbs'] ? DOM::buildBreadcrumbs($options['breadcrumbs']) : "";
            $this->model['html']['pagination'] = $options['pagination'] ? DOM::buildPagination($options['pagination']) : "";
            $this->model['html']['content'] = $this->render($this->basePath($options['view']), $this->model);
        }
    }
    
    public function buildFilter($options) {
        
        $modules = $options['modules'] === 'all' ? array('section', 'category', 'date_from', 'date_to') : $options['modules'];
        $model = array();
        $query = "";
        $queryDate = "";
        
        if(!$modules) {
            return;
        }
        
        if(array_search('date_from', $modules)) {
            $model['date_from'] = $options['date_from'] ? date("Y-m-d", strtotime($options['date_from'])) : null;
            
            $queryDate .= ($model['date_from'] ? "`date` >= '".$model['date_from']."' " : "");
        }
        
        if(array_search('date_to', $modules)) {
            $model['date_to'] = $options['date_to'] ? date("Y-m-d", strtotime($options['date_to'])) : null;
            
            $queryDate .= ($model['date_from'] && $model['date_to'] ? " AND " : "") .
                          ($model['date_to'] ? "`date` <= '".$model['date_to']."' " : "");
        }

        if(array_search('section', $modules)) {
            $model['sections'] = $this->db->select(array(
                'columns' => array('id', 'title', 'value'),
                'table' => 'filter_sections',
                'where' => array(
                    "$this->table" => '1'
                ),
            ));

            if(array_search('category', $modules) && $options['section']) {
                $model['category'] = $options['category'];
                $model['categories'] = $this->db->select(array(
                    'columns' => array('id', 'title', 'value'),
                    'table' => 'filter_categories',
                    'where' => array(
                        "AND" => array(
                            "subordinate" => $options['section'],
                            "$this->table" => '1',
                        )
                    ),
    //                'debug' => true,
                ));
            }
            
            if($options['section']) {
                $model['section'] = $options['section'];
                $query .= "SELECT `elem_id` FROM `$this->tableFilter` WHERE " .
                    ("`section`='".$options['section']."'") . 
                    ($options['category'] ? " AND `category`='".$options['category']."' " : "");
            }
        }

        return array(
            'query' => array(
                'section' => $query,
                'date' => $queryDate,
            ),
            'html' => $this->render($this->basePath('/inc/helpers/filter.php'), $model),
        );
    }

    public function getLeaders($options) {
        return $this->db->select(array(
            'table' => 'structure',
            'columns' => 'url,fio',
//            'debug' => true,
        ));
    }
    
    public function sendResponseJSON() {
        echo json_encode($this->model);
    }
    
    public function sendResponseHTML() {
        echo $this->isAjax ? $this->model['html']['content'] : $this->renderLayout();
    }
    
}

class DB extends Util {

    private $db;
    protected $host;
    protected $dbname;
    protected $username;
    protected $password;

    public function __construct($options = null) {

        if ($options === null) {
            return;
        }

        $this->host = $options['host'];
        $this->dbname = $options['dbname'];
        $this->username = $options['username'];
        $this->password = $options['password'];

        $this->connect();
    }

    private function connect() {
        $this->db = mysql_connect($this->host, $this->username, $this->password);

        if (!$this->db) {
            die('Database connection failed');
        }

        mysql_select_db($this->dbname) or die('Wrong database name or database not exist');

        @mysql_query('set character_set_client="utf8"');
        @mysql_query('set character_set_results="utf8"');
        @mysql_query('set collation_connection="utf8_general_ci"');
    }

    private function parseQuery($query, $table = null) {
        if (!$query) {
//            echo 'Не удалось вытянуть данные из таблицы ' . $table;
            return array();
        }

        if (mysql_num_rows($query) > 0) {
            while ($row = mysql_fetch_assoc($query)) {
                $res[] = $row;
            }
        }

        return $res;
    }

    private function buildColumns($data) {
        return is_array($data) ? implode(array_unique($data), ",") : $data;
    }
    
    private function OR_ANDstrategy($data, $boolState) {
        $where = "";
        $length = count($data);
        $i = 0;

        foreach ($data as $key => $value) {
            $i++;
            
            if(!isset($value) || empty($value)) {
                continue;
            }
            
            $where .= ($i > 1 && !empty($where) ? " $boolState" : "");

            if (is_array($value)) {
                switch ($key) {
                    case "OR":
                        $where .= $this->OR_ANDstrategy($value, 'OR');
                        break;
                    case "AND":
                        $where .= $this->OR_ANDstrategy($value, 'AND');
                        break;
                    case "IN":
                        $where .= $this->INstrategy($value);
                        break;
                    default:
                        $where .= " `$key`='$value'";
                }
            } else if(is_string($value)) {
                if($key === "OR" || $key === "AND") {
                    $where .= " $value";
                } else {
                    $where .= " `$key`='$value'";
                }
                
            }
            
        }

        return !empty($where) ? "($where)" : $where;
    }

    private function INstrategy($data) {
        foreach ($data as $key => $value) {
            if (gettype($value) === 'array') {
                $value = implode(array_unique($value), ",");
            }

            return !empty($value) ? " `$key` IN ($value)" : "";
        }
    }

    private function buildWhere($data) {
        $where = "";
        $length = count($data);
        $i = 0;

        if(is_string($data)) {
            return $data;
        }
        
        foreach ($data as $key => $value) {
            $i++;

            if (is_array($value)) {
                switch ($key) {
                    case "OR":
                        $where .= $this->OR_ANDstrategy($value, 'OR');
                        break;
                    case "AND":
                        $where .= $this->OR_ANDstrategy($value, 'AND');
                        break;
                    case "IN":
                        $where .= $this->INstrategy($value);
                        break;
                }
            } else {
                $where .=" `$key`='$value'";
            }

            if ($length > $i) {
                $where .=",";
            }
        }

        return $where;
    }

    private function buildOrder($data) {
        $order = "";
        $length = count($data);
        $i = 0;

        foreach ($data as $key => $value) {
            $i++;
            $order .= "`$key`" . ($value !== null ? " $value" : "")
                    . ($i < $length ? "," : "");
        }

        return $order;
    }

    public function select($options = null) {
        switch (gettype($options)) {

            case null:
                return;
                break;

            case 'string':
                return $this->parseQuery(mysql_query($options));
                break;

            default:
                if($options["columns"]) {
                    $columns = $this->buildColumns($options["columns"]);
                }
                
                if ($options["where"]) {
                    $where = $this->buildWhere($options["where"]);
                }

                if ($options["order"]) {
                    $order = $this->buildOrder($options["order"]);
                }

                $query = "SELECT " . 
                        ($columns ? $columns : "*") .
                        (" FROM `" . $options["table"] . "`") .
                        ($where ? " WHERE $where" : "") .
                        ($options["group"] ? " GROUP BY " . $options["group"] : "") .
                        ($order ? " ORDER BY $order" : "") .
                        ($options["limit"] ? " LIMIT " . $options["limit"] : "");

                if ($options['debug']) {
                    $this->debug($query);
                }

                return $this->parseQuery(mysql_query($query), $options["table"]);
        }
    }

    public function update($options = null) {
        if ($options === null) {
            return;
        }

        if ($options["data"]) {
            $data = "";
            $length = count($options['data']);
            $i = 0;

            foreach ($options['data'] as $key => $value) {
                $i++;
                $data .= "`$key`='$value'" . ($i < $length ? "," : "");
            }
        }

        if ($options["where"]) {
            $where = $this->buildWhere($options["where"]);
        }

        if ($options["order"]) {
            $order = $this->buildOrder($options["order"]);
        }

        $query = "UPDATE `" . $options["table"] . "`" .
                ($data ? " SET $data" : "") .
                ($where ? " WHERE $where" : "") .
                ($options["group"] ? " GROUP BY " . $options["group"] : "") .
                ($options["limit"] ? " LIMIT " . $options["limit"] : "");

        if ($options['debug']) {
            $this->debug($query);
        }

        return mysql_query($query);
    }

    public function insert($options = null) {
        $queryKeys = "";
        $queryValues = "";

        $length = count($options['data']);
        $i = 0;
        foreach ($options['data'] as $key => $value) {
            $i++;
            $queryKeys .= "`$key`" . ($i < $length) ? "," : ")";
            $queryValues .= "'$value'" . ($i < $length) ? "," : ")";
        }

        $query = "INSERT INTO `" . $options['table'] . "` ($queryKeys)  VALUES ($queryValues)";

        if ($options['debug']) {
            $this->debug($query);
        }

        mysql_query($queryKeys . $queryValues);
    }

}

class DOM {

    public static $page;

    public static function isActive($value) {
        return (DOM::$page == $value) ? 'active' : '';
    }
    
    public static function buildPagination($options) {

        $maxPages = 5;
        $host = $options['url_parts']['host'];
        $query = $options['url_parts']['query'] ? "?" . $options['url_parts']['query'] : "";
        $count = ceil($options["length"] / $options["items"]);
        $current = (isset($options["page"]) && $options["page"] > 0) ? $options["page"] : 1;
        $html = "";

        switch($current) {
            case 1:
            case 2: 
                $pages = array();
                for ($j = 0; $j < ($count < $maxPages ? $count : $maxPages); $j++) {
                    array_push($pages, $j+1);
                }
                break;
            case $count-1:
            case $count: 
                $pages = array();
                for ($j = 0; $j < ($count < $maxPages ? $count : $maxPages); $j++) {
                    array_unshift($pages, $count-$j);
                }
                break;
            default:
                $pages = array($current-2,$current-1,$current,$current+1,$current+2);
        }
        
        if ($count > 1) {
            $html .= '<div class="paginationControl clearfix"><ul class="pages">';
            if ($current != 1) {
                $html .= sprintf('<li class="pages-prev"><a href="%s/%d%s"><i class="fa fa-angle-double-left"></i></a></li>', $host, 1, $query);
                $html .= sprintf('<li class="pages-prev"><a href="%s/%d%s"><i class="fa fa-angle-left"></i></a></li>', $host, $current - 1, $query);
            }
            for ($i = 0; $i < ($count < $maxPages ? $count : $maxPages); $i++) {
                $html .= ($pages[$i] == $current) ? sprintf('<li><span>%d</span></li>', $pages[$i]) : 
                                            sprintf('<li><a href="%s/%d%s">%d</a></li>', $host, $pages[$i], $query, $pages[$i]);
            }
            if ($current != $count) {
                $html .= sprintf('<li class="pages-next"><a href="%s/%d%s"><i class="fa fa-angle-right"></i></a></li>', $host, $current + 1, $query);
                $html .= sprintf('<li class="pages-next"><a href="%s/%d%s"><i class="fa fa-angle-double-right"></i></a></li>', $host, $count, $query);
            }
            $html .= '</ul></div>';
        }

        return $html;
    }

    public static function buildBreadcrumbs($items = null) {
        if (!$items) {
            return "";
        }

        $html = '<ul class="pathway">';
        $length = count($items) - 1;
        
        foreach ($items as $key => $item) {
            $html .= '<li>' . ($item['url'] ? '<a href="' . $item['url'] . '">' . $item['name'] . '</a>' : 
                             '<span>' . $item['name'] . '</span>') .
            '</li>' . ($length > $key ? '/' : '');
        }
        
        $html .= '</ul>';
        
        return $html;
    }

}

function get_db_data_where($table, $whereKey, $whereValue) {
    $select = "SELECT * FROM `$table` WHERE `$whereKey` = '$whereValue' LIMIT 1";
    $query = mysql_query($select);

    if (!$query) {
        echo 'Не удалось вытянуть данные из таблицы ' . $table;
    } else {
        if (mysql_num_rows($query) > 0) {
            $result_array = mysql_fetch_array($query, MYSQL_ASSOC);
        }

        return $result_array;
    }
}

// =============================================================================
// вытащить определенные данные из таблицы БД по строке
function get_db_data_where2($table, $whereKey, $whereValue, $order = null) {
    $select = "SELECT * FROM `$table` WHERE `$whereKey` = '$whereValue'";

    if ($order != null) {
        $select .= " ORDER BY " . $order;
    }

    $query = mysql_query($select);

    if (!$query) {
        echo 'Не удалось вытянуть данные из таблицы ' . $table;
    } else {
        if (mysql_num_rows($query) > 0) {
            while ($row = mysql_fetch_assoc($query)) {
                $result_array[] = $row;
            }
        } else {
//        $result_array = 'ничего не найдено';
        }

        return $result_array;
    }
}

// =============================================================================
// вытащить определенные данные из таблицы БД по строке
function get_db_data_where_in($table, $whereKey, $whereValue, $order = null) {

    // собираем элементы в удобный вид, для того, чтобы передать 
    // в параметр WHERE запроса для вывода элементов на страницу
    $whereValue = array_unique($whereValue);
    $whereValue = implode($whereValue, ",");

    $select = "SELECT * FROM `$table` WHERE `$whereKey` IN ($whereValue)";

    if ($order != null) {
        $select .= " ORDER BY " . $order;
    }

    $query = mysql_query($select);

    if (!$query) {
        echo 'Не удалось вытянуть данные из таблицы ' . $table;
    } else {
        if (mysql_num_rows($query) > 0) {
            while ($row = mysql_fetch_assoc($query)) {
                $result_array[] = $row;
            }
        } else {
            //        $result_array = 'ничего не найдено';
        }

        return $result_array;
    }
}

// =============================================================================
// вытащить все данные из таблицы БД
function get_db_data($table, $order = null) {
    $select = "SELECT * FROM `$table`";

    if ($order != null) {
        $select .= " ORDER BY " . $order;
    }

    $query = mysql_query($select);
    if (!$query) {
        echo 'Не удалось вытянуть данные из таблицы ' . "$table";
    } else {
        if (mysql_num_rows($query) > 0) {
            while ($row = mysql_fetch_assoc($query)) {
                $result_array[] = $row;
            }
        }

        return $result_array;
    }
}

// =============================================================================
// обновить данные в таблице БД
function update_db_where($table, $data, $where = null) {

    $query = "UPDATE `$table` SET ";

    $d = count($data);
    $i = 0;
    foreach ($data as $key => $value) {
        $i++;
        $query .= "`$key`='$value'";
        if ($i != $d) {
            $query .= ",";
        }
    }

    if ($where != null) {

        $query .= " WHERE ";

        foreach ($where as $key => $value) {
            $query .= "`$key`='$value'";
        }
    }

    $responce = mysql_query($query);

    return $responce;
}

// =============================================================================
// записать данные в таблицу БД
function insert_db($table, $data) {
    $query = "INSERT INTO `$table` (";

    $d = count($data);
    $i = 0;
    foreach ($data as $key => $value) {
        $i++;
        $query .= "`$key`";
        if ($i != $d) {
            $query .= ",";
        } else {
            $query .= ")";
        }
    }

    $query .= " VALUES (";

    $i = 0;
    foreach ($data as $key => $value) {
        $i++;

        $query .= "'$value'";
        if ($i != $d) {
            $query .= ",";
        } else {
            $query .= ")";
        }
    }

    mysql_query($query);
}

// =============================================================================
// добавление крошек
function pathway($arr, $elem_id) {
    global $url;
    if (isset($elem_id)) {
        echo '<ul class="pathway">';
        foreach ($arr as $arrKey => $arrValue) {
            if ($arrKey == $elem_id) {
                for ($i = count($arrValue); $i > 0; $i--) {
                    $e = $i - 1;
                    if ($i != 1) {
                        echo '<li><a href="' . $url[$arrValue[$e]['id']] . '">' . $arrValue[$e]['name'] . '</a></li>';
                        echo '/';
                    } else { // если выводим последний элемент
                        echo '<li><span>' . $arrValue[$e]['name'] . '</span></li>';
                    }
                }
            }
        }
        echo '</ul>';
    }
}

// =============================================================================
// добавление крошек - более простой вариант
function breadcrumbs($breadcrumbs) {
    if ($breadcrumbs) {
        $length = count($breadcrumbs) - 1;
        echo '<ul class="pathway">';
        foreach ($breadcrumbs as $key => $item) {
            echo '<li>' .
            ($item['url'] ? '<a href="' . $item['url'] . '">' . $item['name'] . '</a>' : '<span>' . $item['name'] . '</span>') .
            '</li>' . ($length > $key ? '/' : '');
        }
        echo '</ul>';
    } else {
        echo 'Ошибка! Параметр не должен быть пуст.';
    }
}

// =============================================================================
// создание маршрутов
function create_routes($arr) {
    if (isset($arr)) {
        foreach ($arr as $arrKey => $arrValue) {
            $href = '';
            for ($i = count($arrValue); $i > 0; $i--) {
                $e = $i - 1;
                if (!empty($arrValue[$e]['page'])) {
                    $href = $href . '/' . $arrValue[$e]['page'];
                    $url[$arrKey] = $href;
                }
            }
        }
    }
    return $url;
}

//================================================================================
// параметры:
// массив элементов, которые выводятся на страницу
// $num - количество элементов на одной странице(целое число!)
// $page_active - активная страница элемента (обычно передается $_POST['page'])
// $first_page_active - страница с которой начнется подгрузка пагинатора
// варианты для $first_page_active:
// 1. 'center' - по умолчанию будет открываться на середине пагинатора
// 2. 'first' - по умолчанию будет открываться на первой странице
// 3. 'last' - по умолчанию будет открываться на последней странице
// 4. любое число
// функция возвращает активную страницу пагинатора
function pagination($arr, $num, $page_active, $first_page_active = 'first') {

    global $count, $from_what_id, $url, $page, $config, $section_for_categories, $paginator;

    $amount_count = count($arr); // общее количество элементов
    $modulo = $amount_count % $num; // остаток от деления
    $count = ($amount_count - $modulo) / $num; // количество страниц

    if ($modulo > 0) { // если остаток больше 0, будет еще страница
        $count+=1;
    }

    // варианты для $first_page_active
    if ($first_page_active == 'center') { // открываем на центральной странице
        for ($i = 0; $i <= ($count); $i++) {
            $sum += $i;
        }
        $first_page_active = ($sum - $sum % $count) / $count;
    } else if ($first_page_active == 'first') { // открываем на первой странице
        $first_page_active = 1;
    } else if ($first_page_active == 'last') { // открываем на последней странице
        $first_page_active = $count;
    }

    if (!isset($page_active) || $page_active == 0) { // открываем на "n" странице, если не задана страница
        $page_active = $first_page_active;
    }

    $from_what_id = $page_active * $num - $num; // id элемента с которого начнется загрузка на страницу

    $left = $page_active - 1;
    $right = $page_active + 1;

    $paginator_id = $page['page']['id'];

    $query = '';
    if ($section_for_categories) {
        $query = '?section=' . $section_for_categories;
    }

    if ($count > 1) {
        $paginator .= '<div class="paginationControl clearfix">';
        $paginator .= '<ul class="pages">';
        if ($page_active != 1) {
            $paginator .= '<li><a href="' . $url[$paginator_id] . '/page-' . $left . $query . '" class="pages-prev" onclick="if(global_params){set_filter_params();};">&larr;</a></li>';
        }
        for ($i = 0; $i < $count; $i++) { // выведем пагинацию страниц
            $e = $i + 1;
            $paginator .= ($e == $page_active) ? '<li><span>' . $e . '</span></li>' :
                    '<li><a href="' . $url[$paginator_id] . '/page-' . $e . $query . '" onclick="if(global_params){set_filter_params();};">' . $e . '</a></li>';
        }
        if ($page_active != $count) {
            $paginator .= '<li><a href="' . $url[$paginator_id] . '/page-' . $right . $query . '" class="pages-next" onclick="if(global_params){set_filter_params();};">&rarr;</a></li>';
        }
        $paginator .= '</ul>';
        $paginator .= '</div>';
    }
    return $page_active;
}

function dispatch() {

    global $router, $href, $url, $menu, $index, $page_number_pref, $config, $ajax, $page_num, $request_param, $show_table;

    if ($href == null) {
        $href = $_SERVER['REQUEST_URI'];
    }

    // если слеш в конце url - убираем его
    if ($href != '/') {
        $last_slash = strrpos($href, '/');
        if ($last_slash + 1 == strlen($href)) {
            $href = substr($href, 0, $last_slash);
        }
    }

    if (strpos($href, '?')) {
        $_SERVER['QUERY_STRING'];

        // распарсим GET параметры
        $request_params = substr($href, strpos($href, '?') + 1);
        $href = substr($href, 0, strpos($href, '?'));

        $request_params = explode('&', $request_params);

        foreach ($request_params as $item) {
            $sign_pos = strpos($item, '=');
            $request_param_name = substr($item, 0, $sign_pos);
            $request_param_value = substr($item, $sign_pos + 1);
            $request_param[$request_param_name] = $request_param_value;
        }
//        print_r($request_param);
//        exit();
    }

    // парсим url, забираем переменные
    if (strstr($href, $page_number_pref)) { // если в url есть номер страницы пагинатора   
        $page_num_pos = strpos($href, $page_number_pref);
        $page_num_str = substr($href, $page_num_pos);
        $page_num = substr($page_num_str, strlen($page_number_pref));    // номер страницы пагинатора
        $url_new = substr($href, 0, $page_num_pos - 1);   // новый url без страницы пагинатора
    } else if (strstr($href, '/show/')) {
        // в общем - я решил, что так проще и надежней...
        $arr_url = explode('/', $href);

        $array['params']['url'] = $arr_url[count($arr_url) - 1];
        $array['params']['page'] = $arr_url[count($arr_url) - 3];

        switch ($array['params']['page']) {
            case 'news':
                $url_new = '/news_show';
                $show_table = 'news';
                break;
            case 'ministries':
                $url_new = '/ministries_show';
                $show_table = 'ministries';
                break;
            case 'home_groups':
                $url_new = '/home_groups_show';
                $show_table = 'home_groups';
                break;
            case 'structure':
                $url_new = '/structure_show';
                $show_table = 'structure';
                break;
            case 'video':
                $url_new = '/video_show';
                $show_table = 'video';
                break;
            case 'articles':
                $url_new = '/articles_show';
                $show_table = 'articles';
                break;
            case 'testemonies':
                $url_new = '/testemonies_show';
                $show_table = 'testemonies';
                break;
        }
    } else if ($href == '/') {
        $url_new = '/' . $index;
    } else { // иначе используем $href
        $url_new = $href;
    }

//        print_r($href);
//        exit();
    // ищем по маршрутам
    foreach ($url as $id => $href) {
        if ($href == $url_new) {
            $url_id = $id;
            break;
        }
    }

    // достаем нужную страницу из массива $menu
    if (!isset($url_id)) {
        foreach ($menu as $item) {
            if ($item['page'] == 'error404') {
                $array['page'] = $item;
            }
        }
    } else if (isset($url_id)) {
        foreach ($menu as $item) {
            if ($item['id'] == $url_id) {
                $array['page'] = $item;
            }
        }
    }

//    echo '<pre>';
//    print_r($array);
//    echo '</pre>';
//    exit();

    return $array;
}

// функция, по аналогии с render() на Зенде
// возвращает содержимое файла в переменной
//================================================================================
function render($file) {
    if ($file) {
        // записываем данные в буфер обмена
        ob_start();
        include($file);
        // передаем их в переменную
        $responce = ob_get_contents();
        ob_end_clean();
    } else {
        echo 'не передан файл в функция render()';
    }

//    echo '<pre>';
//    print_r($responce);
//    echo '</pre>';
//    exit();

    return $responce;
}

// проверка на наличие пустых обязательных полей 
// возвращает массив с записями об ошибках в формате 
// ключ => значение : имя поля => строка с ошибкой
//================================================================================
function isRequired($parametrs) {

    foreach ($parametrs as $key => $parametr) {
        if (empty($parametr['data']) && $parametr['required'] == true) {
            $errors[$key] = 'Поле "' . $parametr['title'] . '" обязательно для заполнения';
        }
    }

    return $errors;
}

// проверка элементов формы на валидность
// возвращает массив со значениями элементов 
// и ошибками, если таковые имеются
// ключ => значение : имя поля => строка с ошибкой
//================================================================================
function isValid($parametrs) {

    // создаем массив зарезервированных слов для Mysql
    $words = array(
        0 => 'select',
        1 => 'union',
        2 => 'where',
        3 => 'char',
        4 => 'order',
        5 => 'limit',
        6 => 'prepare',
        7 => 'join',
        8 => 'update',
        9 => 'insert',
        10 => 'delete',
    );

    foreach ($parametrs as $key => $parametr) {

        $value = '';

        switch ($key) {
            case 'email':
                if (!filter_var($parametr['data'], FILTER_VALIDATE_EMAIL)) {
                    $paramsValid['errors']['email'] = 'не верно введен email';
                }
                $value = $parametr['data'];
                break;
            case 'captcha_input':
                $article = get_db_data_where('captcha', 'session', $_SESSION['id']);
                if (!$article) {
                    $paramsValid['errors']['captcha_input'] = 'Для корректной работы сайта закройте, пожалуйста, браузер и откройте его вновь';
                } else {
                    if ($article['captcha'] != $parametr['data']) {
                        $paramsValid['errors']['captcha_input'] = 'Неверно введен код';
                    }
                    if ($article['hash'] != $_SESSION['hash']) {
                        $paramsValid['errors']['captcha_input'] = 'Бот не пройдет!';
                    }
                }
                break;
            default:
                $value = escape_inj($parametr['data'], $words);
        }

        // производим валидацию
        $value = str_replace('<?', '', $value);
        $value = str_replace('?>', '', $value);
        $value = strip_tags($value);
        $value = mysql_real_escape_string($value);

        $paramsValid[$key] = $value;
    }
//        echo '<pre>';
//        print_r($paramsValid);
//        echo '</pre>';
//        exit();

    return $paramsValid;
}

// преобразуем все основные зарезервированные слова для Mysql, которые встречаются
// в тексте к виду "--:var--"
// возвращает текст с "закомментированными" зарезервироваными словами для Mysql
//================================================================================
function escape_inj($text, $words) {

    foreach ($words as $word) {
        $pos = stripos($text, $word);
        if ($pos !== false) {
            $text = str_ireplace($word, "--" . $word . "--", $text);
        }
    }

    return $text;
}

//удаляет файлы из папки $directory
//==============================================================================
function full_del_dir($directory) {
    $dir = opendir($directory);

    while (($file = readdir($dir))) {
        if (is_file($directory . "/" . $file)) {
            unlink($directory . "/" . $file);
        } else if (is_dir($directory . "/" . $file) && ($file != ".") && ($file != "..")) {
            full_del_dir($directory . "/" . $file);
        }
    }

    closedir($dir);
}

?>