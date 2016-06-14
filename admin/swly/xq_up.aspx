<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xq_up.aspx.cs" Inherits="swly_tjxqts" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="../resources/css/travl_mx.css" type="text/css" />
    <script type="text/javascript" src="../resources/scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../resources/scripts/simpla.jquery.configuration.js"></script>
    <script type="text/javascript" src="../resources/scripts/facebox.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
        <p>
            <label>
                线路详情</label>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server" Text="第几天："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" class="text-input" Width="125px"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                        AutoPostBack="True">
                        <asp:ListItem>第一天</asp:ListItem>
                        <asp:ListItem>第二天</asp:ListItem>
                        <asp:ListItem>第三天</asp:ListItem>
                        <asp:ListItem>第四天</asp:ListItem>
                        <asp:ListItem>第五天</asp:ListItem>
                        <asp:ListItem>第六天</asp:ListItem>
                        <asp:ListItem>第七天</asp:ListItem>
                        <asp:ListItem>第八天</asp:ListItem>
                        <asp:ListItem>第九天</asp:ListItem>
                        <asp:ListItem>第十天</asp:ListItem>
                        <asp:ListItem>第十一天</asp:ListItem>
                        <asp:ListItem>第十二天</asp:ListItem>
                        <asp:ListItem>第十三天</asp:ListItem>
                        <asp:ListItem>第十四天</asp:ListItem>
                        <asp:ListItem>第十五天</asp:ListItem>
                        <asp:ListItem>第十六天</asp:ListItem>
                        <asp:ListItem>第十七天</asp:ListItem>
                        <asp:ListItem>第十八天</asp:ListItem>
                        <asp:ListItem>第十九天</asp:ListItem>
                        <asp:ListItem>第二十天</asp:ListItem>
                    </asp:DropDownList>
                    <span class="input-notification">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*请输入天数"
                            ControlToValidate="TextBox1" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator></span>
                    <asp:Label ID="Label2" runat="server" Text="标 题："></asp:Label><asp:TextBox ID="TextBox2"
                        class="text-input" runat="server"></asp:TextBox>
                    <span class="input-notification">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*请输入标题"
                            ControlToValidate="TextBox2" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator></span>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="DropDownList2" />
                </Triggers>
            </asp:UpdatePanel>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="用&nbsp;&nbsp;&nbsp;&nbsp; 餐："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" class="text-input"></asp:TextBox>
            <span class="input-notification">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox3"
                    Display="Dynamic" ErrorMessage="*请输入用餐情况" ForeColor="red"></asp:RequiredFieldValidator>
            </span>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="住 宿："></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" class="text-input"></asp:TextBox>
            <span class="input-notification">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4"
                    Display="Dynamic" ErrorMessage="*请输入住宿情况" ForeColor="red"></asp:RequiredFieldValidator>
            </span>
        </p>
        <p>
            <label>
                内容：</label>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Height="125px" Width="70%"></asp:TextBox><br />
            <span class="input-notification">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5"
                    Display="Dynamic" ErrorMessage="*请输入线路详情" ForeColor="red"></asp:RequiredFieldValidator>
            </span>
        </p>
        <asp:Label ID="Label5" runat="server" Text="是否显示图片 " CssClass="text-input"></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server" class="text-input" Width="100px"
            OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Selected="True">不显示图片</asp:ListItem>
            <asp:ListItem>显示图片</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="false">
                <asp:Image ID="Image1" runat="server" Height="200px" Width="300px" />
                 <asp:Image ID="Image2" runat="server" Height="200px" Width="300px" />
            <div id="img1" style="display: block">
                <asp:Label ID="Label6" runat="server" Text="对应图片一："></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" class="text-input" />
                <asp:Button ID="Button1" runat="server" Text="上传" class="text-input" OnClick="Button1_Click" />
                <asp:TextBox ID="imgtext1" runat="server" ></asp:TextBox>
                <asp:TextBox ID="imgtext2" runat="server"></asp:TextBox>
                <br />
            </div>
            <div id="img2" style="display: block">
                <asp:Label ID="Label7" runat="server" Text="对应图片二："></asp:Label>
                <asp:FileUpload ID="FileUpload2" runat="server" class="text-input" />
                <asp:Button ID="Button3" runat="server" Text="上传" class="text-input" OnClick="Button2_Click" />
                <br />
            </div>
        </asp:Panel>
        <p>
            <asp:Button ID="Btn_add" class="button" runat="server" Text="保存" OnClick="Btn_add_Click" />
        </p>
    </div>
    </form>
    <script type="text/javascript">

        function FCKeditor_OnComplete(editorInstance) {
            //editorInstance.Commands.GetCommand('Source').Execute();  //执行“源代码”命令
            editorInstance.ToolbarSet.Collapse();  //隐藏工具栏
        }
    </script>
</body>
</html>
