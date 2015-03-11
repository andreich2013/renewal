(function (win, _, $, App) {
    
    var loc = win.location;
    
    App().views.filter = {

        on: App().util.observer.on,
        off: App().util.observer.off,
        trigger: App().util.observer.trigger,

        template: _.template($("#filter-template").html()),

        chooseCategories: function(e) {
            $.ajax({
                url: App().config.url.filter,
                data: {
                    table: 'video',
                    section: this.value
                },
                success: function(data) {
                    $("#category-select").html(App().views.filter.template({data: data})).attr('disabled', !data);
                },
                debug: true
            });
        },

        loadContent: function(e) {
            e.preventDefault();

            $.ajax({
                url: loc.pathname.replace(/\/\d+$/, ''),
                dataType: 'html',
                data: App().util.fn.getFormData($(this)),
                beforeSend: function(jqXHR, settings) {
                    if(loc.pathname + loc.search === this.url) {
                        return jqXHR.abort();
                    }

                    App().util.ajax.beforeSend.apply(this, [jqXHR, settings]);
                },
                success: function(data) {
                    App().util.nav.changePage(this.url, data);
                },
                debug: true
            });
        }
    };
    
}(window, _, jQuery, App));