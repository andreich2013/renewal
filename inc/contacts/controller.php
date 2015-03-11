<?php

class ContactsController extends Controller {
    
    protected $table = 'contacts';
    protected $tableStatic = 'static';
    protected $model = array(
        'page' => 'contacts',
        'title' => 'Контакты',
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
                'id' => '1',
            ),
            'limit' => 1,
        ));
        
        $this->model['phones'] = $this->db->select(array(
            'table' => $this->tableStatic,
            'where' => array(
                'title' => 'phones',
            ),
            'limit' => 1,
        ));
        
        $this->model['title'] = $this->model['item'][0]['title'];
        
        $this->renderModel(array(
            'view' => '/inc/contacts/item.php',
            'data' => $this->model['item'],
        ));
        
        $this->sendResponseHTML();
    }
    
}
