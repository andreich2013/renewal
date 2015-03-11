(function($, _, App) {
    $.fn.playlist = function(options) {
        
        var opt = $.extend({
            template: {}
        }, options);
        
        var template = {
                item: _.template(opt.template.item)
            },
            
            Constructor = function(el) {

                var self = this,
                    list = [],
                    selected = null,
                    $selectedNode = null,
                    $el = $(el);

                function getNextNodeId() {
                    var $list = $el.find('li'),
                        i = $selectedNode.index();
                
                    return i < $list.length-1 ? $list[i+1].dataset.id : _.first($list).dataset.id;
                }

                function getPrevNodeId() {
                    var $list = $el.find('li'),
                        i = $selectedNode.index();
                    
                    return i > 0 ? $list[i-1].dataset.id : _.last($list).dataset.id;
                }

                this.hasItem = function(id) {
                    return !!_.findWhere(list, {id: id});
                };

                this.getItem = function(id) {
                    return _.findWhere(list, {id: id});
                };

                this.addItem = function(item) {
                    if(this.hasItem(item)) { return; }
                    list.push(item);
                    self.trigger("list:add", item);
                };
                
                this.addItems = function(data) {
                    self.trigger("list:add", $.map(data, function(item, key) {
                        var hasItem = self.hasItem(item);
                        
                        if(hasItem) {
                            list.push(item);
                        }
                        
                        return hasItem ? null : item;
                    }));
                };

                this.removeItem = function(id) {
                    var item = _.findWhere(list, {id: id});
                    
                    if(selected === item) {
                        this.selectItem(null);
                    }
                    
                    list.splice(list.indexOf(item), 1);
                    self.trigger("list:remove", item);
                };

                this.isSelected = function(item) {
                    return selected === _.isObject(item) ? this.getItem(item) : item;
                };

                this.selectItem = function(id) {
                    selected = self.getItem(id);
                    self.trigger("list:select", selected);
                };

                this.prevItem = function() {
                    self.selectItem(getPrevNodeId());
                };
                
                this.nextItem = function() {
                    self.selectItem(getNextNodeId());
                };


                this.on("list:select", function(item) {
                    $el.find('li').removeClass('selected');
                    
                    if(!item) { return; }
                    
                    $selectedNode = $el.find('li').filter('[data-id="'+ item.id + '"]');
                    $selectedNode.addClass('selected');
                });

                this.on("list:add", function(data) {
                    $el.append(template.item({
                        data: _.isArray(data) ? data : [data]
                    }));
                });

                this.on("list:remove", function(item) {
                    $el.find('li[data-id="'+ item.id + '"]').remove();
                    if(!!opt.on && typeof opt.on.remove === 'function') {
                        opt.on.remove(item);
                    }
                });

                $el.on('click', '.item-content', function(e) {
                    self.selectItem(this.parentNode.dataset.id);
                });

                $el.on('click', '.fa-close', function(e) {
                    self.removeItem(this.parentNode.dataset.id);
                });
            };
        
        Constructor.prototype.on = App().util.observer.on;
        Constructor.prototype.off = App().util.observer.off;
        Constructor.prototype.trigger = App().util.observer.trigger;
        
        return this.each(function() {
            this.playlist = new Constructor(this);
        });
        
    };
}(jQuery, _, App));