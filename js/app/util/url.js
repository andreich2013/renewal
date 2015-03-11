(function (win, _, $, App) {
    
    var his = App().api.history;
    
    App().util.url = {
        
        search: {

            parse: function (search) {
                var query = {};

                search = search[0] === '?' ? search.substr(1) : search;

                search.split('&').forEach(function(item) {
                    var tmp = item.split('=');

                    if(tmp.length > 1) {
                        query[tmp[0]] = tmp[1];
                    }
                });

                return query;
            },

            update: function (data) {
                var url = win.location,
                    query = App().util.url.search.parse(url.search),
                    search = '';

                $.extend(query, data);

                if(!$.isEmptyObject(query)) {
                   for(var i in query) {
                        if(!query.hasOwnProperty(i) || !query[i] || query[i].length === 0) { continue; }

                        search += (search.length === 0 ? '?' : '&') + i + '=' + query[i];
                    }
                }

                his.edit({
                    url: url.pathname + search + url.hash
                });
            }

        }

    };
    
}(window, _, jQuery, App));