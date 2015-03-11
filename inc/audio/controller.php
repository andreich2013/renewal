<?php

class AudioController extends Controller {
    
    protected $table = 'audio';
    protected $tableFilter = 'filter_audio';
    protected $itemsPerPage = 36;
    protected $model = array(
        'page' => 'audio',
        'title' => 'Аудио',
        'breadcumbs' => array(
            0 => array(
                'name' => 'Аудио',
                'url' => '/media/audio?section=album_2',
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
        
        $this->model['articles'] = $this->db->select(array(
            'table' => $this->table,
            'where' => $where,
            'order' => array(
                'order' => "DESC",
            ),
            'limit' => ($page > 0 ? ($page - 1) * $this->itemsPerPage : 0) . ", $this->itemsPerPage",
//            'debug' => true,
        ));
        
        $this->renderModel(array(
            'view' => '/inc/audio/list.php',
            'data' => $this->model['articles'],
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
