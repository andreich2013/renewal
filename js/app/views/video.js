(function (win, _, $, App) {
    
    App().views.video = (function () {

        var self = this,
            youtubeAPI = App().api.youtube,
            search = new App().util.Search(),
            maxResults = 12,
            pageToken = null,
            isDataLoaded = false,
            template = {
                filter: _.template($("#video-filter-block-template").html()),
                list: _.template($("#page-video-template").html())
            };
            
        var api = {
            
            init: function() {
//                var el = document.getElementById("sortable-video-list");
//
//                Sortable.create(el, {
//                    animation: 150,
//                    handle: '.fa-sort',
//                    group: {
//                        name: 'audio-player',
//                        pull: 'clone'
//                    }
//                });
//
//                _.each($(el).find("li"), function(item) {
//                    if(App().tmp.videoPlaylist.indexOf(item.dataset.id) !== -1) {
//                        item.dataset.inPlaylist = true;
//                    }
//                });
                
                this.initEvents();
            },
            
            initEvents: function() {
                $(".block-preloader").on("click", this.loadMore);
                $('input[name="search"]').on("keyup", this.load);
                $('select[name="section"], input[name="date_from"], input[name="date_to"]').on("change", this.load);
            },
            
            getCache: function() {
                return $.ajax({
                    url: App().config.url.cache,
                    data: {
                        title: 'youtubeVideos'
                    }
                });
            },
            
            load: function(e) {
                var current = 0,
                    ids, next;
                
                if(isDataLoaded || current === -1) { return; }
                
                isDataLoaded = true;
                
                ids = search.calculate(),
                next = current + maxResults;

                youtubeAPI.getVideos({
                    id: ids.slice(current, next < ids.length ? next : ids.length).join(',')
                }).then(function(data) {
                    $("#page-container ul").html(template.list({
                        collection: data.items
                    }));

                    search.current.set(next);

                    isDataLoaded = false;
                });
            },
            
            loadMore: function(e) {
                var current = search.current.get(),
                    ids, next;
                
                if(isDataLoaded || current === -1) { return; }
                
                isDataLoaded = true;
                
                ids = search.tmp.get(),
                next = current + maxResults;
                
                youtubeAPI.getVideos({
                    id: ids.slice(current, next < ids.length ? next : ids.length).join(',')
                }).then(function(data) {
                    $("#page-container ul").append(template.list({
                        collection: data.items
                    }));

                    search.current.set(next);

                    isDataLoaded = false;
                });
            }
            
        };

        youtubeAPI.init().done(function() {
            $.when(
                youtubeAPI.getPlaylists(),
                api.getCache()
            ).then(function(playlists, searchData) {
                var $form = $(".post_form"),
                    $dateFrom, $dateTo;
                
                $form.html(template.filter({
                    sections: playlists[0].items,
                    section: '',
                    dateFrom: '',
                    dateTo: '',
                    search: ''
                }));
                
                $dateFrom = $form.find('input[name="date_from"]');
                $dateTo = $form.find('input[name="date_to"]');
                
                search.dom.set('select', $form.find('select[name="section"]')[0]);
                search.dom.set('dateFrom', $dateFrom[0]);
                search.dom.set('dateTo', $dateTo[0]);
                search.dom.set('search', $form.find('input[name="search"]')[0]);
                search.data.set(JSON.parse(searchData[0][0].data));
                
                $dateFrom.glDatePicker(App().util.defaults.datepicker);
                $dateTo.glDatePicker(App().util.defaults.datepicker);
                
                api.load();

                App().views.video.init();
            });
        });

        return api;

    }());
            
}(window, _, jQuery, App));