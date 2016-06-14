<%@ Page Title="" Language="C#" MasterPageFile="~/swly/MasterPage.master" AutoEventWireup="true"
    CodeFile="ly_liu.aspx.cs" Inherits="swly_ly_liu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/liu.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="liu_body">
        <div class="liu_bodyl">
            <img src="images/travl_liu.png" alt="联系我们" />
            <img class="img2" src="images/travl_liu2.png" />
        </div>
        <div class="liu_bodyr">
            <img src="images/travl_liur.png" />
            <div class="liu_bodyr_d">
            <div class="jz">
                <span><em>留言标题:</em><input class="niu" id="title" autofocus="autofocus" runat="server"
                    type="text" name="留言" value="" /></span><asp:RequiredFieldValidator ID="RequiredFieldValidator"
                        runat="server" ErrorMessage="*请输入留言标题" ControlToValidate="title" ForeColor="red"></asp:RequiredFieldValidator><br />
                <span><em>留言内容:</em><textarea runat="server" id="context"></textarea></span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入留言内容"
                    ControlToValidate="context" ForeColor="red"></asp:RequiredFieldValidator><br />
                <span><em>联系电话:</em><input id="phone" class="niu" runat="server" type="text" name="留言"
                    /></span>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*请输入电话"
                    ControlToValidate="phone" ForeColor="red" 
                    ValidationExpression="^(13+\d{9})|(0+\d{10})|(15+\d{9})|(18+\d{9})$"></asp:RegularExpressionValidator>
                <br />
                <span><em class="emss">姓&nbsp;&nbsp; 名:</em><input class="niu" id="name" type="text"
                    name="留言" runat="server" /></span>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请输入姓名"
                    ControlToValidate="name" ForeColor="red" CssClass="retop"></asp:RequiredFieldValidator>
                <br />
                <span class="nb"><em class="emss">性&nbsp;&nbsp; 别:</em>
                    <p class="hh">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="先生" GroupName="RB1" Checked="true" />
                    </p>
                    <p class="hn">
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="女士" GroupName="RB1" />
                    </p>
                </span>
                <asp:Button ID="Button1" class="button" runat="server" Text="提交" 
                    onclick="Button1_Click1" />
                <input class="button bt2" type="reset" value="重置" name="重置" />
                </div>
            </div>
        </div>
    </div>
     <script type="text/javascript">
         function isMobil() {
             var s = document.getElementById("<%=phone.ClientID%>");
             var patrn = /^(13+\d{9})|(15+\d{9})|(18+\d{9})$/;
             if (!patrn.exec(s.value)) {
                 alert('提示\n\n请输入有效的手机号码！');
                 s.focus();
                 return false;
             } 
             else { return true; }
         }
    </script>
</asp:Content>
