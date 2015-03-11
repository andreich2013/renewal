(function (win, _, $, App) { 
    
    var check = {
        
        playlistId: function(item, id) {
            return id ? item.p === id : true;
        },
        
        search: function(item, search) {
            return search ? item.s.indexOf(search) !== -1 : true;
        },
        
        dateFrom: function(item, time) {
            return time ? item.t >= time : true;
        },
        
        dateTo: function(item, time) {
            return time ? item.t <= time : true;
        }
        
    };
    
    App().util.Search = function(opts) {
        
        var select = opts && opts.dom ? opts.dom.select : null,
            dateFrom = opts && opts.dom ? opts.dom.dateFrom : null,
            dateTo = opts && opts.dom ? opts.dom.dateTo : null,
            search = opts && opts.dom ? opts.dom.search : null,
            
            data = opts && opts.data ? opts.data : [],
            length = data.length,
            current = 0,
            tmp = [],
            
            api = {
            
                data: {
                    set: function(newData) {
                        data = newData;
                        length = data.length;
                    },
                    reset: function() {
                        api.data.set([]);
                    },
                    get: function() {
                        return data;
                    }
                },

                getLength: function() {
                    return length;
                },

                tmp: {
                    set: function(data) {
                        tmp = data;
                    },
                    reset: function() {
                        api.tmp.set([]);
                    },
                    get: function() {
                        return tmp;
                    }
                },

                current: {
                    set: function(num) {
                        current = num <= tmp.length ? num : -1;
                    },
                    reset: function() {
                        api.current.set(0);
                    },
                    get: function() {
                        return current;
                    }
                },

                dom: {
                    set: function(name, el) {
                        switch(name) {
                            case 'select': select = el; break;
                            case 'dateFrom': dateFrom = el; break;
                            case 'dateTo': dateTo = el; break;
                            case 'search': search = el; break;
                        }
                    },
                    get: function(name) {
                        switch(name) {
                            case 'select': return select;
                            case 'dateFrom': return dateFrom;
                            case 'dateTo': return dateTo;
                            case 'search': return search;
                        }
                    }
                },

                calculate: function() {
                        
                    var val = select.options[select.selectedIndex].value,
                        p = val !== '0' ? val : null,
                        from = dateFrom.value ? dateFrom.value : null,
                        to = dateTo.value ? dateTo.value : null,
                        s = search.value ? search.value : null;
                        
                    api.tmp.reset();
                    api.current.reset();
                        
                    for(var i = 0, item; i < length; i=i+1) {
                        item = data[i];

                        if(check.playlistId(item, p) && 
                           check.search(item, s) && 
                           check.dateFrom(item, from) && 
                           check.dateTo(item, to)) {
                                tmp.push(item.id);
                        }
                    }

                    tmp = _.uniq(tmp);

                    return tmp;

                }

            };

        return api;

    };
    
}(window, _, jQuery, App));