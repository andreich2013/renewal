<?php

class GalleryController extends Controller {
    
    protected $table = 'gallery';
    protected $tableFilter = 'filter_gallery';
    protected $itemsPerPage = 12;
    protected $model = array(
        'page' => 'gallery',
        'title' => 'Галерея',
        'breadcumbs' => array(
            0 => array(
                'name' => 'Галерея',
                'url' => '/media/gallery?section=ministries',
            ),
        ),
        'html' => array()
    );
    
    public function __construct($options = null) {
        parent::__construct();

        $this->db = $options['db'];
        $this->model['params'] = $options['params'];

        $this->listAction($options['data']);
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
                'order' => "DESC",
            ),
            'limit' => ($page > 0 ? ($page - 1) * $this->itemsPerPage : 0) . ", $this->itemsPerPage",
//            'debug' => true,
        ));
        
        $this->renderModel(array(
            'view' => '/inc/gallery/list.php',
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
    
    
    
}
