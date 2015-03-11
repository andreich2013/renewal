(function (win, _, $, App) { 
    
    App().util.ajax = {
                
        preloader: (function() {

            var counter = 0;

            function togglePreloader(isShow) {
                $('.content-preloader').css({
                    display: isShow ? 'block' : 'none'
                });
            }

            return {
                beforeSend: function (jqXHR, settings) {
                    if(!settings.preloader) {
                        return;
                    }

                    counter+= 1;

                    togglePreloader(true);
                },
                complete: function () {
                    counter-= 1;

                    if(counter < 0) {
                        counter = 0;
                    }

                    if(counter === 0) {
                        togglePreloader(false);
                    }
                }
            };

        }()),

        beforeSend: function (jqXHR, settings) {
            if(this.debug) {
                this.time = {
                    start: new Date().getTime() / 1000
                };
            };

            App().util.ajax.preloader.beforeSend.apply(this, [jqXHR, settings]);
        }

    };
    
}(window, _, jQuery, App));