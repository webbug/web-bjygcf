<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jrwd_ad.aspx.cs" Inherits="admin_about_yjfk_ab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>北京一格财富投资咨询有限公司</title>
    <link rel="stylesheet" href="../resources/css/stylesyjfk.css" type="text/css" />
</head>
<body>
    <form runat="server">
    <div class="site-content services">
        <ul class="services-list">
            <li>
                <h2>
                    <a href="#" title="">
                    <%=wtitle.Length>=20?wtitle.Substring(0,20)+"...":wtitle %>
                     </a>
                </h2>
                <div>
                    <div class="service-content">
                        <div class="service-info-text">
                            <br />
                            <p>
                                问题描述：<%= wtitle %><br />
                                <br />
                                手机：<%= wphone %><br />
                                <br />
                                姓名：<%= wname %><br />
                                <br />
                            </p>
                            <hr style="width: 120%" />
                            <p>
                                是否显示：<asp:DropDownList ID="DropDownList1" runat="server" Width="50px">
                                    <asp:ListItem>是</asp:ListItem>
                                    <asp:ListItem>否</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <br />
                                显示位置：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                                <br />
                                <span style="vertical-align: top">答 &nbsp; &nbsp; &nbsp;案：</span><asp:TextBox ID="TextBox2"
                                    runat="server" TextMode="MultiLine" Width="500px" Height="100px"></asp:TextBox>
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="保存" OnClick="Btn_Wd_Click" Width="60px"
                                    Height="30px" Style="margin-left: 510px;" />
                            </p>
                        </div>
                        
                        <div class="service-info-image">
                            提交日期：<%= wtime %></div>
                    </div>
                </div>
            </li>
        </ul>
    </div>

    <div style="text-align: center; clear: both">
    </div>
    </form>
</body>
</html>
