(function (win, _, $, App) {
    
    App().api.youtube = (function () {

        var channelId = App().config.youtube.channelId,
            base = {
                url: 'https://www.googleapis.com/youtube/v3',
                data: {
                    key: App().config.youtube.key,
                    part: 'snippet',
                    fields: 'items(id,snippet)',
                    order: 'date',
                    maxResults: 50
                }
            };
        
        return {

            init: function() {
                return $.getScript("https://www.youtube.com/iframe_api");
            },

            getPlaylistItems: function(data, success) {
                return $.ajax({
                    url: base.url + '/playlistItems',
                    data: $.extend(base.data, {
                        fields: 'items(id,snippet(title,thumbnails(medium(url)),publishedAt)),pageInfo(totalResults),nextPageToken'
                    }, data),
                    success: _.isFunction(success) ? success : null,
                    debug: true
                });
            },

            getPlaylists: function(data, success) {
                return $.ajax({
                    url: base.url + '/playlists',
                    data: $.extend(base.data, {
                        channelId: channelId,
                        fields: 'items(id,snippet(title))'
                    }, data),
                    success: _.isFunction(success) ? success : null,
                    debug: true
                });
            },

            getCategories: function(data, success) {
                return $.ajax({
                    url: base.url + '/videoCategories',
                    data: $.extend({
                        key: App().config.youtube.key,
                        part: 'snippet'
                    }, data),
                    success: _.isFunction(success) ? success : null,
                    debug: true
                });
            },

            getSearch: function(data, success) {
                return $.ajax({
                    url: base.url + '/search',
                    data: $.extend(base.data, {
                        type: 'video',
                        channelId: channelId,
                        fields: 'items(id(videoId,playlistId),snippet(title,thumbnails(medium(url)),publishedAt)),pageInfo(totalResults),nextPageToken'
                    }, data),
                    success: _.isFunction(success) ? success : null,
                    debug: true
                });
            },
            
            getVideos: function(data, success) {
                return $.ajax({
                    url: base.url + '/videos',
                    data: $.extend(base.data, {
                        type: 'video',
                        channelId: channelId,
                        fields: 'items(id,snippet(title,thumbnails(medium)))'
                    }, data),
                    success: _.isFunction(success) ? success : null,
                    debug: true
                });
            }

        };

    }());
    
}(window, _, jQuery, App));