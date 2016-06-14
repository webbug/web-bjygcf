<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yjfk_ab.aspx.cs" Inherits="admin_about_yjfk_ab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>北京一格财富投资咨询有限公司</title>
    <link rel="stylesheet" href="../resources/css/stylesyjfk.css" type="text/css" />
</head>
<body>
    <form runat="server">
    <div class="site-content services">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <li>
                        <h2>
                            <a href="#" title="">
                                <%#Eval("ly_context").ToString().Length > 20 ? Eval("ly_context").ToString().Substring(0, 20) + "..." : Eval("ly_context")%></a>
                                  
                             
                        </h2>
                        <div>
                            <div class="service-content">
                                <div class="service-info-text">
                                    <br />
                                    <p>
                                        手机：<%# Eval("phone")%><br />
                                        <br />
                                        邮箱：<%# Eval("email")%><br />
                                        <br />
                                        留言内容：<%# Eval("ly_context")%></p>
                                </div>
                               
                                 <div class="service-info-image"> 
                                <a href="del.aspx?cz=sc&bm=bjygcf_jyfk&id=<%#Eval("id") %>"
                                        title="Delete" style="">
                                        <img src="../resources/images/icons/cross.png" alt="Delete"/></a></div>
                                         <div class="service-info-image">
                                    <%# Eval("time")%></div>
                                </div>
                               
                        </div>
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                <div class="wrapper">
                    <ul id="itemPlaceholderContainer" runat="server" style="" class="services-list">
                        <li runat="server" id="itemPlaceholder" />
                    </ul></div>
                    <div class="pagination">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="10" PagedControlID="ListView1">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" ShowNextPageButton="False"
                                    ShowPreviousPageButton="true" FirstPageText="首页" LastPageText="尾页" />
                                <asp:NumericPagerField ButtonCount="4" CurrentPageLabelCssClass="number current"
                                    ButtonType="Link" NumericButtonCssClass="number" NextPreviousButtonCssClass="number" />
                                <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ShowNextPageButton="true"
                                    ShowPreviousPageButton="False" FirstPageText="首页" LastPageText="尾页" />
                            </Fields>
                        </asp:DataPager>
                    </div>
                </LayoutTemplate>
            </asp:ListView>
            <ul class="services-list">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [id], [ly_context], [email], [phone], [time] FROM [bjygcf_jyfk] ORDER BY [id] DESC">
                </asp:SqlDataSource>
            </ul>
    </div>
    <script type="text/javascript" src="../resources/js/jquery.min.js"></script>
    <script src="../resources/js/jquery-ui-1.8.16.custom.min.js"></script>
    <script src="../resources/js/scripts.js"></script>
    <div style="text-align: center; clear: both">
    </div>
    </form>
</body>
</html>
