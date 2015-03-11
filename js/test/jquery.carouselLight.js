(function($) {
    
    $.fn.carouselLight = function(options) {
        
        var opt = $.extend({
            navigation: false,
            pagination: false,
            auto: true
        }, options);
        
        var Constructor = function(el) {
            
            var $el = $(el),
                $items = $el.find("input[type='radio']"),
                $current = $items.filter(':checked'),
                $prev = $el.find(".nav-prev"),
                $next = $el.find(".nav-next"),
                state = {
                    items: $.map($items, function(item) {
                        return item.id;
                    }),
                    current: $current.index()
                };

            function changeSlide() {
                var i = state.items.indexOf(this.id),
                    next = (i < state.items.length-1) ? i+1 : 0,
                    prev = (i > 0) ? i-1 : state.items.length-1;

                $prev.attr("for", state.items[prev]);
                $next.attr("for", state.items[next]);
            }

            function auto() {

            }

            function init() {
                $items.on("change", changeSlide);
                $prev.on("change", changeSlide);
                $next.on("change", changeSlide);

                changeSlide.apply($current[0]);

                if(!opt.navigation) {
                    $el.find('.arrows').css('display', 'none');
                }

                if(!opt.pagination) {
                    $el.find('.pagination').css('display', 'none');
                }

                if(!!opt.auto) {
                    auto();
                }
            }
            
            init();
        };
        
        return this.each(function() {
            this.videoPlayer = new Constructor(this);
        });
        
    };
    
})(jQuery);