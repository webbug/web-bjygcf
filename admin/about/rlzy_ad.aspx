<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rlzy_ad.aspx.cs" Inherits="admin_about_rlzy_ad" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <link rel="stylesheet" href="../resources/css/style.css" type="text/css" media="screen" />
    <script type="text/javascript" src="../resources/scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../resources/scripts/simpla.jquery.configuration.js"></script>
    <script type="text/javascript" src="../resources/scripts/facebox.js"></script>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <fieldset>
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
            <p>
                <label>
                    招聘职位</label>
                <asp:TextBox ID="zw" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="*请输入招聘职位"
                        ControlToValidate="zw" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    招聘人数</label>
                <asp:TextBox ID="rs" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请输入招聘人数"
                        ControlToValidate="rs" ForeColor="red"></asp:RequiredFieldValidator></span>
                        <label>
                    招聘类型</label>
                <asp:TextBox ID="lx" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*请输入招聘类型"
                        ControlToValidate="lx" ForeColor="red"></asp:RequiredFieldValidator></span>
                        <label>
                    招聘地区</label>
                <asp:TextBox ID="dq" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*请输入招聘地区"
                        ControlToValidate="dq" ForeColor="red"></asp:RequiredFieldValidator></span>
                    <label>
                    招聘部门</label>
                  <asp:TextBox ID="bm" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*请输入招聘部门"
                        ControlToValidate="dq" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    招聘类型</label>
                <asp:DropDownList ID="dropdown" class="small-input" runat="server">
                    <asp:ListItem>校园</asp:ListItem>
                    <asp:ListItem>社会</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <label>
                    岗位职责</label>  
                    
                <FCKeditorV2:FCKeditor ID="gw" Height="250px" Width="80%" runat="server">
                </FCKeditorV2:FCKeditor>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入岗位职责"
                        ControlToValidate="gw" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
            <p>
                <label>
                    任职资格</label>  
                     <span class="input-notification">
                    
                <FCKeditorV2:FCKeditor ID="rz" Height="250px" Width="80%" runat="server">
                </FCKeditorV2:FCKeditor>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请输入任职资格"
                        ControlToValidate="rz" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator></span>
            </p>
            <p>
                <asp:Button ID="Btn_add" class="button" runat="server" Text="新增" OnClick="Btn_add_Click" />
                <asp:Button ID="Btn_update" class="button" runat="server" Text="保存" 
                    onclick="Btn_update_Click"/>
            </p>
        </fieldset>
    </div>
    <!-- End #messages -->
    </form>
</body>
</html>
