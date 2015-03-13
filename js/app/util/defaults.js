(function (win, _, $, App) { 
    
    App().util.defaults = {
                
        datepicker: {
            borderSize: 0,
            onClick: (function(el, cell, date, data) {
                el[0].dataset.value = date.getTime();
                el.val(date.toLocaleDateString());
                el.change();
            })
        }

    };
    
}(window, _, jQuery, App));