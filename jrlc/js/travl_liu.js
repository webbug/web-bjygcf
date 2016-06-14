jQuery(document).ready(function(){


    /*头部提示框效果*/
    jQuery('#head .head_up .head_tishi li').hover(function(){
        jQuery('#head .head_up  img').eq(jQuery(this).index()).show().stop().animate({
            opacity:100
        },3500).css({
                zIndex:6
            });
    },function(){

        jQuery('#head .head_up  img').eq(jQuery(this).index()).hide().css({
            opacity:0
        },'slow').css({
                zIndex:1
            });


    });

    jQuery('#head .head_up  img').hover(function(){

        jQuery(this).stop().show().css({
            opacity:100
        }).css({
                zIndex:6
            });
    },function(){
        jQuery(this).hide().css({
            opacity:0
        },'slow').css({
                zIndex:1
            });

    });





    /*头部搜索框失焦效果*/
    jQuery('#hrz_sou').focus(function(){
        jQuery(this).val('');
        jQuery('#in_kua').show(500);
    });
    jQuery('#hrz_sou').blur(function(){
        jQuery(this).val('请输入您需要的旅游线路.....');
        jQuery('#in_kua').hide(500);
    });



    /*机票酒店预订效果*/

    //机票
    jQuery('#nav .nav_l .nav_l_p').hover(function(){
        jQuery('#ji').slideDown('normal');
    },function(){
        jQuery('#ji').stop().slideUp('normal');
    });

    jQuery('#ji').hover(function(){
        jQuery(this).stop().show().css({
            height:'312px'
        });
    },function(){
        jQuery(this).slideUp('normal');
    });


    //酒店
    jQuery('#nav .nav_l .nav_l_p2').hover(function(){
        jQuery('#lv').slideDown('normal');
    },function(){
        jQuery('#lv').stop().slideUp('normal');
    });

    jQuery('#lv').hover(function(){
        jQuery(this).stop().show().css({
            height:'312px'
        });
    },function(){
        jQuery(this).slideUp('normal');
    });



    /*头部按钮变动效果*/
    jQuery('#hrz_but').hover(function(){
        jQuery(this).css({
            backgroundColor:'#d76c00'
        });
    },function(){
        jQuery(this).css({
            backgroundColor:'#ff8800'
        });
    });




    /*导航 nav动画*/

    //按钮动画
    jQuery('#kong .kong_uu li').hover(function(){
        jQuery('#dong').stop().animate({
            left:(jQuery(this).index()*146)+'px'
        },600);
    },function(){
        jQuery('#dong').stop().css('left',(jQuery(this).index()*146)+'px');

        jQuery('#nav_r').mouseleave(function(){     //mouseleave()事件 ：鼠标穿过
            jQuery('#dong').stop().animate({left:0},500);
            jQuery('#dong .dong_uu').stop().animate({
                left:0
            },500)

        });
    });


    //按钮内部字动画

    jQuery('#kong .kong_uu li').mouseover(function(){

        jQuery('#dong .dong_uu').stop().animate({
            left:(-(jQuery(this).index()*(146)))+'px'
        },'swing')

    });
//end


    jQuery('#liu_body .liu_bodyr_d input').eq(0).focus(function(){
        jQuery(this).val('');
    });





    /*酒店机票表单验证*/


    jQuery('.jj .jb').blur(function(){

        jQuery(this).parent().find('.azz').remove();

        if(jQuery(this).is('.jb1')){
            if(jQuery(this).val()==""){
                var xst2=jQuery('<span class="azz eor" style="color:red;margin-left: 38px;">联系人不得为空</span>');
                jQuery(this).parent().append(xst2);

            }else{
                var xst2=jQuery('<span class="azz rig" style="color:red;margin-left: 38px;">正确</span>');
                jQuery(this).parent().append(xst2);
            }
        }else if(jQuery(this).is('.jb2')){
            if(jQuery(this).val()==""){
                var xst2=jQuery('<span class="azz eor" style="color:red;margin-left: 38px;">目的地不得为空</span>');
                jQuery(this).parent().append(xst2);

            }else{
                var xst2=jQuery('<span class="azz rig" style="color:red;margin-left: 38px;">正确</span>');
                jQuery(this).parent().append(xst2);
            }
        }else if(jQuery(this).is('.jb3')){
            if(jQuery(this).val()=="" || isNaN(jQuery(this).val()) || (jQuery(this).val()!="" && jQuery(this).val().length<11)){
                var xst2=jQuery('<span class="azz eor" style="color:red;margin-left: 38px;">不得为空，格式须正确</span>');
                jQuery(this).parent().append(xst2);

            }else{
                var xst2=jQuery('<span class="azz rig" style="color:red;margin-left: 38px;">正确</span>');
                jQuery(this).parent().append(xst2);
            }
        }else if(jQuery(this).is('.jb4')){
            if(jQuery(this).val()==""  || (isNaN(jQuery(this).val()) && !(jQuery(this).val()==""))){
                var xst2=jQuery('<span class="azz eor" style="color:red;margin-left: 38px;">须输数字内容</span>');
                jQuery(this).parent().append(xst2);

            }else{
                var xst2=jQuery('<span class="azz rig" style="color:red;margin-left: 38px;">正确</span>');
                jQuery(this).parent().append(xst2);
            }

        }else if(jQuery(this).is('.jb5')){
            if((jQuery(this).val()=="")){
                var xst2=jQuery('<span class="azz eor" style="color:red;margin-left: 38px;">日期不得为空 </span>');
                jQuery(this).parent().append(xst2);
            }else{
                var xst2=jQuery('<span class="azz rig" style="color:red;margin-left: 38px;">正确</span>');
                jQuery(this).parent().append(xst2);
            }
        }




    });

    //提交

    jQuery('#send').click(function(){
        jQuery(' .jj  .jb').trigger('blur');

        var xst3=jQuery('.eor').length;
        if(xst3){  //个数存在就执行
            return false;
        }else{
            alert('注册成功！！');
        }


    });
    //end
//重置
    jQuery('#res').click(function(){
        jQuery(' .jj em .azz').remove();
    });


    //提交

    jQuery('#send2').click(function(){
        jQuery(' .jj  .jb').trigger('blur');

        var xst3=jQuery('.eor').length;
        if(xst3){  //个数存在就执行
            return false;
        }else{
            alert('注册成功！！');
        }


    });
    //end
//重置
    jQuery('#res2').click(function(){
        jQuery(' .jj em .azz').remove();
    });












});