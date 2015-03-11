(function($, _, App) {
    
    $.fn.videoPlayer = function(options) {
        
        var opt = $.extend({
                playerId: null,
                commentsId: null,
                template: {}
            }, options);
        
        var Constructor = function(el) {

            var self = this,
                model = null,
                link = '',
                video,

                loc = window.location,
                play = el.querySelector('.fa-player-play'),
                iframe = el.querySelector('iframe'),
                
                $html = $('html'),
                $el = $(el),
                $iframe = $(iframe),
                $title = $el.find('.player-video-title'),
                $comments = $('#' + opt.commentsId);
                
                
            this.isHidden = null;
            this.isCompressed = null;

            this.init = function() {
                video = new YT.Player(opt.playerId, {
                    height: 315,
                    width: 560,
                    playerVars: { 
                        autoplay: 0
                    },
                    events: {
                      onReady: function() {
                          console.log('ready');
                      },
                      onStateChange: function() {
                          console.log('onStateChange');
                      }
                    }
                });
//                video.setVolume(75);
                
                attachEvents();
                self.isHidden = $el.hasClass('player-hidden');
            };
            
            function load() {
                var url = window.location;

                video.loadVideoById(model.address.substr(model.address.lastIndexOf('/')+1));

                if(model.comments) {
                    $comments.removeClass('hide').html('');
                    VK.init({ 
                        apiId: model.comments, 
                        onlyWidgets: true
                    });
                    VK.Widgets.Comments(opt.commentsId, {
                        limit: 5,
                        width: 560,
                        attach: false,
                        autoPublish: 0
                    });
                } else {
                    $comments.addClass('hide').html('');
                }

                self.trigger("url:update", {
                    video: model.url
                });
            }
            
            function attachEvents(){
//                video.on('ended', function(e) {
//                    self.stop();                
//                    self.next();
//                }, false);
//
//                $(play).bind('click', function(e) {
//                    this.dataset.isPlaying === "true" ? self.pause() : self.play();
//                });
                
                $el.find('.fa-stop').bind('click', self.stop);
                $el.find('.fa-fast-backward').bind('click', self.prev);
                $el.find('.fa-fast-forward').bind('click', self.next);
                $el.find('.fa-close').bind('click', self.hidePlayer);
                $el.find('.fa-toggle-size').on('click', self.toggleSize);
            };

            this.setModel = function(data) {
                model = data;
                
                model.link = 'video=' + model.url;
                
                load();
                
                self.trigger("model:set");
            };

            this.resetModel = function(item) {
                self.stop();
                
                model = null;
                
                self.trigger("model:reset");
            };

            this.play = function() {
                video.playVideo();
            };

            this.pause = function() {
                video.pauseVideo();
            };

            this.stop = function() {
                video.stopVideo();
            };

            this.prev = function() {
                video.previousVideo();
                
                self.trigger("item:prev");
            };

            this.next = function() {
                video.nextVideo();
                
                self.trigger("item:next");
            };

            this.toggleSize = function(toggle) {
                var url = window.location,
                    bool;
                
                self.isCompressed = toggle === 'expand' ?  false : 
                                    toggle === 'compress' ?  true : 
                                    !self.isCompressed;
                     
                bool = self.isCompressed;
                
                
                
                $el[bool ? 'addClass' : 'removeClass']('compress');
                $html.css('overflow', bool ? '' : 'hidden');
                video.setSize(bool ? 240 : 560, bool ? 135 : 315);

                self.trigger("url:update", {
                    video: bool ? "" : model.url
                });
                
            };

            this.showPlayer = function() {
                $el.removeClass("player-hidden");
                self.isHidden = false;
            };

            this.hidePlayer = function() {
                self.isHidden = true;
                self.resetModel();
                
                $el.addClass("player-hidden");
                $html.css('overflow', 'auto');
            };

            this.on("model:set", function() {
                el.dataset.model = true;
                
                $title.attr('title', model.title).html(model.title);
                
                self.toggleSize('expand');
                self.showPlayer();
            });
            
            this.on("model:reset", function() {
                el.dataset.model = false;
                
                self.trigger("url:update", {
                    video: ""
                });
            });

            window.onYouTubeIframeAPIReady = function() {
                self.init();
            };

        };

        Constructor.prototype.on = App().util.observer.on;
        Constructor.prototype.off = App().util.observer.off;
        Constructor.prototype.trigger = App().util.observer.trigger;
        
        return this.each(function() {
            this.videoPlayer = new Constructor(this);
        });
        
    };
    
})(jQuery, _, App);
