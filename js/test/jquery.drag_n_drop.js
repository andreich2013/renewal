(function($, window) {
    
    $.event.props.push('dataTransfer');
    $.event.props.push('pageX');
    $.event.props.push('pageY');
    
    $.fn.draggable = function(options) {
        
        var doc = window.document,
            $doc = $(doc),
            opt = $.extend({
                dropzone: doc,
                handle: null,
                posMinMax: {
                    left: null,
                    top: null,
                    right: null,
                    bottom: null
                }
            }, options),
                
        Constructor = function(el) {
            
            var self = this,
                $el = $(el),
                $handle = opt.handle ? $el.find(opt.handle) : $el,
                $dropzone = opt.dropzone ? $(opt.dropzone) : $doc,
                coords = {};
            
            function calculate(data) {
                var c = opt.posMinMax,
                    tmp = $dropzone.offset(),
                    offset = !!tmp ? tmp : {top: 0, left: 0},
                    pos = {
                        left: typeof c.left === 'function' ? c.left(el, self) : c.left,
                        top: typeof c.top === 'function' ? c.top(el, self) : c.top,
                        right: typeof c.right === 'function' ? c.right(el, self) : c.right,
                        bottom: typeof c.bottom === 'function' ? c.bottom(el, self) : c.bottom
                    },
                    min = {
                        x: offset.left + (pos.left ? pos.left : 0),
                        y: offset.top + (pos.top ? pos.top : 0)
                    },
                    max = {
                        x: (offset.left + $dropzone.width()) - (pos.right ? pos.right : $el.width()),
                        y: (offset.top + $dropzone.height()) - (pos.bottom ? pos.bottom : $el.height())
                    };
                        
                data.x < min.x ? data.x = min.x : null;
                data.y < min.y ? data.y = min.y : null;
                        
                data.x > max.x ? data.x = max.x : null;
                data.y > max.y ? data.y = max.y : null;
                        
                return data;
            } 
            
            $handle.on('dragstart', function(e) {
                var offset = $(this).offset();
                        e.dataTransfer.setData('Object', e.target);
                coords.x = e.pageX - offset.left;
                coords.y = e.pageY - offset.top;
            });
                    
            $dropzone.on('dragover', function(e) {
                e.preventDefault();
            }).on('drop', function(e) {
                var page = calculate({
                    x: e.pageX - coords.x,
                    y: e.pageY - coords.y
                });
                
                $el.css({
                    top: page.y,
                    left: page.x
                });
            });
            
        };
        
        return this.each(function() {
            new Constructor(this);
        });
    };
}(jQuery, window));
    