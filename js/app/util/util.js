(function (win, _, $, App) {
    
    App().util = {
        isTouch: !!('ontouchstart' in win) ||
                 !!(('msMaxTouchPoints' in win.navigator) && !('onmouseover' in win)),
         
        maxPages: 5,

        templates: {
            pagination: _.template($("#pagination-template").html())
        },

        fn: {

            getFormData: function ($form) {
                var data = {};

                _.each($form.serializeArray(), function(item) {
                    if(!!item.value) {
                        data[item.name] = item.value;
                    }
                });

                return data;
            },
            
            buildPagination: function(options) {
                
                var maxPages = 5,
                    count = Math.ceil(options["length"] / options["items"]),
                    current = !!options["page"] && options["page"] > 0 ? options["page"] : 1,
                    pages = [];

                switch(current) {
                    case 1:
                    case 2: 
                        for (var j = 0; j < (count < maxPages ? count : maxPages); j++) {
                            pages.push(j+1);
                        }
                        break;
                    case count-1:
                    case count: 
                        for (var j = 0; j < (count < maxPages ? count : maxPages); j++) {
                            pages.unshift(count-j);
                        }
                        break;
                    default:
                        pages = [current-2,current-1,current,current+1,current+2];
                }
                
                return App().util.templates.pagination({
                    maxPages: maxPages,
                    count: count,
                    current: current,
                    pages: pages,
                    host: options['url_parts']['host'],
                    query: options['url_parts']['query']
                })
                
            }

        }

    };
    
}(window, _, jQuery, App));