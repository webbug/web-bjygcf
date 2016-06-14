<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ly_ad.aspx.cs" Inherits="admin_swly_ly_ad" %>

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
    <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>
    <div>
        <fieldset>
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
            <p>
                <label>
                    线路名称</label>
                <asp:TextBox ID="lname" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="*请输入线路名称"
                        ControlToValidate="lname" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    市场价</label>
                <asp:TextBox ID="scj" class="text-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请输入市场价"
                        ControlToValidate="scj" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    会员价</label>
                <asp:TextBox ID="hyj" class="text-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*请输入会员价"
                        ControlToValidate="hyj" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    行程天数</label>
                <asp:TextBox ID="xcday" class="text-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*请输入行程天数"
                        ControlToValidate="xcday" ForeColor="red"></asp:RequiredFieldValidator></span>
                <asp:TextBox ID="guid" runat="server" Visible="False"></asp:TextBox>
                <label>
                    住宿标准
                </label>
                <asp:TextBox ID="zsbz" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*请输入住宿标准"
                        ControlToValidate="zsbz" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    发团日期
                </label>
                <asp:TextBox ID="ftrq" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*请输入发团日期"
                        ControlToValidate="ftrq" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    显示位置</label>
                <asp:TextBox ID="xswz" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*请输入住宿标准"
                        ControlToValidate="xswz" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    所属地区</label>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="ssdq" class="text-input small-input" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                            AutoPostBack="True">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                        </asp:DropDownList>
                        <span class="input-notification">选择所属地区，如选项中没有值文本框中输入即可</span> <span class="input-notification">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ErrorMessage="*请输入所属地区"
                                ControlToValidate="ssdq" ForeColor="red"></asp:RequiredFieldValidator></span>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="DropDownList1" />
                    </Triggers>
                </asp:UpdatePanel>
                <label>
                    所属国家</label>
                <asp:DropDownList ID="ssgj" runat="server" class="small-input">
                    <asp:ListItem>国内线路</asp:ListItem>
                    <asp:ListItem>国外线路</asp:ListItem>
                    <asp:ListItem>港澳台线路</asp:ListItem>
                </asp:DropDownList>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*请输入所属国家"
                        ControlToValidate="ssgj" ForeColor="red"></asp:RequiredFieldValidator></span>
                <label>
                    所属类型</label>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:DropDownList ID="dropdown" class="small-input" runat="server" OnSelectedIndexChanged="dropdown_SelectedIndexChanged"
                            AutoPostBack="True" OnTextChanged="dropdown_SelectedIndexChanged">
                            <asp:ListItem Selected="True">普通线路</asp:ListItem>
                            <asp:ListItem>优惠线路</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Panel ID="Panel1" runat="server" Visible="false">
                            <label>
                                优惠一</label>
                            <asp:TextBox ID="yh1" class="text-input small-input" runat="server"></asp:TextBox>
                            <span class="input-notification">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*请输入优惠条件一"
                                    ControlToValidate="yh1" ForeColor="red"></asp:RequiredFieldValidator></span>
                            <label>
                                优惠二</label>
                            <asp:TextBox ID="yh2" class="text-input small-input" runat="server"></asp:TextBox>
                            <span class="input-notification">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*请输入优惠条件二"
                                    ControlToValidate="yh2" ForeColor="red"></asp:RequiredFieldValidator></span>
                        </asp:Panel>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="dropdown" />
                    </Triggers>
                </asp:UpdatePanel>
                <p>
                    <label>
                        对应图片</label><br />
                    <asp:FileUpload ID="upimg" runat="server" class="text-input medium-input datepicker" />
                    <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*请上传图片"
                        ControlToValidate="upimg" ForeColor="red"></asp:RequiredFieldValidator></span>
                </p>
                <label>
                    行程特色</label>
                <FCKeditorV2:FCKeditor ID="xcts" Height="250px" Width="80%" runat="server">
                </FCKeditorV2:FCKeditor>
            </p>
             <a href="#xq" rel="modal">
                 <input type="button" value="添加天数"  class="text-input"/> </a>
           
             <iframe id="xq" src="tjxqts.aspx?dyid=<%=xq %>" width="800px" height="600px" scrolling="auto"  frameborder="0" style="display:none"></iframe>
            
            
            <p>
                <asp:Button ID="Btn_add" class="button" runat="server" Text="新增" OnClick="Btn_add_Click" />
            </p>
        </fieldset>
    </div>
    
    <!-- End #messages -->
    </form>
</body>
</html>
