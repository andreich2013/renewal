$(function($) {
    $.fn.scrollToTop = function() {
        var $this = $(this),
            $win = $(window);

        $win.on("scroll", function() {
            $this[$win.scrollTop() === 0 ? "removeClass" : "addClass"]("to-up-show");
        });
        
        $this.on("click", function() {
            $("html, body").animate({
                scrollTop: 0
            }, "slow");
        });
    };
}(jQuery));