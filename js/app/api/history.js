(function (win, _, $, App) {
    
    App().api.history = {
        add: function (state) {
            win.history.pushState(state, state.title, state.url);
        },
        edit: function (state) {
            win.history.replaceState(state, state.title, state.url);
        }
    };
    
}(window, _, jQuery, App));