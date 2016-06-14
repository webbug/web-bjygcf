jQuery(document).ready(function () {
    //金融理财banner轮播效果
    //轮播器初始化头部
    //$('#rb_lun #rb_lun_img li img').css('display','none');
    //$('#rb_lun #rb_lun_img li img').eq(0).css('display','block');
    $('#rb_lun #rb_lun_img .bg').opacity(0);
    $('#rb_lun #rb_lun_img .bg').eq(0).opacity(100);
    $('#rb_lun #lun_dian .nh').eq(0).css('color', '#0092ce');
    //轮播计数器
    var banner_index = 1;
    //自动轮播器
    var banner_timer = setInterval(banner_fn, 6000);
    //手动轮播器
    $('#rb_lun #lun_dian .nh').hover(function () {
        clearInterval(banner_timer);
        banner(this);
    }, function () {
        banner_index = $(this).index() + 1;
        banner_timer = setInterval(banner_fn, 6000)
    });
    function banner(obj) {
        $('#rb_lun #lun_dian .nh').css('color', '#999');
        $(obj).css('color', '#0092ce');
        $('#rb_lun #rb_lun_img .bg').opacity(0).css('zIndex', '1').css('display', 'none');
        $('#rb_lun #rb_lun_img .bg').eq($(obj).index()).css('display', 'block').animate({
            attr: 'o',
            target: 100,
            t: 50,
            step: 30
        }).css('zIndex', '2');
    }
    function banner_fn() {
        if (banner_index >= 4) banner_index = 0;
        banner($('#rb_lun #lun_dian .nh').eq(banner_index).first());
        banner_index++;
    }
    /*投资亮点*/
    jQuery('#tzld .ldzh').eq(0).hover(function () {
        jQuery('#tzld .ldzh .dd1').css({
            backgroundPosition: '0 -80px'
        });
        jQuery('#tzld .ldzh dt .h1').css({
            color: '#067bce'
        });
    }, function () {
        jQuery('#tzld .ldzh .dd1').css({
            backgroundPosition: '0 0'
        });
        jQuery('#tzld .ldzh dt .h1').css({
            color: '#303030'
        });
    });
    jQuery('#tzld .ldzh').eq(1).hover(function () {
        jQuery('#tzld .ldzh .dd2').css({
            backgroundPosition: '0 -80px'
        });
        jQuery('#tzld .ldzh dt .h2').css({
            color: '#067bce'
        });
    }, function () {
        jQuery('#tzld .ldzh .dd2').css({
            backgroundPosition: '0 0'
        });
        jQuery('#tzld .ldzh dt .h2').css({
            color: '#303030'
        });
    });
    jQuery('#tzld .ldzh').eq(2).hover(function () {
        jQuery('#tzld .ldzh .dd3').css({
            backgroundPosition: '0 -80px'
        });
        jQuery('#tzld .ldzh dt .h3').css({
            color: '#067bce'
        });
    }, function () {
        jQuery('#tzld .ldzh .dd3').css({
            backgroundPosition: '0 0'
        });
        jQuery('#tzld .ldzh dt .h3').css({
            color: '#303030'
        });
    });
    /*一格消息发布效果*/
    var num = 0;
    var timer = setInterval(function () {
        jQuery('#tzld .thead .theadr .goy').show().animate({
            top: (-50) * num + 'px'
        }, 'slow');
        num++;
        if (num > (jQuery('#tzld .thead .theadr .goy .goy_li').length)) {
            num = 0;
            jQuery('#tzld .thead .theadr .goy').hide().css({
                top: 0
            });
        }
    }, 3000);
    /*攻略咨询 箭头...*/
    jQuery('#hyzs .gul1').hover(function () {
        jQuery('#hyzs .gul1 h1').css({
            backgroundImage: 'url(../jrlc/images/gold_pt_hbg2.png)'
        });

    }, function () {
        jQuery('#hyzs .gul1 h1').css({
            backgroundImage: 'url(../jrlc/images/gold_pt_hbg.png)'
        });
    });
    jQuery('#hyzs .gul2').hover(function () {
        jQuery('#hyzs .gul2 h1').css({
            backgroundImage: 'url(../jrlc/images/gold_pt_hbg2.png)'
        });

    }, function () {
        jQuery('#hyzs .gul2 h1').css({
            backgroundImage: 'url(../jrlc/images/gold_pt_hbg.png)'
        });
    });
    jQuery('#hyzs .gul3').hover(function () {
        jQuery('#hyzs .gul3 h1').css({
            backgroundImage: 'url(../jrlc/images/gold_pt_hbg2.png)'
        });

    }, function () {
        jQuery('#hyzs .gul3 h1').css({
            backgroundImage: 'url(../jrlc/images/gold_pt_hbg.png)'
        });
    });



});