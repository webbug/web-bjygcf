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


    jQuery('#in_kua em span a').click(function(){

        alert( jQuery('#head .head_up .head_tishi li').val());

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



    /*旅游线路动画效果*/




    jQuery('#body_t .body_t_l ul li.aa').hover(function(){
        jQuery(this).css('border-right','none');
       jQuery('#body_t .body_t_l div').eq(jQuery(this).index()-1).show().stop().animate({
           left:'214px',
           width:'400px',
           opacity:100
       },'slow').css({
               zIndex:4
           });
    },function(){
        jQuery(this).css('border-right','1px solid #36a1a9');
        jQuery('#body_t .body_t_l div').eq(jQuery(this).index()-1).stop().animate({
            left:'214px',
            width:0 ,
            opacity:0
        },'slow',function(){
            jQuery(this).hide().css({
                zIndex:3
            });
        });
    });

    jQuery('#body_t .body_t_l div').hover(function(){
        jQuery('#body_t .body_t_l ul li').eq(jQuery(this).index()-1).show().css('border-right','none');
        jQuery(this).stop().animate({
            left:'214px',
            width:'400px',
            opacity:100
        },'slow').css({
                zIndex:4
            });
    },function(){
        jQuery('#body_t .body_t_l ul li').eq(jQuery(this).index()-1).css('border-right','1px solid #36a1a9');
        jQuery(this).stop().animate({
            left:'214px',
            width:0,
            opacity:0
        },'slow',function(){
            jQuery(this).hide().css({
                zIndex:3
            });
        });
    });




    //body轮播效果

    //轮播器初始化
    jQuery(' #rb_lun_img li img').eq(0).css('zIndex',2).css('left',0).css('opacity',1);
    jQuery(' #lun_dian li').eq(0).css('color','#333');
    jQuery('#rb_lun strong').text(jQuery(' #rb_lun_img li img').eq(0).attr('alt'));

    //轮播器计数器
    var ban_index=1;  //不是0，因为一开始展示的那个是0；1 2 3 4 0 1 2 3 4.........

    //自动轮播器
    var ban_timer=setInterval(function(){banner_fn();},3000);



    //手动轮播器
    jQuery(' #lun_dian li').hover(function(){

        clearInterval(ban_timer);    //当我手动调用的时候，就清理掉自动轮播器
        banner(this);

    },function(){

        if(jQuery(this).index()<=4 && jQuery(this).index()>=1){
            jQuery(' #rb_lun_img li img').eq(jQuery(this).index()).css({
                left:'750px',
                opacity:0
            });
        }


        ban_index=jQuery(this).index()+1;  //解决鼠标离开后从哪开始自动播放的问题
        ban_timer=setInterval(function(){banner_fn()},3000);   //切记没有 var


    });




    //封装
    function banner(obj){

        jQuery(obj).css('color','#333').siblings().css('color','#999');

        jQuery('#rb_lun strong').text(jQuery(' #rb_lun_img li img').eq(jQuery(obj).index()).attr('alt'));


        jQuery(' #rb_lun_img li img').stop().css('zIndex',1).animate({
            left:'750px',
            opacity:0
        },1600);

        jQuery(' #rb_lun_img li img').stop().eq(jQuery(obj).index()).css('zIndex',2).animate({
            left:'0px',
            opacity:1
        },1600).prev('img').css('left','750px').css('opacity',0);



    }

    function banner_fn(){
        if(ban_index > 4){      //轮播器自动运行的关键
            ban_index=0;
            jQuery(' #rb_lun_img li img').css('zIndex',1).css('left','750px').css('opacity',0); //因为上面给stop()了 大于4的时候一轮运行完毕 重新归位y


            jQuery(' #rb_lun_img li img').eq(0).css('zIndex',2).css('left',0).css('opacity',1);
            jQuery(' #lun_dian li').eq(0).css('color','#333');
            jQuery('#rb_lun strong').text(jQuery(' #rb_lun_img li img').eq(0).attr('alt'));
        }
        banner( jQuery(' #lun_dian li').eq(ban_index).first());
        ban_index++;
    }
    //end




    /*优惠线路*/

    jQuery('#body_d .bd_up p').hover(function(){
        jQuery('#body_d .bd_down div').eq(jQuery(this).index()).show().siblings().hide();
    },function(){

    });

    /*标语动态效果*/
    setInterval(function(){
        jQuery('#body_d .bd_up .bd_up_xuan span').animate({
            left:'110px'
        },1000,function(){
            jQuery(this).animate({
                left:0
            },1000);
        });

    },1000);

    /*end*/



    /*会员卡展示效果*/


    hy('#hy .hy_down .hy_down_r .hy_kong li.fyh1','#hy .hy_down .hy_down_r img.th1','#hy .hy_down .hy_down_r span.hy_dong1');
    hy('#hy .hy_down .hy_down_r .hy_kong li.fyh2','#hy .hy_down .hy_down_r img.th2','#hy .hy_down .hy_down_r span.hy_dong2');
    hy('#hy .hy_down .hy_down_r .hy_kong li.fyh3','#hy .hy_down .hy_down_r img.th3','#hy .hy_down .hy_down_r span.hy_dong3');

   //封装
    function hy(fyh,th,hy_dong){

        jQuery(fyh).hover(function(){
            jQuery(th).css({
                width:'239px',
                height:'152px',
                boxShadow:'1px 1px 20px #ccc'
            });
            jQuery(hy_dong).stop().animate({
                top:0,
                width:'265px',
                height:'210px'
            });
        },function(){
            jQuery(hy_dong).stop().animate({
                top:'210px',
                width:0,
                height:0
            });
            jQuery(th).css({
                width:'237px',
                height:'150px',
                boxShadow:'0 0 20px #ccc'
            });

        });
    };




   /*合作伙伴效果*/

  jQuery('#hz .hz_dian_l img').click(function(){
      jQuery('#hz .hz_down_bg .hz_down ul').animate({
          left:'-7px'
      },'slow');
  });

    jQuery('#hz .hz_dian_r img').click(function(){
        jQuery('#hz .hz_down_bg .hz_down ul').animate({
            left:'-922px'
        },'slow');
    });


  /*旅游明细上下动态展示效果*/

    var num=0;
    var timer=setInterval(function(){
        jQuery('#mx .mx_head div ul').show().animate({
            top:(-35)*num+'px'
        },'slow');
        num++;
        if(num>5){
            num=0;
            jQuery('#mx .mx_head div ul').css({
                top:0
            });
        }
    },3000);



  /*body浮动导航效果*/




    jQuery(window).bind('scroll', function () {
        if(getScroll().top>=1810 && getScroll().top<=6000){

            jQuery('#fddh').css({
                top:getScroll().top
            });
        }


        if(getScroll().top>=6000 || getScroll().top<=1810){
            jQuery('#fddh').css({
                top:'1810px'
            })
        }



    });



/*浮动li背景重给*/

     jQuery('#fddh ul a li').mouseover(function(){

        jQuery('#fddh ul a li').css({
            backgroundImage:'none'
        });

         jQuery(this).css({
             backgroundImage:'url(../yige/images/fddh_li_bg.png)'
         });
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



