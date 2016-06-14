<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jrlc_ad.aspx.cs" Inherits="admin_about_rlzy_ad" %>

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
                    产品名称</label>
                <asp:TextBox ID="cp_name" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="*请输入产品名称"
                        ControlToValidate="cp_name" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    展示位置</label>
                <asp:TextBox ID="cp_showid" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请输入展示位置数值越大越靠前"
                        ControlToValidate="cp_showid" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    发行周期</label>
                <asp:TextBox ID="cp_time" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*请输入发行时间"
                        ControlToValidate="cp_time" ForeColor="red"></asp:RequiredFieldValidator></span>
                        <label>
                    认购金额</label>
                <asp:TextBox ID="cp_rengou" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*请输入认购金额"
                        ControlToValidate="cp_jine" ForeColor="red"></asp:RequiredFieldValidator></span>
                        <label>
                    类型</label>
                <asp:TextBox ID="cp_leixing" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*请输入认购金额"
                        ControlToValidate="cp_leixing" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    投资金额</label>
                <asp:TextBox ID="cp_jine" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请输入投资金额"
                        ControlToValidate="cp_jine" ForeColor="red"></asp:RequiredFieldValidator></span>
                        <label>
                    收益率</label>
                <asp:TextBox ID="cp_shouyi" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*请输入收益率"
                        ControlToValidate="cp_shouyi" ForeColor="red"></asp:RequiredFieldValidator></span>
                        <label>
                    投资周期</label>
                <asp:TextBox ID="cp_zhouqi" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*请输入投资周期"
                        ControlToValidate="cp_zhouqi" ForeColor="red"></asp:RequiredFieldValidator></span>
                    <label>
                    还款方式</label>
                  <asp:TextBox ID="cp_huankuan" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*请输入还款方式"
                        ControlToValidate="cp_huankuan" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    状态</label>
                <asp:DropDownList ID="dropdown" class="small-input" runat="server">
                    <asp:ListItem Selected="True">热销</asp:ListItem>
                    <asp:ListItem>售罄</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <label>
                    产品内容</label>   
                    
                <FCKeditorV2:FCKeditor ID="cp_context" Height="550px" Width="80%" runat="server">
                </FCKeditorV2:FCKeditor>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入产品内容"
                        ControlToValidate="cp_context" ForeColor="red"></asp:RequiredFieldValidator></span>
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
