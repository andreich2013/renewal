<?php

class Controller404 extends Controller {
    
    protected $itemsPerPage = 3;
    protected $model = array(
        'page' => '404',
        'title' => 'страница 404',
        'html' => array()
    );
    
    public function __construct($options = null) {
        parent::__construct();
        
        $this->db = $options['db'];
        $this->model['params'] = $options['params'];

        $this->itemAction($options);
        
    }
    
    public function itemAction($options) {
        
        $this->renderModel(array(
            'view' => '/inc/404/item.php',
            'data' => array(1,2),
        ));
           
        $this->sendResponseHTML();
    }
    
}
