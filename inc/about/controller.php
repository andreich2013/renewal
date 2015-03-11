<?php

class AboutController extends Controller {
    
    protected $table = 'about_us';
    protected $tableTimetable = 'timetable_total';
    protected $tableTimetableMonth = 'timetable';
    protected $model = array(
        'page' => 'about',
        'title' => 'О нас',
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
                'title' => 'about_us'
            ),
//            'debug' => true,
        ));
        
        $this->model['timetable'] = $this->db->select(array(
            'table' => $this->tableTimetable,
//            'debug' => true,
        ));
        
        $this->model['timetableMonth'] = $this->db->select(array(
            'table' => $this->tableTimetableMonth,
//            'debug' => true,
        ));
        
        $this->renderModel(array(
            'view' => '/inc/about/item.php',
            'data' => $this->model['item']
        ));
           
        $this->sendResponseHTML();
    }
    
}
