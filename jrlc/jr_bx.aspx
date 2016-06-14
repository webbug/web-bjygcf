<%@ Page Title="" Language="C#" MasterPageFile="~/jrlc/MasterPage.master" AutoEventWireup="true" CodeFile="jr_bx.aspx.cs" Inherits="jrlc_jr_bx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <meta http-equiv="X-UA-Compatible" content="IE=7"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/gold_bx.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<div id="gold_bx_body">
          <img class="bx_banner" src="images/dddd.jpg" height="268px;" />
            <div class="gold_bx_bodyl">
                  <h1>　　　　　　　　<img src="images/bx_bg4.png" /><em style="font-size:30px;margin-top:-50px;">保险超市</em></h1>
                  <a href="http://cps.jumi18.com/zq17198/product/list"><h2><img src="images/bx_bg1.png" />一格保险超市</h2></a>
                  <a href="http://cps.jumi18.com/zq17198/product/list"><span>
                      <img src="images/11.jpg" />
                       
                  </span></a>
                <a href="http://www.fangxinbao.com/yingxiaoyuan/100383.html"><h2><img src="images/bx_bg2.png" />放心保</h2></a>
                  <a href="http://www.fangxinbao.com/yingxiaoyuan/100383.html"><span>
                       <img src="images/22.jpg" /></span></a><a href="http://zhuqingling.xiangrikui.com/"><h2><img src="images/bx_bg3.png" />金牌顾问</h2></a>
                  <a href="http://zhuqingling.xiangrikui.com/"><span>
                      <img src="images/33.jpg" />
                       
                  </span></a>
            </div>
         <div class="gold_bx_bodyr">
                  <div class="gold_bx_bodyr_top">
                        <h3 class="bx_ret">最新资讯</h3>
                         <ul>
                             <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                             <ItemTemplate>
                                <a href="jr_zx_xq.aspx?zxxqid=<%#Eval("id") %>"> <li><%# Eval("title").ToString().Length>=14?Eval("title").ToString().Substring(0,13)+"...":Eval("title") %></li></a>
                             </ItemTemplate>
                             </asp:Repeater>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                 ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                 SelectCommand="SELECT * FROM [bjygcf_jrzx] order by RANDOM() limit 0,6"></asp:SqlDataSource>
                         </ul>
                  </div>


                     
         </div>
     </div>
</asp:Content>


