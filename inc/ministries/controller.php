<?php

class MinistriesController extends Controller {
    
    protected $table = 'ministries';
    protected $itemsPerPage = 6;
    protected $model = array(
        'page' => 'ministries',
        'title' => 'Служения',
        'breadcrumbs' => array(
            0 => array(
                'name' => 'О нас',
                'url' => '/about',
            ),
            1 => array(
                'name' => 'Служения'
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

        if(count($this->model['list']) > 0) {
            $tmp = $this->getLeaders(array(
                'data' => $leaders,
            ));

            foreach ($tmp as $val) {
                $this->model['leaders'][$val['url']] = $val['fio'];
            }
        }
        
        $this->renderModel(array(
            'view' => '/inc/ministries/list.php',
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
    
}
