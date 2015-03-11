<?php

    require_once(getenv('DOCUMENT_ROOT') . '/lib/config.php');
    require_once(getenv('DOCUMENT_ROOT') . '/lib/lib.php');
    require_once(getenv('DOCUMENT_ROOT') . '/lib/Google/autoload.php');

    $client = new Google_Client();
    $client->setDeveloperKey($config['youtube']['key']);
    $youtube = new Google_Service_YouTube($client);
    $db = new DB($config['db']);

    function getPlaylists($pageToken) {
        global $config, $youtube;
        return $youtube->playlists->list('id,snippet', array(
            'channelId' => $config['youtube']['channelId'],
            'maxResults' => 50,
            'pageToken' => $pageToken,
        ));
    }
    
    function getSearch($pageToken) {
        global $config, $youtube;
        return $youtube->search->listSearch('id,snippet', array(
            'type' => 'video',
            'channelId' => $config['youtube']['channelId'],
            'maxResults' => 50,
            'pageToken' => $pageToken,
        ));
    }
    
    function getPlaylistItems($pageToken, $playlistId) {
        global $config, $youtube;
        return $youtube->playlistItems->listPlaylistItems('id,snippet', array(
            'playlistId' => $playlistId,
            'maxResults' => 50,
            'pageToken' => $pageToken
        ));
    }
    
    function parsePlaylistsItems($items) {
        $responce = array();
        
        foreach ($items['items'] as $item) {
            if(!$item['snippet']['resourceId']['videoId']) { continue; }
            
            $date = new DateTime($item['snippet']['publishedAt']);
            
            array_push($responce, array(
                'id' => $item['snippet']['resourceId']['videoId'],
                'p' => $item['snippet']['playlistId'],
                's' => str_replace('"', '\"', mb_convert_case($item['snippet']['title'], MB_CASE_LOWER, "UTF-8")),
                't' => $date->getTimestamp()
            ));
        }
        
        return $responce;
    }
    
    function parseSearch($search) {
        $responce = array();
        
        foreach ($search['items'] as $item) {
            $date = new DateTime($item['snippet']['publishedAt']);
            
            array_push($responce, array(
                'id' => $item['id']['videoId'],
                's' => str_replace('"', '\"', $item['snippet']['title']),
                't' => $date->getTimestamp()
            ));
        }
        
        return $responce;
    }
    
    try {
        $responce = array();
        
        $playlists = $youtube->playlists->listPlaylists('id', array(
            'channelId' => $config['youtube']['channelId'],
            'maxResults' => 50,
        ));

        foreach ($playlists['items'] as $playlist) {
            $pageToken = null;
            
            $items = getPlaylistItems($pageToken, $playlist['id']);
            
            $responce = array_merge($responce, parsePlaylistsItems($items));
            
            $pageToken = $items['nextPageToken'];
            
            while($pageToken == true) {

                $items = getPlaylistItems($pageToken, $playlist['id']);
            
                $responce = array_merge($responce, parsePlaylistsItems($items));

                $pageToken = $items['nextPageToken'];

            }
        }

    } catch (Google_ServiceException $e) {
        $responce .= sprintf('<p>A service error occurred: <code>%s</code></p>', htmlspecialchars($e->getMessage()));
    } catch (Google_Exception $e) {
        $responce .= sprintf('<p>An client error occurred: <code>%s</code></p>', htmlspecialchars($e->getMessage()));
    }
    
    $db->update(array(
        'table' => 'cache',
        'data' => array(
            'data' => json_encode($responce, JSON_UNESCAPED_UNICODE)
        ),
        'where' => array(
            "title" => "youtubeVideos"
        )
    ));
    
    echo '<pre>';
    print_r($responce);
    echo '</pre>';
    exit();
?>

