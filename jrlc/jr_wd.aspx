<%@ Page Title="" Language="C#" MasterPageFile="~/jrlc/MasterPage.master" AutoEventWireup="true" CodeFile="jr_wd.aspx.cs" Inherits="jrlc_jr_wd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/gold_yw.css" />
      <script type="text/javascript" src="js/gold.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="yw">
           <div class="yw_head">
                 <h2>+_+您的问题</h2>
               <asp:TextBox ID="question" runat="server" class="yw_sou"></asp:TextBox><span class="but1">
               <asp:Button ID="Button2" runat="server" Text="搜索" class="soubtn" 
                     onclick="Button2_Click"/></span><span class="but2">我要提问<em>?</em></span>

                <div class="yw_form">
                         <ul>

                             <li class="form1">
                                 <h3>请留下您的问题</h3>
                                 <asp:TextBox ID="wd_title" runat="server" TextMode="MultiLine"></asp:TextBox>
                             </li>
                             
                             <li class="form2 yw_ac">
                                 您的电话:<asp:TextBox ID="wd_phone" runat="server"></asp:TextBox>
                             </li>
                             <li class="form2">
                                 设定昵称:<asp:TextBox ID="wd_name" runat="server"></asp:TextBox>
                             </li>
                             <li class="yw_ab">
                                 <asp:Button ID="Button1" runat="server" Text="提交" onclick="Tijiao" />
                                 <input type="reset" />
                             </li>
                             <li class="yw_ae">
                                 <span>退出</span>
                             </li>
                         </ul>
                      <script type="text/javascript">
                          jQuery('#yw .yw_head .but2').click(function () {
                              jQuery('#yw .yw_head .yw_form').show(800);

                          });
                          jQuery('#yw .yw_head .yw_form .yw_ae').click(function () {
                              jQuery('#yw .yw_head .yw_form').hide();
                          });
                      </script>

                </div>

           </div>
           <div class="yw_body">
               <div class="yw_bodyl">
                   <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" 
                       DataSourceID="SqlDataSource1">
                       <ItemTemplate>
                            <h4><em><%#Eval("time") %></em>　　<span><%#Eval("name") %></span>--<span style="color:red">问</span></h4>　　
                     <dl>
                         <dt><%#Eval("title") %>？</dt>
                         <dd>答: <%#Eval("solution") %></dd>
                     </dl>
                       </ItemTemplate>
                       <LayoutTemplate>
                           <div ID="itemPlaceholderContainer" runat="server" style="">
                               <span runat="server" id="itemPlaceholder" />
                           </div>
                             <div class="pagination">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="8" PagedControlID="ListView1">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" ShowNextPageButton="False"
                                                ShowPreviousPageButton="true" FirstPageText="首页" LastPageText="尾页" ButtonCssClass="fya" />
                                            <asp:NumericPagerField ButtonCount="4" CurrentPageLabelCssClass="number current"
                                                ButtonType="Link" NumericButtonCssClass="number" NextPreviousButtonCssClass="number" />
                                            <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ShowNextPageButton="true"
                                                ShowPreviousPageButton="False" FirstPageText="首页" LastPageText="尾页" ButtonCssClass="fya" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>
                       </LayoutTemplate>
                       
                   
                   </asp:ListView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                       
                       SelectCommand="SELECT * FROM [bjygcf_wenda] WHERE ([isshow] = ?) ORDER BY [showid] DESC">
                       <SelectParameters>
                           <asp:Parameter DefaultValue="是" Name="isshow" Type="String" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                   
               </div>
               <div class="yw_bodyr">
                     <h3>常见问题</h3>
                     <ul class="yw_cha">
                         <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2" 
                             onitemcommand="Repeater1_ItemCommand">
                            <ItemTemplate>
                                 <asp:LinkButton ID="zl_cate" CommandName='<%# Eval("id")%>' runat="server"><li>
                                 <%# Eval("title").ToString().Length>=13?Eval("title").ToString().Substring(0,13)+"...":Eval("title") %></li></asp:LinkButton>
                            </ItemTemplate>
                         </asp:Repeater>
                         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                             SelectCommand="SELECT * FROM [bjygcf_wenda] where isshow='是' ORDER BY RANDOM() limit 0,8"></asp:SqlDataSource>
                       
                        

                     </ul>


                    
                   <h3>贷款</h3>
                   <ul class="yw_wq">
                       <li><img src="images/dai.jpg"  height="120px"/></li>


                   </ul>


               </div>
           </div>
    </div>

</asp:Content>


