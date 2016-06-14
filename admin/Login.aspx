<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="admin_Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>北京一格财富投资咨询有限公司</title>
    <!--                       CSS                       -->
    <!-- Reset Stylesheet -->
    <link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen" />
    <!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
    <link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />
    <!--                       Javascripts                       -->
    <!-- jQuery -->
    <script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
    <!-- jQuery Configuration -->
    <script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
    <!-- Facebox jQuery Plugin -->
    <script type="text/javascript" src="resources/scripts/facebox.js"></script>
    <!-- jQuery WYSIWYG Plugin -->
    <script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>
</head>
<body id="login">
    <form id="form1" runat="server">
    <div>
        <div id="login-wrapper" class="png_bg">
            <div id="login-top">
                <h1>
                    北京一格财富投资咨询有限公司后台管理</h1>
                <!-- Logo (221px width) -->
                <a href="http://www.bjygcf.com">
                    <img id="logo" src="resources/images/logo.png" alt="北京一格财富投资咨询有限公司后台管理" /></a>
            </div>
            <!-- End #logn-top -->
            <asp:Login ID="Login1" runat="server" Style="margin: 0 auto">
                <LayoutTemplate>
                    <div id="login-content">
                        <div class="notification information png_bg">
                            <div>
                                北京一格财富投资咨询有限公司后台登陆
                            </div>
                        </div>
                        <p>
                            
                            
                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">用户名:</asp:Label>
                            <asp:TextBox ID="UserName" runat="server" class="text-input"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" ValidationGroup="Login1" 
                                ForeColor="Red" Font-Size="X-Large">*</asp:RequiredFieldValidator>
                        </p>
                        <div class="clear">
                        </div>
                        <p>
                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">密码:</asp:Label>
                            <asp:TextBox ID="Password" runat="server" TextMode="Password" class="text-input"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="Login1" 
                                ForeColor="Red" Font-Size="X-Large">*</asp:RequiredFieldValidator>
                        </p>
                        <div class="clear">
                        </div>
                        <p style="color:Red;width:200px;float:left;height:30px; ">
                             <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                        </p>
                        <p id="remember-password">
                       
                            <asp:CheckBox ID="RememberMe" runat="server" Text="记住我" />
                        </p>
                        <div class="clear">
                        </div>
                        <p>
                            <asp:Button ID="LoginButton" runat="server" class="button" CommandName="Login" Text="登录"
                                ValidationGroup="Login1" onclick="LoginButton_Click" />
                        </p>
                    </div>
                    <!-- End #login-content -->
        </div>
        <!-- End #login-wrapper -->
        </LayoutTemplate> </asp:Login>
    </div>
    </form>
</body>
</html>
