<%@ Page Title="" Language="C#" MasterPageFile="~/jrlc/MasterPage.master" AutoEventWireup="true" CodeFile="jr_index.aspx.cs" Inherits="jrlc_jr_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="js/zns_move.js" type="text/javascript"></script>
    <script src="js/zns_index.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/gold.js"></script>
    <link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="Stylesheet" href="css/gold_in.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

       <div id="gg" style="position:absolute;left:0;top:0;z-index:1999999999999999999999999999999999999999999999;width:100%;height:100px;background-color:#000;opacity:0.8;filter:alpha(opacity=80);">           
       </div>
               <div id="ggl" style="position:absolute;left:0;top:0;z-index:19999999999999999999999999999999999999999999999;width:500px;height:300px;background-color:#fff;border:1px solid #000;border-radius:9px;display:none;opacity:0;filter:alpha(opacity=0);box-shadow:5px 5px 20px #ccc">
                   <h3 style="border-bottom:1px solid #ccc;height:40px;line-height:40px;padding-left:10px;">【最新公告】<span id="close" style="float:right;margin-right:20px;margin-top:5px;font-size:14px;color:#666;cursor:pointer;">×</span></h3>
                   <ul style="font-size:14px;width:430px;margin:0 auto;height:212px;background-color:#e0e0e0;padding:15px;cursor:pointer;margin-top:8px">
                    <a href="../about/ab_news_info.aspx?newsid=38"><li style="height:30px;line-height:30px;border-bottom:1px solid #ccc;" title="点此直接查看详情"><span style="color:Red;"><b>新闻:一格财富理财中心隆重开业--(百姓理财不必再只盯银行)</b></span></li></a>
                     <a href="../about/ab_news_info.aspx?newsid=37"><li style="height:30px;line-height:30px;border-bottom:1px solid #ccc;" title="点此直接查看详情"><span style="color:Red;"><b>喜讯：一格财富--6月16日理财中心·盛大开业精美礼品等你拿！</b></span></li></a>
                      <a href="jr_tzxm_xq.aspx?jrtzid=22"><li style="height:30px;line-height:30px;border-bottom:1px solid #ccc;" title="点此直接查看详情">北京七环-南台小区安置房基金--<span style="color:Red;">火热销售中！...</span>   >></li></a>
                       <a href="jr_tzxm_xq.aspx?jrtzid=23"><li style="height:30px;line-height:30px;border-bottom:1px solid #ccc;" title="点此直接查看详情">华鼎兴业-唐山港城福苑项目--<span style="color:Red;">火热销售中！...</span>   >></li></a>
                        <a href="jr_tzxm_xq.aspx?jrtzid=24"><li style="height:30px;line-height:30px;border-bottom:1px solid #ccc;" title="点此直接查看详情">宝塔盛华洲海私募股权投资基金--<span style="color:Red;">火热销售中！...</span>   >></li></a>
                         <a href="jr_tzxm_xq.aspx?jrtzid=42"><li style="height:30px;line-height:30px;border-bottom:1px solid #ccc;" title="点此直接查看详情">中磊集团投资发展基金--<span style="color:Red;">火热销售中！...</span>   >></li></a>
                         <a href="../about/ab_news_info.aspx?newsid=31"><li style="height:30px;line-height:30px;border-bottom:1px solid #ccc;" title="点此直接查看详情">一格财富--集赞赠本公司旅游大礼！<span style="color:Red;">【火热来袭】</span>   >></li></a>
                         
                   </ul>
               </div>
                
               <h1 id="ti" style="position:absolute;right:0;top:0;color:#fff;z-index:199999999999999999999999999999999999999999999991;display:none;"><p style="display:block;text-align:center;box-shadow:5px 5px 20px #ccc;border-radius:20px;padding:5px 25px;opacity:0;filter:alpha(opacity=0)">一格财富欢迎您进入我们的官网<small>  www.bjygcf.com</small></p><span style="display:block;text-align:center;box-shadow:5px 5px 20px #ccc;border-radius:20px;padding:3px 0;margin-top:-20px;"></span></h1>

         <script>
             function getCookie(c_name) {
                 if (document.cookie.length > 0) {
                     c_start = document.cookie.indexOf(c_name + "=")
                     if (c_start != -1) {
                         c_start = c_start + c_name.length + 1
                         c_end = document.cookie.indexOf(";", c_start)
                         if (c_end == -1) c_end = document.cookie.length
                         return unescape(document.cookie.substring(c_start, c_end))
                     }
                 }
                 return ""
             }
             function setCookie(c_name, value, expiredays) {
                 var exdate = new Date()
                 exdate.setDate(exdate.getDate() + expiredays)
                 document.cookie = c_name + "=" + escape(value) +
                 ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString())

             }
             /*获取日期和时间*/
             function CurentTime() {
                 var now = new Date();

                 var year = now.getFullYear();       //年
                 var month = now.getMonth() + 1;     //月
                 var day = now.getDate();            //日

                 var hh = now.getHours();            //时
                 var mm = now.getMinutes();          //分
                 var ss = now.getSeconds();          //秒


                 var clock = year + "-";

                 if (month < 10)
                     clock += "0";

                 clock += month + "-";

                 if (day < 10)
                     clock += "0";

                 clock += day + " ";

                 if (hh < 10)
                     clock += "0";

                 clock += hh + ":";
                 if (mm < 10) clock += '0';
                 clock += mm;

                 if (ss < 10) {
                     clock += ':0';
                     clock += ss;
                 } else {
                     clock +=':' + ss;
                 } 
               
                 return (clock);
             }
            /* var NowTime = new Date().toLocaleTimeString();*/
          
             setInterval(function () {
                 jQuery('#ti span').html(CurentTime());
             },1000);
          
             

                jQuery('#close').hover(function () {
                     jQuery(this).css({
                         color: 'red'
                     });
                 }, function () {
                     jQuery(this).css({
                         color: '#666'
                     });
                 });
                 jQuery('#close').click(function () {
                     jQuery('#ti').animate({
                         right: ((getInner().width - 687) / 2) - 50
                     }).animate({
                         left: '-687px',
                         opacity: 0
                     }, '3000');
                     jQuery('#ggl').animate({
                         top: '-310px',
                         opacity: 0
                     }, ' 500', 'linear', function () {
                         jQuery(this).hide();
                     });
                     jQuery('#gg').delay(500).fadeOut();
                 });
                 jQuery('#gg').css({
                     height: getInner().height
                 }).slideDown('fast');
                 jQuery('#ggl').css({
                     left: ((getInner().width - 500) / 2) - 35,
                     top: '-310px'
                 });
                 jQuery('#ti').css({
                     top: ((getInner().height - 38) / 2)+220
                 });
                 setTimeout(function () {
                     jQuery('#ggl').show().animate({
                         top: getScroll().top + ((getInner().height - 500) / 2) + 100 + 30,
                         opacity: 100
                     }, 'fast').animate({
                         top: getScroll().top + ((getInner().height - 500) / 2) + 100 - 10
                     }, 'fast').animate({
                         top: getScroll().top + ((getInner().height - 500) / 2) + 100
                     }, 'fast');
                     jQuery('#ti').show().animate({
                         right: ((getInner().width - 687) / 2) + 30
                     }).animate({
                         right: ((getInner().width - 687) / 2)
                     });
                 }, 500);
                 jQuery(window).bind('scroll', function () {
                     jQuery('#ti').hide();
                     jQuery('#gg').css({
                         height: getScroll().top + getInner().height,
                         width: getScroll().left + getInner().width - 18
                     });
                     jQuery('#ggl').css({
                         top: getScroll().top + ((getInner().height - 500) / 2) + 100
                     });
                 });
                 jQuery(window).resize(function () {
                 jQuery('#gg').css({
                 height: getScroll().top + getInner().height,
                 width: getScroll().left + getInner().width - 18
                 });
         });
         </script>

         <div style="width:100%;height:20px;background-image:url(images/lun_hed.png);"></div>

<div id="rb_lun">
              <ul id="rb_lun_img">
                  <li class="bg1 bg"><img style="cursor:pointer" onclick="mpnchat.util.openChat();" src="images/gold_lunbg.png" /></li>
                  <li class="bg2 bg"><img style="cursor:pointer" onclick="mpnchat.util.openChat();" src="images/gold_lunbg2.png" /></li>
                  <li class="bg3 bg"><img style="cursor:pointer" onclick="mpnchat.util.openChat();" src="images/gold_lunbg3.png" /></li>
                  <li class="bg4 bg"><img style="cursor:pointer" onclick="mpnchat.util.openChat();" src="images/gold_lunbg4.png" /></li>
              </ul>
              <ul id="lun_dian">
                  <li class="lli1 nh">●</li>
                  <li class="lli2 nh">●</li>
                  <li class="lli3 nh">●</li>
                  <li class="lli4 nh">●</li>
              </ul>
              <span class="qe1"></span>
              <strong></strong>
   </div>
   <script>
       jQuery(window).bind('scroll', function () {
           jQuery('#rb_lun').css({
               width: getScroll().left + getInner().width - 19
           });
       });
       $(window).resize(function () {
           getScroll().left = 0;
           jQuery('#rb_lun').css({
               width: getScroll().left + getInner().width - 19
           });
           jQuery('#rb_lun #rb_lun_img li img').css({
               width: '100%',
               height: '365px'
           });
       });
   </script>
 <div id="tz" style="margin-top:15px;">
                    <div class="tz_ban">
                        <p style="border-top-left-radius:5px;border-top-right-radius:5px;">投资项目</p>
                        <span>北京一格财富投资咨询有限公司——投资部</span>
                        <em>7×24 客服热线：010-52746846</em>
                        <img style="width:25px;height:25px;margin-left:265px;margin-top:5px;" src="images/hu.jpg" /><a href="jr_tzxm.aspx"><strong>查看更多>></strong></a>
                    </div>
                    <ul>
                        <asp:SqlDataSource ID="SqlDataSource6" runat="server"></asp:SqlDataSource>
                        <li class="xm"><span class="cam1">产品名称</span><span class="cam2">基金规模</span><span class="cam3">预计收益</span><span class="cam4">投资期限</span><span class="cam5">返息方式</span><span class="cam7">产品状态</span><span class="cam6">在线预约</span>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                SelectCommand="SELECT * FROM [bjygcf_lccp] ORDER BY [showid] DESC limit 0,10"></asp:SqlDataSource>
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" 
                                DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                  <li class="ji"><a href="jr_tzxm_xq.aspx?jrtzid=<%#Eval("id") %>"><span class="mm nm1"><%#Eval("name").ToString().Length>=18?Eval("name").ToString().Substring(0,18)+"...":Eval("name") %></span></a>
                                  <span class="nm2 mm">￥<%#Eval("jine") %></span><span class="nm3 mm"><%#Eval("shouyi") %></span><span class="nm4 mm"><%#Eval("zhouqi") %></span><span class="nm5 mm"><%#Eval("huankuan")%></span><span class="nm7 mm <%#Eval("zhuangtai").ToString()=="热销"?"rexiao":""%>"><%#Eval("zhuangtai") %></span><span class='nm6 mm <%#Eval("zhuangtai").ToString()=="热销"?" ":"nm66"%>' onclick='<%#Eval("zhuangtai").ToString()=="热销"?"mpnchat.util.openChat();":"jiesu();"%>'><%#Eval("zhuangtai").ToString()=="热销"?"点击预约":"预约完成"%></span>
                            </ItemTemplate>
                            <LayoutTemplate>
                                    <li runat="server" id="itemPlaceholder" />
                                 
                            </LayoutTemplate>
                            
                        </asp:ListView>
                    </ul>
                </div>
   <div style="width:100%;height:120px;background-color:#186bb5;margin-bottom:18px;">
       <div style="width:1100px;height:120px;margin:0 auto;">
           <div style="height:120px;">
           <img  src="images/daohang1.png" />
           <img style="margin-left:-10px;" src="images/daohang2.png" />
           <img style="margin-left:-10px;" src="images/daohang3.png" />
           <img style="margin-left:-10px;" src="images/daohang4.png" />
           <img style="margin-left:-10px;" src="images/daohang5.png" />
           <img style="margin-left:-10px;" src="images/daohang6.png" />
           <img style="margin-left:-10px;" src="images/daohang7.png" />
           </div>
       </div>
   </div>
 <div id="pxs_container" class="pxs_container">
        <div class="pxs_bg">
            <div class="pxs_bg1"></div>
            <div class="pxs_bg2"></div>
            <div class="pxs_bg3"></div>
        </div>
        <div class="pxs_loading">Loading images...</div>
        <div class="pxs_slider_wrapper">
            <ul class="pxs_slider">
                <li><a href="jr_tzxm_xq.aspx?jrtzid=22"><img  title="点击我！了解详情..."  src="images/1.jpg" alt="First Image" /></a></li>
                <li><a href="jr_tzxm_xq.aspx?jrtzid=22"><img  title="点击我！了解详情..."  src="images/2.jpg" alt="Second Image" /></a></li>
                <li><a href="jr_tzxm_xq.aspx?jrtzid=23"><img  title="点击我！了解详情..."  src="images/3.jpg" alt="Third Image" /></a></li>
                <li><a href="jr_tzxm_xq.aspx?jrtzid=23"><img  title="点击我！了解详情..."  src="images/4.jpg" alt="Forth Image" /></a></li>
                <li><a href="jr_tzxm_xq.aspx?jrtzid=24"><img  title="点击我！了解详情..."  src="images/5.jpg" alt="Fifth Image" /></a></li>
                <li><a href="jr_tzxm_xq.aspx?jrtzid=24"><img  title="点击我！了解详情..."  src="images/6.jpg" alt="Sixth Image" /></a></li>
            </ul>
            <div class="pxs_navigation">
                <span class="pxs_next"></span>
                <span class="pxs_prev"></span>
            </div>
            <ul class="pxs_thumbnails">
                <li><img src="images/thumbs/1.jpg" alt="First Image" /></li>
                <li><img src="images/thumbs/2.jpg" alt="Second Image" /></li>
                <li><img src="images/thumbs/3.jpg" alt="Third Image" /></li>
                <li><img src="images/thumbs/4.jpg" alt="Forth Image" /></li>
                <li><img src="images/thumbs/5.jpg" alt="Fifth Image" /></li>
                <li><img src="images/thumbs/6.jpg" alt="Sixth Image" /></li>
            </ul>
        </div>
    </div>
<script>
    var oLoad = getByClass(document.body, 'pxs_loading')[0];
    var oImgBox = getByClass(document.body, 'pxs_slider_wrapper')[0];
    //var oEvent=ev||event;
    //var obj=oEvent.srcElement||oEvent.target;
    var imgs = document.getElementsByTagName('img');
    for (var i = 0; i < imgs.length; i++) {
        imgs[i].onload = function () {
            oLoad.style.display = 'none';
        }
        oImgBox.style.display = 'block';
    }
</script>    
   <div id="tzld">
           <div class="thead">
                <h3>最新资讯:</h3>
                <div class="theadr">
                     <img style="float:right;margin-right:130px;margin-top:12px;" src="images/yuj.png" /><span>一格财富投资部</span>
                      <ul class="goy">
                          <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                          <ItemTemplate>
                                 <a href="jr_zx_xq.aspx?zxxqid=<%#Eval("id") %>"><li class="goy_li"><%#Eval("title").ToString().Length>=22?Eval("title").ToString().Substring(0,22)+"...":Eval("title") %></li></a>
                          </ItemTemplate>
                          </asp:Repeater>
                          <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                              ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                              ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                              SelectCommand="SELECT * FROM [bjygcf_jrzx] ORDER BY [showid] DESC limit 0,3"></asp:SqlDataSource>
                      </ul>
                </div>
           </div>   
          <a href="jr_wd.aspx"><dl class="ldzh" style="border-right:1px solid #ccc;">
               <dd class="dd1"></dd>
               <dt>
                   <h3 class="h1">有问必答</h3>
                   <span>我们以足够专业，经验丰富的顾问团队秉持风控严谨、收益丰硕、优中选优、量身定制的服务理念,为您提供多元化投资理财解决方案。</span>
               </dt>
           </dl></a>
          <a href="jr_bx.aspx"><dl class="ldzh" style="border-right:1px solid #ccc;">
              <dd class="dd2"></dd>
              <dt>
              <h3 class="h2">保险超市</h3>
              <span>人们面临的风险是多样化的，所以需要一个将保险、投资、税务、遗产、退休规划等统筹在一起的综合理财规划，不仅仅是一张保单。</span>
              </dt>
          </dl></a>
          <a href="jr_zhao.aspx"><dl class="ldzh" >
              <dd class="dd3"></dd>
              <dt>
              <h3 class="h3">招商加盟</h3>
              <span>简单4步注册成为投资人，享受50元起投超低门槛以及12%-15%稳定高额年化收益。更可以自主设置自动投标，让您理财更便捷。</span>
              </dt>
          </dl></a>
      </div>
      <div id="hyzs">
               <ul class="gul1">
                   <h1>金融攻略</h1>
                   <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
                   <ItemTemplate>
                     <a href="jr_glv_xq.aspx?jrxqid=<%#Eval("id") %>"><li><%#Eval("name").ToString().Length >= 15 ? Eval("name").ToString().Substring(0, 15) + "..." : Eval("name")%></li></a>
                   </ItemTemplate>
                   </asp:Repeater>
                   <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                       SelectCommand="SELECT * FROM [bjygcf_jrgl] order by RANDOM() limit 0,3 "></asp:SqlDataSource>
                   <img src="images/gold_pt_img2.png" />
               </ul>
          <ul class="gul2">
              <h1>金融资讯</h1>
             <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource4">
                   <ItemTemplate>
                     <a href="jr_zx_xq.aspx?zxxqid=<%#Eval("id") %>"><li><%#Eval("title").ToString().Length>=15?Eval("title").ToString().Substring(0,15)+"...":Eval("title") %></li></a>
                   </ItemTemplate>
                   </asp:Repeater>
                   <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                       SelectCommand="SELECT * FROM [bjygcf_jrzx] order by RANDOM() limit 0,3"></asp:SqlDataSource>
              <img src="images/gold_pt_img1.png" />
          </ul>
          <ul class="gul3">
              <h1>有问必答</h1>
<asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource5">
                   <ItemTemplate>
                     <a href="jr_wd.aspx"><li><%#Eval("title").ToString().Length>=15?Eval("title").ToString().Substring(0,15)+"...":Eval("title") %></li></a>
                   </ItemTemplate>
                   </asp:Repeater>
                   <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                       SelectCommand="SELECT * FROM [bjygcf_wenda] order by RANDOM() limit 0,3 "></asp:SqlDataSource>
              <img src="images/gold_pt_img3.png" />
          </ul>
      </div>
     <div id="dt">
          <a href="jr_dai.aspx"><dl>
             <dt><h4>银行贷款</h4></dt>
             <dd>
                 <img src="images/index_di.jpg" />
                 <span>
                      手续简便:客户只需到银行一次，填一张申请表，签一份合同。<br />
                      形式灵活:信用贷款无需抵押，贷款金额3-50万，还款期限12、24、36个月。<br />

                 </span>
             </dd>
         </dl></a>
         <a href="jr_xyk.aspx"><dl class="dt_dl2">
             <dt><h4>信用卡</h4></dt>
             <dd>
                 <img src="images/jr_in_xyk.jpg" width="132"/>
                 <span>
                    1.轻松自动还款<br />
                    2.单笔消费分期<br />
                    3.账单分期还<br />
                    4.看电影专享20元起<br />
                    5.星级酒店自助餐买一赠一<br />
                    6.境外消费旅游满额返利<br />
                 </span>
             </dd>
         </dl></a>
         <dl class="dt_dl3">
             <dt><h4>关注我们</h4></dt>
             <dd>
                 <img src="images/erweima.jpg" width="132"/>
                 <span>
                      我们以足够的专业，针对企业发展不同阶段，在流动资金、项目建设、设备添置、卖方融资、工程垫款、过桥资金等多环节为各行业提供高效、低成本的融资整体解决方案。 
                 </span>
             </dd>
         </dl>
     </div>
     <div id="bank">
             <img src="images/bank_bg.jpg" />
     </div>
</asp:Content>


