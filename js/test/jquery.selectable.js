(function($, App){
    $.fn.selectable = function(options) {  
        
        var opt = $.extend({
            tag: "li"
        }, options);
        
        var Constructor = function(el) {
            
            var self = this,
                $win = $(window),
                $doc = $(document),
                $el = $(el),
                $items = $el.find(opt.tag),
                selected = [];
        
            function isSelected(item) {
                return selected.indexOf(item) !== -1;
            }
        
            function getSelected() {
                return selected;
            }
            
            function addSelected(item) {
                selected.push(item);
                self.trigger("selected:add", item);
            }
            
            function addSelectedFew(list) {
                list.forEach(function(item) {
                    addSelected(item);
                });
            }
            
            function removeSelected(item) {
                selected.splice(selected.indexOf(item), 1);
                self.trigger("selected:remove", item);
            }
            
            function clearSelected() {
                while(selected.length > 0) {
                    self.trigger("selected:remove", selected[0]);
                    selected.splice(0, 1);
                }
            }
            
            $items.on("click", function(e) {
                if (!e.ctrlKey) {
                    clearSelected();
                }
                
                if (e.shiftKey) {
                    
                }
                
                isSelected(this) ? removeSelected(this) : addSelected(this);
            });
            
            this.on("selected:add", function(item) {
                $(item).addClass('selected');
                if(!!opt.on && typeof opt.on.add === 'function') {
                    opt.on.add(item);
                }
            });
            
            this.on("selected:remove", function(item) {
                $(item).removeClass('selected');
                if(!!opt.on && typeof opt.on.remove === 'function') {
                    opt.on.remove(item);
                }
            });
            
            return {
                getSelected: getSelected,
                addSelected: addSelected,
                removeSelected: removeSelected
            };
            
        };
        
        Constructor.prototype.on = App().util.observer.on;
        Constructor.prototype.off = App().util.observer.off;
        Constructor.prototype.trigger = App().util.observer.trigger;
        
        return this.each(function() {
            new Constructor(this);
        });
        
    };
}(jQuery, App));