(function (win, _, $, App) {
    
    App().views.gallery = {

        init: function() {
            var $carousel = $('.gallery-carousel .jcarousel-container');

            $carousel.jcarousel({
                wrap: 'circular',
                transitions: {
                    transforms: true,
                    transforms3d: true,
                    easing: 'ease'
                }
            });

        }
    };
    
}(window, _, jQuery, App));