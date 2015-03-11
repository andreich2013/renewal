(function($, _, App) {
    
    $.fn.audioPlayer = function(options) {
        
        var opt = $.extend({
            root: null,
            template: {}
        }, options);
        
        var Constructor = function(el) {

            var self = this,
                model = null,
                audio = new Audio,
                canPlay = {
                    ogg: !!audio.canPlayType && audio.canPlayType('audio/ogg; codecs="vorbis"') != "",
                    mp3: !!audio.canPlayType && audio.canPlayType('audio/mpeg; codecs="mp3"') != ""
                },

                play = el.querySelector('.fa-player-play'),

                $el = $(el),
                $wrapper = $(".player-wrapper"),
                $progressBar = $("#player-progress"),
                $volumeBar = $("#jp_volume_bar"),
                $loadingBar = $progressBar.children(),
                $progressSlider = $loadingBar.children(),
                $title = $("#song_title"),
                $currentTime = $("#total_time"),
                $duration = $("#play_time"),
                progressWidth = $progressBar.width(),
                volumeWidth = $volumeBar.width();

            function timeToMMSS(time) {
                var mm = parseInt((time / 60) % 60),
                    ss = parseInt(time % 60);

                return (mm < 10 ? '0' + mm : mm) + ':' + (ss < 10 ? '0' + ss : ss);

            };

            this.isHidden = null;

            this.init = function() {
                attachEvents();
                this.changeVolume(0.75);
                this.isHidden = $el.hasClass('player-hidden');
            };
            
            function attachEvents(){
                audio.addEventListener('loadedmetadata', function() {
                    model.isLoaded = true;

                    self.play();

                    $duration.html(timeToMMSS(audio.duration));
                    $currentTime.html('');
                }, false);
                audio.addEventListener("timeupdate", function(e) {

                    $currentTime.html(timeToMMSS(audio.currentTime));
                    $progressSlider.width(audio.currentTime/audio.duration*100 + '%');

                    if(model.isLoaded) {
                        var diff = audio.seekable.end(0)/audio.duration;
                        $loadingBar.width(progressWidth*diff);
                    }

                }, false);

                audio.addEventListener('ended', function(e) {
                    self.stop();                
                    self.next();
                }, false);

                $(play).bind('click', function(e) {
                    this.dataset.isPlaying === "true" ? self.pause() : self.play();
                });
                $el.find('.fa-stop').bind('click', self.stop);
                $el.find('.fa-fast-backward').bind('click', self.prev);
                $el.find('.fa-fast-forward').bind('click', self.next);
                $el.find(".fa-close").bind('click', self.hidePlayer);

                $el.find(".fa-volume-off").bind('click', function(e){
                    self.changeVolume(0.001);
                });

                $el.find(".fa-volume-up").bind('click', function(e){
                    self.changeVolume(1);
                });

                $progressBar.bind('click', function(e){
                    var width = e.pageX - $progressBar.offset().left;
                    self.changeProgress(width/progressWidth);
                });

                $volumeBar.bind('click', function(e) {
                    var width = e.pageX - $volumeBar.offset().left;
                    self.changeVolume(width/volumeWidth);
                });
            };

            this.setModel = function(data) {
                model = data;
                model.isLoaded = false;

                if(!audio.paused){
                    audio.pause();
                }
                
                audio.src = opt.root + (canPlay.mp3 ? model.mp3 : model.ogg);
                
                self.trigger("model:set");
            };

            this.resetModel = function(item) {
                self.stop();
                audio.src = '';
                
                model = null;
                
                self.trigger("model:reset");
            };

            this.play = function(currentTime) {
                if(!model) { return; }
                
                if(typeof currentTime === 'number') {
                    audio.currentTime = currentTime;
                }

                audio.play();
                
                play.dataset.isPlaying = true;
            };

            this.pause = function() {
                if(!model) { return; }
                
                audio.pause();

                play.dataset.isPlaying = false;
            };

            this.stop = function() {
                if(!model) { return; }
                
                self.pause();
                audio.currentTime = 0;
            };

            this.prev = function() {
                if(!model) { return; }
                
                self.trigger("item:prev");
            };

            this.next = function() {
                if(!model) { return; }
                
                self.trigger("item:next");
            };

            this.changeVolume = function(level) {
                audio.volume = level;
                $volumeBar.children().width(level*100 + '%');
            };

            this.changeProgress = function(level) {
                if(!model) { return; }
                
                self.play(level*audio.duration);
                $progressSlider.width(level*100 + '%');
            };

            this.showPlayer = function() {
                $wrapper.removeClass("player-hidden");
                self.isHidden = false;
            };

            this.hidePlayer = function() {
                self.stop();
                $wrapper.addClass("player-hidden");
                self.isHidden = true;
            };

            this.on("model:set", function() {
                var title = model.band + ' - ' + model.title;
                
                $title.attr('title', title).html(title);
                
                $wrapper[0].dataset.model = true;
            });
            
            this.on("model:reset", function() {
                $duration.html('');
                $title.attr('title', '').html('');
                $currentTime.html('');
                
                $loadingBar.width(0);
                $progressSlider.width(0);
                
                $wrapper[0].dataset.model = false;
            });

            this.init();

        };

        Constructor.prototype.on = App().util.observer.on;
        Constructor.prototype.off = App().util.observer.off;
        Constructor.prototype.trigger = App().util.observer.trigger;
        
        return this.each(function() {
            this.audioPlayer = new Constructor(this);
        });
        
    };
    
})(jQuery, _, App);
    