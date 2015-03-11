<?php

class HistoryController extends Controller {
    
    protected $table = 'history';
    protected $tableStatic = 'static';
    protected $model = array(
        'page' => 'history',
        'title' => 'История',
        'breadcrumbs' => array(
            0 => array(
                'name' => 'О нас',
                'url' => '/about',
            ),
            1 => array(
                'name' => 'История',
            ),
        ),
        'html' => array()
    );
    
    public function __construct($options = null) {
        parent::__construct();
        
        $this->db = $options['db'];
        $this->model['params'] = $options['params'];

        $this->itemAction($options['data']);
        
    }
    
    public function itemAction($options) {
        
        $this->model['imgs'] = $this->db->select(array(
            'table' => $this->table,
//            'debug' => true,
        ));
        
        $this->model['item'] = $this->db->select(array(
            'table' => $this->tableStatic,
            'where' => array(
                'url' => 'history',
            )
//            'debug' => true,
        ));
        
        $this->renderModel(array(
            'view' => '/inc/history/item.php',
            'breadcrumbs' => $this->model['breadcrumbs'],
            'data' => $this->model['item']
        ));
           
        $this->sendResponseHTML();
    }
    
}
