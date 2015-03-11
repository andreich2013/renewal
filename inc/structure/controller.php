<?php

class StructureController extends Controller {
    
    protected $table = 'structure';
    protected $itemsPerPage = 9;
    protected $model = array(
        'page' => 'structure',
        'title' => 'О нас',
        'breadcrumbs' => array(
            0 => array(
                'name' => 'О нас',
                'url' => '/about',
            ),
            1 => array(
                'name' => 'Служители',
            ),
        ),
        'html' => array()
    );
    
    public function __construct($options = null) {
        parent::__construct();
        
        $this->db = $options['db'];
        $this->model['params'] = $options['params'];

        if($options['data']['url'][2] === 'show') {
            $this->itemAction($options['data']);
        } else {
            $this->listAction($options['data']);
        }
        
    }
    
    public function listAction($options) {
        $length = $this->db->select(array(
            'table' => $this->table,
            'columns' => 'COUNT(*)',
//            'debug' => true,
        ));
        $page = $options['page'];
        
        $this->model['list'] = $this->db->select(array(
            'table' => $this->table,
            'order' => array(
                'order' => "DESC",
            ),
            'limit' => ($page > 0 ? ($page - 1) * $this->itemsPerPage : 0) . ", $this->itemsPerPage",
//            'debug' => true,
        ));

        $this->renderModel(array(
            'view' => '/inc/structure/list.php',
            'data' => $this->model['list'],
            'breadcrumbs' => $this->model['breadcrumbs'],
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
        
        $this->model['breadcrumbs'][1]['url'] = '/about/structure';
        $this->model['breadcrumbs'][] = array(
            'name' => $this->model['item'][0]['fio']
        );
        
        $this->renderModel(array(
            'view' => '/inc/structure/item.php',
            'data' => $this->model['item'],
            'breadcrumbs' => $this->model['breadcrumbs'],
        ));
        
        $this->sendResponseHTML();
    }
    
}
