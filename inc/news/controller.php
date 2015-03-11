<?php

class NewsController extends Controller {
    
    protected $table = 'news';
    protected $tableFilter = 'filter_news';
    protected $itemsPerPage = 3;
    protected $model = array(
        'page' => 'news',
        'title' => 'Новости',
        'breadcrumbs' => array(
            0 => array(
                'name' => 'Новости',
                'url' => '/news',
            ),
        ),
        'html' => array()
    );
    
    public function __construct($options = null) {
        parent::__construct();
        
        $this->db = $options['db'];
        $this->model['params'] = $options['params'];

        if($options['data']['url'][1] === 'show') {
            $this->itemAction($options['data']);
        } else {
            $this->listAction($options['data']);
        }
        
    }
    
    public function listAction($options) {
        $this->model['filter'] = $this->buildFilter($options['params']);
        $where = array(
            "AND" => array(
                "IN" => array(
                    'id' => $this->model['filter']['query']['section'],
                ),
                "AND" => $this->model['filter']['query']['date'],
            ),
        );
        
        $length = $this->db->select(array(
            'table' => $this->table,
            'columns' => 'COUNT(*)',
            'where' => $where,
//            'debug' => true,
        ));
        $page = $options['page'];
        
        $this->model['list'] = $this->db->select(array(
            'table' => $this->table,
            'where' => $where,
            'order' => array(
                'date' => "DESC",
            ),
            'limit' => ($page > 0 ? ($page - 1) * $this->itemsPerPage : 0) . ", $this->itemsPerPage",
//            'debug' => true,
        ));

        $this->renderModel(array(
            'view' => '/inc/news/list.php',
            'data' => $this->model['list'],
            'pagination' => array(
                "items" => $this->itemsPerPage,
                "page" => $page,
                "length" => $length[0]['COUNT(*)'],
                "url_parts" => $options['url_parts'],
            ),
        ));
           
        $this->sendResponseHTML();
    }
    
    public function itemAction($options) {
        
        $url = end($options['url']);
        $this->model['item'] = $this->db->select(array(
            'table' => $this->table,
            'where' => array(
                'OR' => array(
                    'url' => $url,
                    'id' => intval($url),
                ),
            ),
            'limit' => 1,
        ));
        
        $this->model['title'] = $this->model['item']['title'];
        $this->model['breadcrumbs'][] = array(
            'name' => $this->model['item'][0]['title']
        );
        
        $this->renderModel(array(
            'view' => '/inc/news/item.php',
            'data' => $this->model['item'],
            'breadcrumbs' => $this->model['breadcrumbs'],
        ));
        
        $this->sendResponseHTML();
    }
    
}
