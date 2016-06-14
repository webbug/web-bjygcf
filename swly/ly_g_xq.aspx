<%@ Page Title="" Language="C#" MasterPageFile="~/swly/MasterPage.master" AutoEventWireup="true" CodeFile="ly_g_xq.aspx.cs" Inherits="swly_ly_g_xq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link rel="stylesheet" type="text/css" href="css/travl_g_xq.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="lv_g_xq">
         <div id="pb">
             <ul>
                 <li><img src="images/default_cover.png" /></li>
             </ul>
         </div>
         <div id="lf">
             <span><%#Eval("gl_title")%>【加游站】旅行圆梦计划（赢爱尔兰蜜月游、4999元、免房、旅行护肤礼盒，加精还送200元）</span>
         </div>

         <div class="lv_g_ju">
             <div id="body">
                 <div class="buttom">
                     <div class="butl">
                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                         <ItemTemplate>
                            <%#Eval("gl_context") %>
                         </ItemTemplate>
                         </asp:Repeater>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                             SelectCommand="SELECT * FROM [bjygcf_gl] WHERE ([id] = ?)">
                             <SelectParameters>
                                 <asp:QueryStringParameter DefaultValue="1" Name="id" QueryStringField="glid" 
                                     Type="Int32" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                     
                     </div>
                     <div class="butr">
                         <h2>相关游记推荐  <a href="ly_glv.aspx"><span>更多>></span></a></h2>
                         <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                         <ItemTemplate>
                              <a href="ly_g_xq.aspx?glid=<%#Eval("id") %>"><dl>
                             <dd><img src="images/upload/<%#Eval("gl_img") %>" width="130" height="90" /></dd>
                             <dt><p><%#Eval("gl_title").ToString().Length>=13?Eval("gl_title").ToString().Substring(0,13)+"...":Eval("gl_title") %></p>
                             <em class="em1">一格旅游部</em><br />
                             <em class="em2"><%#Eval("gl_time") %></em>
                             </dt>

                         </dl></a>
                         </ItemTemplate>
                         </asp:Repeater>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                             SelectCommand="SELECT * FROM [bjygcf_gl] limit 0,4">
                             <SelectParameters>
                                 <asp:QueryStringParameter DefaultValue="1" Name="gl_title" 
                                     QueryStringField="glid" Type="String" />
                             </SelectParameters>
                         </asp:SqlDataSource>
                    <div id="dl2">
                         <h2 class="gxq_h">热点地区推荐  <a href="ly_sou.aspx"><span>更多>></span></a></h2>
                        <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                        <ItemTemplate>
                              <a href="ly_xq.aspx?xqid=<%#Eval("id") %>"><dl>
                             <dd><img src="images/upload/<%#Eval("zst") %>" width="130" height="90"  /></dd>
                             <dt><p><%#Eval("name").ToString().Length>=13?Eval("name").ToString().Substring(0,13)+"...":Eval("name") %></p>
                             <em class="em1">一格旅游部</em><br />
                             <em class="em2"><%#Eval("hprice") %></em>
                             </dt>

                         </dl></a>
                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                             SelectCommand="SELECT * FROM [bjygcf_lyxl] order by RANDOM() limit 4"></asp:SqlDataSource> 
                     </div>

                         <div class="youji">
                              <img src="images/youji_bg.png" />
                         </div>

                     </div>
                 </div>
             </div>
         </div>

     </div>
</asp:Content>


