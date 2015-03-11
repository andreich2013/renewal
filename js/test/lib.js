var Util = (function () {
    
    return {
        isTouch: !!('ontouchstart' in window) ||
                 !!(('msMaxTouchPoints' in window.navigator) && !('onmouseover' in window)),
        
        observer: {
            on: function(eventName, handler) {
                if (!this._eventHandlers) this._eventHandlers = [];
                if (!this._eventHandlers[eventName]) this._eventHandlers[eventName] = [];
                this._eventHandlers[eventName].push(handler);
            },
            off: function(eventName, handler) {
                var handlers = this._eventHandlers[eventName];
                if (!handlers) return;
                for(var i=0; i<handlers.length; i++) {
                    if (handlers[i] == handler) handlers.splice(i--, 1);
                }
            },
            trigger: function(eventName) {
                if (!this._eventHandlers || !this._eventHandlers[eventName]) return;

                var handlers = this._eventHandlers[eventName];
                for (var i = 0; i < handlers.length; i++) {
                    handlers[i].apply(this, [].slice.call(arguments, 1));
                }
            }
        }
        
    };
    
}());

var Controller = (function () {
    
    var win = window,
        $win = $(win),
        doc = win.document,
        $doc = $(doc),
        location = win.location,
        preloader = (function() {

            var counter = 0;

            function togglePreloader(isShow) {
                $('.content-preloader').css({
                    display: isShow ? 'block' : 'none'
                });
            }

            return {
                beforeSend: function (jqXHR, settings) {
                    if(!settings.preloader) {
                        return;
                    }

                    counter+= 1;

                    togglePreloader(true);
                },
                complete: function () {
                    counter-= 1;

                    if(counter < 0) {
                        counter = 0;
                    }

                    if(counter === 0) {
                        togglePreloader(false);
                    }
                }
            };

        }()),
        navigation = (function () {
                
            var history = win.history,
                historyAPI = {
                    add: function (state) {
                        history.pushState(state, state.title, state.url);
                    },
                    edit: function (state) {
                        history.replaceState(state, state.title, state.url);
                    } 
                };
                
            function parseUrlSearch(search) {
                var query = {};
                
                search = search[0] === '?' ? search.substr(1) : search;
                
                search.split('&').forEach(function(item) {
                    var tmp = item.split('=');
                    
                    if(tmp.length > 1) {
                        query[tmp[0]] = tmp[1];
                    }
                });
                
                return query;
            }    
            
            function updateUrlSearch(data) {
                var url = window.location,
                    query = parseUrlSearch(url.search),
                    search = '';
                
                $.extend(query, data);
                
                if(!$.isEmptyObject(query)) {
                   for(var i in query) {
                        if(!query.hasOwnProperty(i) || !query[i] || query[i].length === 0) { continue; }
                        
                        search += (search.length === 0 ? '?' : '&') + i + '=' + query[i];
                    }
                }

                historyAPI.edit({
                    url: url.pathname + search + url.hash
                });
            } 
            
            function changePage(url, data) {
                historyAPI.add({
                    url: url
                });

                config.reset();

                renderContent(data);
            }

            function renderContent(html) {
                $("#content-right").html(html);
            }

            function sendData(url) {

            }

            function onpopstate(e) {
                $.ajax({
                    url: e.state.url,
                    dataType: 'html',
                    success: renderContent,
                    debug: true,
                });
            }
                
            return {
                
                historyAPI: historyAPI,
                changePage: changePage,
                sendData: sendData,
                updateUrlSearch: updateUrlSearch,
                parseUrlSearch: parseUrlSearch,
                
                init: function() {
                    win.onload = function() { 
                        win.setTimeout(function() { 
                            win.onpopstate = onpopstate, false 
                        }, 1);
                    };
                    
                    historyAPI.edit({
                        url: location.href.substr(URL_ROOT.length),
                        title: doc.title
                    });
                    
                    // all links except:
                    // 1. if the link has outside url - it must have attribute [name="sync"]
                    // 2. if url of the link has hash(#) - this is anchor link
                    $doc.on('click', 'a', function(e) {
                            
                        if(this.name === 'sync' || this.href.indexOf('#') !== -1) { return; }
                            
                        e.preventDefault();
                        
                        $.ajax({
                            url: this.pathname + this.search,
                            dataType: 'html',
                            success: function(data) {
                                changePage(this.url, data);
                            },
                            debug: true
                        });
                    });
                }
                
            };
                
        }()),
        videoPage = (function () {
            
            var youtubeAPI = (function () {

                var base = {
                        APIUrl: 'https://www.googleapis.com/youtube/v3',
                        data: {
                            key: config.youtube.key,
                            part: 'snippet',
                            fields: 'items(id,snippet)',
                            order: 'date',
                            maxResults: 50
                        }
                    };

                return {

                    getPlaylistItems: function(data, success) {
                        return $.ajax({
                            url: base.APIUrl + '/playlistItems',
                            data: $.extend(base.data, {
                                fields: 'items(id,snippet(title,thumbnails(medium(url)),publishedAt))'
                            }, data),
                            success: typeof success === 'function' ? success : null,
                            debug: true
                        });
                    },

                    getPlaylists: function(data, success) {
                        return $.ajax({
                            url: base.APIUrl + '/playlists',
                            data: $.extend(base.data, {
                                channelId: config.youtube.channelId,
                                fields: 'items(id,snippet(title))'
                            }, data),
                            success: typeof success === 'function' ? success : null,
                            debug: true
                        });
                    },

                    getCategories: function(data, success) {
                        return $.ajax({
                            url: base.APIUrl + '/guideCategories',
                            data: $.extend(base.data, {
                                channelId: config.youtube.channelId,
                                fields: ''
                            }, data),
                            success: typeof success === 'function' ? success : null,
                            debug: true
                        });
                    },

                    getSearch: function(data, success) {
                        return $.ajax({
                            url: base.APIUrl + '/search',
                            data: $.extend(base.data, {
                                type: 'video',
                                channelId: config.youtube.channelId,
                                fields: 'items(id,snippet(title,thumbnails(medium(url)),publishedAt))'
                            }, data),
                            success: typeof success === 'function' ? success : null,
                            debug: true
                        });
                    }

                };

            }()),
            template = {
                list: _.template($("#page-video").html())
            };
            
            var query = navigation.parseUrlSearch(window.location.search),
                fn = query.section ? 'getPlaylistItems' : 'getSearch';
            
//            youtubeAPI.getCategories(null, function(data) {
//                console.log(data);
//            });
            
//            $.when(
//                youtubeAPI.getPlaylists(),
//                youtubeAPI.getPlaylistItems({
//                    playlistId: query.section,
//                    publishedAfter: query.date_from ? query.date_from : '',
//                    publishedBefore: query.date_to ? query.date_to : '',
//                    maxResults: 12
//                })
////                youtubeAPI.getSearch({
//////                    videoCategoryId: query.section ? query.section : '',
////                    publishedAfter: query.date_from ? query.date_from : '',
////                    publishedBefore: query.date_to ? query.date_to : '',
////                    maxResults: 12
////                })
//            ).then(function(playlists, search) {
//                $("#page-container").html(template.list({
//                    sections: playlists[0].items,
//                    section: query.section,
//                    dateFrom: query.date_from,
//                    dateTo: query.date_to,
//                    collection: search[0].items
//                }));
//            });
            
            
            
            
            
        }());

    function getFormData($form) {
        var data = {};

        _.each($form.serializeArray(), function(item) {
            if(!!item.value) {
                data[item.name] = item.value;
            }
        });

        return data;
    }

    function beforeSend(jqXHR, settings) {
        if(this.debug) {
            this.time = {
                start: new Date().getTime() / 1000
            };
        };

        preloader.beforeSend(jqXHR, settings);
    } 

    // init
    $.ajaxSetup({
        type: 'GET',
        dataType: 'json',
        debug: false,
        preloader: true,
        beforeSend: beforeSend,
        error: function (jqXHR) {
            if(this.debug) {
                console.log(jqXHR);
            }
            
            $("#popup-error-toggle").attr("checked", true);
            $("#popup-error p").text(jqXHR.responseText);
        },
        complete: function(jqXHR, status) {
            if(this.debug) {
                this.time.end = new Date().getTime() / 1000;
                console.log(this.time.end - this.time.start);
            }
            
            preloader.complete(jqXHR, status);
        }
    });
    
    var api = {
        
        navigation: navigation,
        
        init: {
            
            youtubeAPI: function() {
                
            },
            
            soundcloudAPI: function() {
                SC.initialize({
                    client_id: config.soundcloud.clientID,
                    redirect_uri: 'http://renewal.p.ht/'
                });
            }
            
        },
        
        filter: {
            
            on: Util.observer.on,
            off: Util.observer.off,
            trigger: Util.observer.trigger,
            
            template: _.template($("#filter-template").html()),
            
            chooseCategories: function(e) {
                $.ajax({
                    url: config.url.filter,
                    data: {
                        table: 'video',
                        section: this.value
                    },
                    success: function(data) {
                        $("#category-select").html(api.filter.template({data: data})).attr('disabled', !data);
                    },
                    debug: true
                });
            },
            
            loadContent: function(e) {
                e.preventDefault();
                
                $.ajax({
                    url: location.pathname.replace(/\/\d+$/, ''),
                    dataType: 'html',
                    data: getFormData($(this)),
                    beforeSend: function(jqXHR, settings) {
                        if(location.pathname + location.search === this.url) {
                            return jqXHR.abort();
                        }
                        this.time = {
                            start: new Date().getTime() / 1000
                        };
                        
                        beforeSend(jqXHR, settings);
                    },
                    success: function(data) {
                        navigation.changePage(this.url, data);
                    },
                    debug: true
                });
            }
        },
        
        pages: {
            
            main: {
                
                init: function() {
                    var $carousel = $('.top-carousel .jcarousel-container'),
                    $pagination = $('.jcarousel-pagination');

                    $carousel.jcarousel({
                        wrap: 'circular',
                        transitions: {
                            transforms: true,
                            transforms3d: true,
                            easing: 'ease'
                        }
                    });

                    tmp.jcarousels.push($carousel);

                    $carousel.jcarouselAutoscroll({
                        interval: 5000
                    });

                    $('.jcarousel-prev').jcarouselControl({
                        target: '-=1'
                    });

                    $('.jcarousel-next').jcarouselControl({
                        target: '+=1'
                    });

                    $pagination.jcarouselPagination({
                        item: function(page, items) {
                            return '<i href="#' + page + '" class="fa ' + (page === '1' ? 'fa-dot-circle-o' : 'fa-circle-o') + '"></i>';
                        }
                    });

                    $pagination.on('jcarouselpagination:active', 'i', function() {
                        this.className = 'fa fa-dot-circle-o';
                    });

                    $pagination.on('jcarouselpagination:inactive', 'i', function() {
                        this.className = 'fa fa-circle-o';
                    });
                }    
            },
            
            gallery: {
                
                init: function() {
                    var $carousel = $('.gallery-carousel .jcarousel-container');

                    $carousel.jcarousel({
                        wrap: 'circular',
                        transitions: {
                            transforms: true,
                            transforms3d: true,
                            easing: 'ease'
                        }
                    });
                    
                }
            }
        }
    };
    
    return api;
    
}());