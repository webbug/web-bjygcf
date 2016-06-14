<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jr_gmkh.aspx.cs" Inherits="admin_jrlc_jr_gmkh" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
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
    <div>
        <fieldset>
         <legend>客户添加</legend>
         <p>
                <label>
                    客户姓名</label>
                <asp:TextBox ID="k_name" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="*请输入客户姓名"
                        ControlToValidate="k_name" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
            <p>
                <label>
                    购买时间</label>
                <asp:TextBox ID="k_time" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入购买时间"
                        ControlToValidate="k_time" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            
            <p>
                <label>
                    购买项目</label>  
                <asp:DropDownList ID="k_xm_name" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" 
                    >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [bjygcf_lccp]"></asp:SqlDataSource>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请选择购买项目"
                        ControlToValidate="k_xm_name" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
            <p>
                <label>
                    购买金额</label>
                <asp:TextBox ID="k_jine" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请输入购买金额"
                        ControlToValidate="k_jine" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
                        <p>
                <label>
                    显示顺序</label>
                <asp:TextBox ID="k_showid" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*请输入显示顺序,数值越大显示越靠前"
                        ControlToValidate="k_showid" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
             <p>
                <asp:Button ID="Btn_add" class="button" runat="server" Text="新增" OnClick="Btn_add_Click" />
                <asp:Button ID="Btn_up" class="button" runat="server" Text="保存" OnClick="Btn_up_Click" Visible="False" />
            </p>
        </fieldset>
    </div>
    </form>
</body>
</html>
