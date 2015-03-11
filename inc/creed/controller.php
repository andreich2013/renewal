<?php

class CreedController extends Controller {
    
    protected $table = 'static';
    protected $model = array(
        'page' => 'creed',
        'title' => 'Во что мы верим',
        'breadcrumbs' => array(
            0 => array(
                'name' => 'О нас',
                'url' => '/about',
            ),
            1 => array(
                'name' => 'Во что мы верим',
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
        
        $this->model['item'] = $this->db->select(array(
            'table' => $this->table,
            'where' => array(
                'title' => 'creed'
            ),
//            'debug' => true,
        ));
        
        $this->renderModel(array(
            'view' => '/inc/creed/item.php',
            'breadcrumbs' => $this->model['breadcrumbs'],
            'data' => $this->model['item']
        ));
           
        $this->sendResponseHTML();
    }
    
}
