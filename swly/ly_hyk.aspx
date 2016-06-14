<%@ Page Title="" Language="C#" MasterPageFile="~/swly/MasterPage.master" AutoEventWireup="true" CodeFile="ly_hyk.aspx.cs" Inherits="swly_ly_hyk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/travl_gou.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="travl_gou">
          <h3>【一格】旅游会员卡金卡/旅游优惠卡/旅游卡券/旅游服务卡/包邮</h3>
       <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
       <ItemTemplate>
                     <div class="tr_g_l">
               <dl>
                   <dd>
                       <img src="images/upload/<%#Eval("kimg") %>" width="320" height="205" />
                   </dd>
               </dl>
         </div>
       <div class="tr_g_r">
                 <ul><li style="color:red;font-size:22px;font-weight:bolder">会员卡名称：<%#Eval("kname") %></li>
                     <li class="vv1">价格:<span>￥<%#Eval("kprice") %></span><img src="images/hhh.gif" /></li>
                     <li class="vv">简介:
                        <span> <%#Eval("kjj").ToString().Length>=270?Eval("kjj").ToString().Substring(0,270) :Eval("kjj") %></span>
                     </li>
                     <li><a href="<%#Eval("kurl") %>"><em>立刻购买</em></a></li>
                 </ul>
       </div>
       </ItemTemplate>
       </asp:FormView>


       <div class="tr_but">
               <div class="tr_butl">
                   <div class="butr">
                       <h2>相关产品推荐 </h2>
                       <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                       <ItemTemplate>
                            <a href="ly_hyk.aspx?hykid=<%#Eval("id") %>"><dl>
                           <dd><img src="images/upload/<%#Eval("kimg") %>" width="160" height="145" /></dd>
                           <dt><p><%#Eval("kname").ToString().Length >= 13 ? Eval("kname").ToString().Substring(0,13) : Eval("kname").ToString()%></p>
                           <em class="em1">一格旅游部</em><br />
                           <em class="em2"><%#Eval("kprice") %></em>
                           </dt>

                       </dl></a>
                       </ItemTemplate>
                       </asp:Repeater>
                       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                           ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_hyk]">
                       </asp:SqlDataSource>
                   </div>
               </div>
           <div class="tr_butr">
               <span>
                   <h3>
                       产品详情:</h3>
               </span>
               <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                   <ItemTemplate>
                       <%#Eval("kcontext") %>
                   </ItemTemplate>
               </asp:Repeater>
           </div>
       </div>
   </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM [bjygcf_hyk] WHERE ([id] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="id" QueryStringField="hykid" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


