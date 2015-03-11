(function($){
    $.fn.accordion = function(options) {  
        var opt = {
            mouseenter: true
	},
        plugin = function (opt) {
            
            var $this = $(this),
                $wrapper = $('.accordion'),
                $pushTag = $('.dropdown_teg > li > a'),
                $activeItem = $this.find('.active');

            //initialize

            $activeItem.addClass('on')
                       .parents('.dropdown_teg').addClass("list-show");;
            $activeItem.parents('li')
                       .addClass('on');
            $activeItem.children('.dropdown_teg').addClass("list-show");

            $pushTag.on("click", function(){
                
                var $this = $(this),
                    $item = $this.parent('li'),
                    $parentList = $item.parent('.dropdown_teg'),
                    $itemInsideList = $item.children('.dropdown_teg'),
                    $parentListItems = $parentList.children('li'),
                    $insideLists = $parentListItems.children('.dropdown_teg');
                    
                $wrapper.find('li').removeClass('active');
                $item.addClass('active');
                $insideLists.find('li').removeClass('active');

                
                $itemInsideList.addClass("list-show");

                $parentListItems.removeClass('on');
                $insideLists.find('li').removeClass('on');
                $item.addClass('on');
                $parentListItems.not('.active').find('.dropdown_teg').removeClass("list-show");  

            });
            
            if(opt.mouseenter) {
                $pushTag.hover(function(e) {
                    $(this).hoverFlow(e.type, { marginLeft: 10 }, 250);
                }, function(e) {
                    $(this).hoverFlow(e.type, { marginLeft: 0 }, 250);
                });
            }
        };

        return this.each(function() {
            if (options) {
                $.extend(opt, options);
            }
            
            plugin.apply(this, [opt]);
        });
    };
})(jQuery);