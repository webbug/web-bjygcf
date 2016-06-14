<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jrgl_gmlb.aspx.cs" Inherits="admin_swly_ly_lb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>北京一格财富投资咨询有限公司</title>
    <link rel="stylesheet" href="../resources/css/reset.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css" media="screen" />
    <style type="text/css">
        .style1
        {
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="Form1" runat="server">
    <div id="main-content1">
        <div class="content-box-content">
            <div class="tab-content" id="tab2">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [bjygcf_khgd] ORDER BY [id] DESC">
                </asp:SqlDataSource>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <%#Eval("name").ToString().Length >= 18 ? Eval("name").ToString().Substring(0, 18) + "..." : Eval("name")%>
                            </td>
                            <td>
                                <%#Eval("time") %>
                            </td>
                           <td>
                                <%#Eval("xm_name").ToString().Length >= 50 ? Eval("xm_name").ToString().Substring(0, 50) + "..." : Eval("xm_name")%>
                            </td><td>
                                <%#Eval("jine")%>
                            </td>
                          
                            <td>
                                <!-- Icons -->
                                <a href="jr_gmkh.aspx?gmid=<%#Eval("id") %>" title="Edit">
                                    <img src="../resources/images/icons/pencil.png" alt="Edit" /></a> <a href="del.aspx?cz=sc&bm=bjygcf_khgd&id=<%#Eval("id") %>"
                                        title="Delete">
                                        <img src="../resources/images/icons/cross.png" alt="Delete" /></a>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table id="Table1" runat="server">
                            <tr id="Tr" runat="server">
                                <td id="Td" runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr id="Tr2" runat="server" style="">
                                            <th id="Th1" runat="server" width="20%">
                                                客户姓名
                                            </th>
                                            <th id="Th2" runat="server" width="15%">
                                                购买时间
                                            </th>
                                              <th id="Th3" runat="server" width="40%">
                                                购买项目
                                            </th>
                                             <th id="Th4" runat="server" width="15%">
                                                购买金额
                                            </th>
                                            <th id="Th5" runat="server" width="10%">
                                                操作
                                            </th>
                                        </tr>
                                        <tr runat="server" id="itemPlaceholder">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr id="Tr1" runat="server">
                                <td id="Td1" runat="server">
                                    <div class="pagination fya">
                                        <asp:DataPager ID="DataPager1" runat="server" PageSize="10" PagedControlID="ListView1">
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
                                    <!-- End .pagination -->
                                    <div class="clear">
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                </asp:ListView>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
