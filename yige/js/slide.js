
jQuery(document).ready(function(){
    /*head slid效果*/
    jQuery('#head .hul_2 li.hul_24').hover(function(){
        jQuery('#head .hul_2 li.hul_24 .lifu').slideDown(300);
    },function(){
        jQuery('#head .hul_2 li.hul_24 .lifu').stop().slideUp(300);
    });
    jQuery('#head .hul_2 li.hul_24 .lifu').hover(function(){
        jQuery(this).stop().css({
            height:'105px'
        });
    },function(){
        jQuery(this).slideUp(300);
    });

});