(function (win, _, $, App) {
    
    var app = App(),
        doc = win.document,
        $doc = $(doc);
    
    App().controller = {
    
        init: function() {

            $.ajaxSetup({
                type: 'GET',
                dataType: 'json',
                debug: false,
                preloader: true,
                beforeSend: App().util.ajax.beforeSend,
                error: function (jqXHR) {
                    if(this.debug) {
                        console.log(jqXHR);
                    }
                    
                    $("#popup-error-toggle").attr("checked", true);
                    $("#popup-error p").text(JSON.parse(jqXHR.responseText).error.message);
                },
                complete: function(jqXHR, status) {
                    if(this.debug) {
                        this.time.end = new Date().getTime() / 1000;
                        console.log(this.time.end - this.time.start);
                    }

                    App().util.ajax.preloader.complete.apply(this, [jqXHR, status]);
                }
            });
            
            win.onload = function() { 
                win.setTimeout(function() { 
                    win.onpopstate = App().util.nav.onpopstate, false 
                }, 1);
            };

            app.api.history.edit({
                url: win.location.href.substr(App.URL_ROOT.length),
                title: doc.title
            });

            // all links except:
            // 1. if the link has outside url - it must have attribute [name="sync"]
            // 2. if url of the link has hash(#) - this is anchor link
            $doc.on('click', 'a', function(e) {

                if(this.name === 'sync' || this.href.indexOf('#') !== -1) { return; }

                e.preventDefault();

                $.ajax({
                    url: this.pathname + this.search,
                    dataType: 'html',
                    success: function(data) {
                        App().util.nav.changePage(this.url, data);
                    },
                    debug: true
                });
            });

        }

    };
    
}(window, _, jQuery, App));