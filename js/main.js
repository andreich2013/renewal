$(document).ready(function() {
    var doc = document,
        $doc = $(doc);
    
    if(config.async) {
        App().controller.init();
    }
    
    App().api.youtube.init();
//    $.getScript("http://connect.soundcloud.com/sdk.js").done(Controller.init.soundcloudAPI);
    
    $('#menu').accordion({
        mouseenter: !App.TOUCH
    });

    if(App.TOUCH) {
        $('#menu').addClass('animation-transition');
    }

    $('#back-to-top').scrollToTop();
    
    $doc.on('change', '#section-select', App().views.filter.chooseCategories);
    $doc.on('submit', '#filter-form', App().views.filter.loadContent);
    
    // audio player
    
    var $audioPlayer = $('#audioplayer'),
        $playlist = $audioPlayer.find("#audio-playlist"),
        audioPlayer = $audioPlayer.audioPlayer({
            root: '/upload/audio/'
        }).prop('audioPlayer'),
        audioPlaylist = $playlist.playlist({
                            template: {
                                item: $("#playlist-audio-template").html()
                            }
                        }).prop('playlist');
    
    function togglePlaylistItems(item) {
        var el = doc.querySelector('#sortable-list li[data-id="' + item.id + '"]'),
            bool = item.inPlaylist === 'true' ? false : true;
        
        if(el && el.dataset !== item) {
            el.dataset.inPlaylist = bool;
        }
        
        item.inPlaylist = bool;
    }
    
    function showAudioPlayer() {
        if(audioPlayer.isHidden) {
            audioPlayer.showPlayer();
        }
    }
    
    audioPlaylist.on("list:select", function(item) { 
        item ? audioPlayer.setModel(item) : audioPlayer.resetModel();
    });
    
    audioPlayer.on("item:prev", audioPlaylist.prevItem);
    audioPlayer.on("item:next", audioPlaylist.nextItem);
    
    audioPlaylist.on("list:select", showAudioPlayer);
    audioPlaylist.on("list:add", showAudioPlayer);
    audioPlaylist.on("list:add", togglePlaylistItems);
    audioPlaylist.on("list:remove", togglePlaylistItems);
    
    audioPlaylist.on("list:add", function(item) {
        tmp.audioPlaylist.push(item.id);
    });
    audioPlaylist.on("list:remove", function(item) {
        tmp.audioPlaylist.splice(tmp.audioPlaylist.indexOf(item.id), 1);
    });
    
    if(!App.TOUCH) {
        $('.playlist-container').jScrollPane({
            autoReinitialise: true,
            contentWidth: 0
        });
    }
    
    Sortable.create($playlist[0], {
        animation: 150,
        handle: '.fa-sort',
        group: 'audio-playlist'
    });

    $doc.on('click', '#sortable-list .fa-toggle', function(e) {
        var data = this.parentNode.dataset,
            bool = data.inPlaylist === 'true' ? false : true;
        
        audioPlaylist[bool ? 'addItem' : 'removeItem'](bool ? data : data.id);
    });
    
    $doc.on('click', '#sortable-list a', function(e) {
        var data = this.parentNode.dataset;
        
        e.preventDefault();
        
        if(!audioPlaylist.hasItem(data.id)) {
            audioPlaylist.addItem(data);
        }
        
        audioPlaylist.selectItem(data.id);
    });
    
    $audioPlayer.find('.fa-toggle-playlist').on('click', function(e) {
        $audioPlayer[0].dataset.isPlaylistHidden = $audioPlayer[0].dataset.isPlaylistHidden === "true" ? false : true;
    });
    
    $audioPlayer.draggable({
        handle: '.player-drag-handle',
        posMinMax: {
            left: null,
            top: null,
            right: null,
            bottom: 257
        }
    });
    
    // video player
    
    var $videoPlayer = $('#videoplayer'),
        $videoPlaylist = $videoPlayer.find("#video-playlist"),
        videoPlayer = $videoPlayer.videoPlayer({
            playerId: 'player-video',
            commentsId: "vk_comments_video",
            template: $('#videoPlayer-template').html()
        }).prop('videoPlayer');
//        videoPlaylist = $videoPlaylist.playlist({
//                            template: {
//                                item: $("#playlist-video-template").html()
//                            }
//                        }).prop('playlist');
    
    videoPlayer.on('url:update', App().util.url.search.update);
    
    $doc.on('click', '#sortable-video-list a', function(e) {
        var data = this.parentNode.dataset;
        
        e.preventDefault();
        
        videoPlayer.setModel(data);
    });
    
//    $videoPlayer.find('.fa-toggle-size').on('click', videoPlayer.popup.roll);
//    $videoPlayer.find('.fa-close').on('click', videoPlayer.popup.close);
    
});
