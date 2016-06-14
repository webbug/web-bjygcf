jQuery(document).ready(function () {


    function block(oEvent) {
        if (window.event) {
            oEvent = window.event;
            oEvent.returnValue = false; //取消默认事件
        } else
            oEvent.preventDefault(); //取消默认事件
    }
    document.oncontextmenu = block;






    //一格客服初始化位置
    $('#share').css('top', getScroll().top + (getInner().height - parseInt(getStyle($('#share').first(), 'height'))) /
        2 + 'px');
    //end




    //一格客服左右伸缩
    jQuery('#share').hover(function () {
        jQuery(this).stop().animate({
            left: 0
        });
    }, function () {
        jQuery(this).stop().animate({
            left: -280
        });
    });
    //end

    jQuery(window).bind('scroll', function () {
        //一格客服运动效果

        $('#share').animate({
            attr: 'y',
            target: getScroll().top + (getInner().height - parseInt(getStyle($('#share').first(),
                    'height'))) / 2
        });








        //end







    });











    //头部轮播器初始化
    jQuery(' #up_r_head img').eq(0).css('zIndex', 2).css('left', 0).css('opacity', 1);
    jQuery(' #up_r_foot .up_ld li').eq(0).css('background-color', '#000');

    //轮播器计数器
    var ban_index = 1;  //不是0，因为一开始展示的那个是0；1 2 3 4 0 1 2 3 4.........

    //自动轮播器
    var ban_timer = setInterval(function () { banner_fn(); }, 3000);


    //手动轮播器
    jQuery(' #up_r_foot .up_ld li').hover(function () {

        clearInterval(ban_timer);    //当我手动调用的时候，就清理掉自动轮播器
        banner(this);

    }, function () {

        if (jQuery(this).index() <= 3 && jQuery(this).index() >= 1) {
            jQuery('  #up_r_head img').eq(jQuery(this).index()).css({
                left: '500px',
                opacity: 0
            });
        }
        ban_index = jQuery(this).index() + 1;  //解决鼠标离开后从哪开始自动播放的问题
        ban_timer = setInterval(function () { banner_fn() }, 3000);   //切记没有 var


    });


    //封装
    function banner(obj) {

        jQuery(obj).css('background-color', '#000').siblings().css('background-color', '#fff');




        jQuery(' #up_r_head img').stop().css('zIndex', 1).animate({
            left: '500px',
            opacity: 0
        }, 1600);

        jQuery(' #up_r_head img').stop().eq(jQuery(obj).index()).css('zIndex', 2).animate({
            left: '0px',
            opacity: 1
        }, 1600);



    }

    function banner_fn() {
        if (ban_index > 3) {      //轮播器自动运行的关键
            ban_index = 0;
            jQuery(' #up_r_head img').css('zIndex', 1).css('left', '500px').css('opacity', 0); //因为上面给stop()了 大于4的时候一轮运行完毕 重新归位y


            jQuery('#up_r_head img').eq(0).css('zIndex', 2).css('left', 0).css('opacity', 1);
            jQuery(' #up_r_foot .up_ld li').eq(0).css('color', '#000');

        }
        banner(jQuery('#up_r_foot .up_ld li').eq(ban_index).first());
        ban_index++;
    }
    //end

















































































});