<?php

class MainController extends Controller {
    
    protected $table = 'top';
    protected $tableStatistic = 'static';
    protected $model = array(
        'page' => 'main',
        'title' => 'Главная',
        'html' => array()
    );
    
    public function __construct($options = null) {
        parent::__construct();
        
        $this->db = $options['db'];
        $this->model['params'] = $options['params'];

        $this->itemAction($options['data']);
        
    }
    
    public function itemAction($options) {
        
        $this->model['top'] = $this->db->select(array(
            'table' => $this->table,
            'order' => array(
                'order' => "DESC",
            )
//            'debug' => true,
        ));
        
        $this->model['greeting'] = $this->db->select(array(
            'table' => $this->tableStatistic,
            'where' => array(
                'title' => 'greeting'
            ),
//            'debug' => true,
        ));

        $this->renderModel(array(
            'view' => '/inc/main/item.php',
            'data' => $this->model['top']
        ));
           
        $this->sendResponseHTML();
    }
    
}
