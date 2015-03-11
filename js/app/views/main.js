(function (win, _, $, App) {
    
    App().views.main = {

        init: function() {
            var $carousel = $('.top-carousel .jcarousel-container'),
                $pagination = $('.jcarousel-pagination');

            $carousel.jcarousel({
                wrap: 'circular',
                transitions: {
                    transforms: true,
                    transforms3d: true,
                    easing: 'ease'
                }
            });

            App().tmp.jcarousels.push($carousel);

            $carousel.jcarouselAutoscroll({
                interval: 5000
            });

            $('.jcarousel-prev').jcarouselControl({
                target: '-=1'
            });

            $('.jcarousel-next').jcarouselControl({
                target: '+=1'
            });

            $pagination.jcarouselPagination({
                item: function(page, items) {
                    return '<i href="#' + page + '" class="fa ' + (page === '1' ? 'fa-dot-circle-o' : 'fa-circle-o') + '"></i>';
                }
            });

            $pagination.on('jcarouselpagination:active', 'i', function() {
                this.className = 'fa fa-dot-circle-o';
            });

            $pagination.on('jcarouselpagination:inactive', 'i', function() {
                this.className = 'fa fa-circle-o';
            });
        }    
    };
    
}(window, _, jQuery, App));