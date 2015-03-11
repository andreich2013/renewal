(function (win, _, $, App) {
    
    var his = App().api.history;
    
    App().util.nav = {  
        
        onpopstate: function (e) {
            $.ajax({
                url: e.state.url,
                dataType: 'html',
                success: App().util.nav.renderContent,
                debug: true
            });
        },

        renderContent: function (html) {
            $("#content-right").html(html);
        },

        changePage: function(url, data) {
            his.add({
                url: url
            });

            App().config.reset();

            App().util.nav.renderContent(data);
        },

        sendData: function (url) {

        }

    };
    
}(window, _, jQuery, App));