<?php

class HomeGroupsController extends Controller {
    
    protected $table = 'home_groups';
    protected $model = array(
        'page' => 'home_groups',
        'title' => 'Домашние группы',
        'breadcrumbs' => array(
            0 => array(
                'name' => 'О нас',
                'url' => '/about',
            ),
            1 => array(
                'name' => 'Домашние группы',
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
        
        $this->model['item'] = $this->db->select(array(
            'table' => $this->table,
            'order' => array(
                'order' => 'DESC'
            ),
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
            'view' => '/inc/homeGroups/list.php',
            'breadcrumbs' => $this->model['breadcrumbs'],
            'data' => $this->model['item']
        ));
           
        $this->sendResponseHTML();
    }
    
}
