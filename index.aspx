<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <head>
    <title>北京一格财富投资咨询有限公司</title>
    <meta http-equiv="Content-Type" content="textml; charset=UTF-8" />
    <link rel="shortcut icon" href="yige/images/title_bg.png" />
 
    <script src="yige/js/zns_script.js" type="text/javascript"></script>
    <script type="text/javascript" src="yige/js/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="yige/js/tool.js"></script>
    <script type="text/javascript" src="yige/js/base.js"></script>
    <script type="text/javascript" src="yige/js/demo.js"></script>
</head>
</head>
<script>

    window.location.href = "http://www.bjygcf.com/jrlc/jr_index.aspx";

    var pc_style = ""
    var browser = {
        versions: function () {
            var u = navigator.userAgent, app = navigator.appVersion;
            return {
                trident: u.indexOf('Trident') > -1,
                presto: u.indexOf('Presto') > -1,
                webKit: u.indexOf('AppleWebKit') > -1,
                gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1,
                mobile: !!u.match(/AppleWebKit.*Mobile.*/) || !!u.match(/AppleWebKit/) && u.indexOf('QIHU') && u.indexOf('Chrome') < 0,
                ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/),
                android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1,
                iPhone: u.indexOf('iPhone') > -1 || u.indexOf('Mac') > -1,
                iPad: u.indexOf('iPad') > -1,
                webApp: u.indexOf('Safari') == -1,
                ua: u
            };
        } (),
        language: (navigator.browserLanguage || navigator.language).toLowerCase()
    }

    if (browser.versions.mobile && !browser.versions.iPad) {
        document.write('<link rel="stylesheet" type="text/css" href="yige/css/basic3.css" />');
    } else {
        document.write('<link rel="stylesheet" type="text/css" href="yige/css/basic2.css" />');
    }
</script>

<body>
    <div id="head">
        <img class="img1" src="yige/images/kefu_bg.png" />
        <img class="img2" src="yige/images/touzi_bg.png" />
        <img class="img3" src="yige/images/jinren.png" />
        <div id="up_r">
            <div id="up_r_head">
                <img src="yige/images/hbg.png" />
                <img src="yige/images/hbg2.png" />
                <img src="yige/images/hbg3.png" />
                <img src="yige/images/hbg4.png" />
            </div>
            <div id="up_r_foot">
                <ul class="up_ld">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                </ul>
            </div>
        </div>
    </div>
   
    <div id="body_bao">

     <img id="img4" src="yige/images/heng_bg.png" />


        <img class="img5" src="yige/images/jdd_bg.png" />
        <div id="body">
                 <div class="bodyl" style="overflow: hidden;height: 400px;">
                        <h2 ><img class="jj" src="yige/images/jj.png" /></h2>


                         <div class="gsjj_bao">
                             <img src="yige/images/gsjj.png" />
                         </div>


                        <script>

                            jQuery(document).ready(function () {
                                setTimeout(function () {
                                    setInterval(function () {
                                        jQuery('#body .bodyl .gsjj_bao img').animate({
                                            top: '-360%'
                                        }, 75000, 'linear', function () {
                                            jQuery(this).css({
                                                top: '0%'
                                            });
                                        });
                                    }, 2000);

                                }, 2000);

                            
                            });
   
                           

                        </script>

        </div>




            <div class="bodyz" style="">


            <div id="info">
	
	<div>
    	
        
        <label><input type="checkbox" id="rev" checked="checked" />倒影</label>
    </div>
</div>



                <div id="div1" >
    <ul id="ul1">
        <li class="cur"><img src="yige/images/zhzh.png" /></li>
        <li class="right"><img src="yige/images/zhzh.png" /></li>
        <li class="right2"><img src="yige/images/zhzh.png" /></li>
        <li><img src="yige/images/zhzh.png" /></li>
        <li><img src="yige/images/zhzh.png"/></li>
        <li><img src="yige/images/zhzh.png" /></li>
        <li><img src="yige/images/zhzh.png" /></li>
        <li><img src="yige/images/zhzh.png" /></li>
        <li><img src="yige/images/zhzh.png" /></li>
        <li><img src="yige/images/zhzh.png"/></li>
        <li class="left2"><img src="yige/images/zhzh.png" /></li>
        <li class="left"><img src="yige/images/zhzh.png" /></li>
    </ul>
	<div class="btn">
		<a class="prev" href="javascript:;"></a>
		<a class="next" href="javascript:;"></a>
	</div>
</div>
            
            
            </div>




            <div class="bodyr">
                <img class="xst" src="yige/images/bodyr_bg2.png" />
            </div>
            <a href="swly/ly_index.aspx">
                <div id="aniu1">
                </div>

                <script>
                    jQuery('#aniu1').click(function () {
                        alert('郑重声明：本公司为一家从事旅游咨询服务的第三方公司，不涉及旅行社相关业务，感谢您进入我们的官网！！');
                    });
                </script>

            </a><a href="jrlc/jr_index.aspx">
                <div id="aniu2">
                </div>
            </a>
        </div>
    </div>
    <div id="footer">
        <img style="cursor: pointer" src="yige/images/footerbg.png" />
        <script>


        
            var timer = setInterval(function () {
                jQuery('#footer img').animate({
                    left: '1.6875%'
                }, 20000, 'linear').animate({
                    left: '40.125%'
                }, 20000, 'linear');
            }, 500);

        </script>
        
										
    </div>
     <div id="share">
        <h2>
            一格客服中心:</h2>
        <ul>
            <li><a href="###" class="a">业务热线:</a></li>
            <li><a href="###" class="b">010-52746846</a></li>
            <li><a href="###" class="c">公司热线:</a></li>
            <li><a href="###" class="d">010-53689251</a></li>
            <li><a href="###" class="e">招聘热线:</a></li>
            <li><a href="###" class="f">010-53600170</a></li>
            <li><a href="###" class="g">电子邮件:</a></li>
            <li><a href="###" class="h">bjygcf@bjgycf.com</a></li>
            <li><a href="###" class="i">ＱＱ客服:</a></li>
            <li><a href="http://wpa.qq.com/msgrd?v=3&uin=2713302485&site=qq&menu=yes" target="_blank"
                class="j">点击交谈</a></li>
            <li><a href="###" class="k">网站客服:</a></li>
            <li><a onclick="javascript:mpnchat.util.openChat();return false;" href="javascript:void(0)"
                title="在线咨询" style="cursor: hand;" class="l">点击交谈</a></li>
            <li><a href="###" class="m">公司官网:</a></li>
            <li><a href="http://www.bjygcf.com" class="n" style="background: none">www.bjygcf.com</a></li>
            <li><a href="###" class="o">关注微信</a></li>
            <li><a href="###" class="p" style="background: none">yigecaifu</a></li>
        </ul>
        <div class="share_footer">
            <span></span>
        </div>
    </div>
    <script type="text/javascript" src="http://stat.mpnco.com.cn/stat/a.ashx?s=js7M8jaU~oKlSvhyhDpDWganVzWwNOzBVJT0P6J5IYHFW6ZPXbkLQRRRC0mTnG~s&c=js7M8jaU~oKlSvhyhDpDWganVzWwNOzBVJT0P6J5IYHFW6ZPXbkLQRRRC0mTnG~s"></script>
</body>
</html>
