<%@ Page Title="" Language="C#" MasterPageFile="~/jrlc/MasterPage.master" AutoEventWireup="true" CodeFile="jr_dai.aspx.cs" Inherits="jrlc_jr_dai" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/gold_dai.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
         <div id="gold_dai_head">
           <ul class="img_ul">
               <li class="libg_img"><img src="images/touna-info-2.png" /></li>
           </ul>
     </div>
     <h2 id="gold_dai_zhi">贷款指引</h2>
     <div class="gold_dai_zhan">
          <span style="width:500px;">
                <img  src="images/dai1.jpg" width="500"/>
          </span>
          <img src="images/xyd.gif" width="520"/>
     </div>

     <div class="gold_dai_zhan">
          <span class="dai_zhan_span2">
            <img src="images/dai3.jpg" width="500"/>
           </span>
         <img  class="dai_zhan_img2" src="images/xydlc.jpg" width="520"/>
     </div>

     <br />
     <div class="gold_dai_zhan">
          <span>
              <img src="images/dai3.jpg" width="500" style="float:left"/>
          </span>
         <img src="images/dai11.jpg" width="520" />
     </div>

     <div id="dai_jie">
           <div class="btn">我要贷款</div>
         <div class="dai_jie_fcc">
              <h2>电话:010-52746846</h2>
               <a href="http://wpa.qq.com/msgrd?v=3&uin=2713302485&site=qq&menu=yes" target="_blank"><span style="background-image:url('images/zaiqq.png')"></span></a>
               <a onclick="javascript:mpnchat.util.openChat();return false;" href="javascript:void(0)" title="在线咨询" style="cursor:hand;"><span style="background-image:url('images/zaiweb.png')"></span></a>

                <div class="dai_jie_tui btn">退出</div>
         </div>

         <script>
             jQuery('#dai_jie .btn').click(function () {
                 jQuery('#dai_jie .dai_jie_fcc').fadeToggle();
             });
         </script>
     </div>
</asp:Content>


