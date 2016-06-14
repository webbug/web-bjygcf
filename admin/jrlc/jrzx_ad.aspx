<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jrzx_ad.aspx.cs" Inherits="admin_about_news_ad" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css" media="screen" />
    <script type="text/javascript" src="../resources/scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../resources/scripts/simpla.jquery.configuration.js"></script>
    <script type="text/javascript" src="../resources/scripts/facebox.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <fieldset>
            <legend>金融资讯</legend>
            <p>
                <label>
                    资讯标题</label>
                <asp:TextBox ID="zx_title" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="*请输入资讯标题"
                        ControlToValidate="zx_title" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
            <p>
                <label>
                    资讯简述</label>
                <asp:TextBox ID="zx_jj" runat="server" Height="125px" Width="70%" TextMode="MultiLine"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请输入资讯简述"
                        ControlToValidate="zx_jj" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
            <p>
                <label>
                    显示顺序</label>
                <asp:TextBox ID="zx_showid" runat="server" class="text-input"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请输入显示顺序"
                    ControlToValidate="zx_showid" ForeColor="red"></asp:RequiredFieldValidator>
            </p>
            <p>
                <label>
                    对应图片</label><asp:Image ID="zx_img" runat="server" Visible="False" />
                <asp:TextBox ID="TextBox1" runat="server" Visible="false"></asp:TextBox>
                <br />
                <asp:FileUpload ID="upimg" runat="server" class="text-input medium-input datepicker" /><asp:Button
                    ID="Button1" runat="server" Text="上传" class="text-input" OnClick="Button1_Click"
                    Visible="False" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请上传图片"
                    ControlToValidate="upimg" ForeColor="red"></asp:RequiredFieldValidator>
            </p>
            <p>
                <label>
                    详细内容</label>
                <FCKeditorV2:FCKeditor ID="zx_context" Height="350px" Width="95%" runat="server">
                </FCKeditorV2:FCKeditor>
            </p>
            <p>
                <asp:Button ID="Btn_add" class="button" runat="server" Text="新增" OnClick="Btn_add_Click" />
                <asp:Button ID="Btn_up" class="button" runat="server" Text="保存" OnClick="Btn_up_Click" />
            </p>
        </fieldset>
    </div>
    <script type="text/javascript">
        function calshow() {
            document.getElementById('calendar').style.display = "block";
        }
      
    </script>
    </form>
</body>
</html>
