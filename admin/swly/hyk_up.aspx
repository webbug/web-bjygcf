<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hyk_up.aspx.cs" Inherits="admin_about_news_ad" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
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
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
            <p>
                <label>
                    会员卡种类</label>
                <asp:TextBox ID="name" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="*请输入卡的种类"
                        ControlToValidate="name" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
              <p>
                <label>
                    会员卡简介</label>
                <asp:TextBox ID="jj" class="text-input small-input" Height="150px" runat="server" 
                      TextMode="MultiLine"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入卡的简介"
                        ControlToValidate="jj" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>  <p>
                <label>
                    会员卡价格</label>
                <asp:TextBox ID="price" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请输入卡的价格"
                        ControlToValidate="price" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
            <p>
                <label>
                    购买地址URL</label>
                    <asp:TextBox ID="url" class="text-input medium-input" runat="server">http://</asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请输入淘宝店购买页的url"
                        ControlToValidate="url" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
           
            <p>
                <label>
                    对应图片</label>
                <asp:Image ID="Image1" runat="server" />
                <br />
               <asp:FileUpload ID="upimg" runat="server" 
                    class="text-input medium-input datepicker" />
                <asp:Button ID="Btn_xg" runat="server" Text="上传" class="text-input" 
                    onclick="Button1_Click" />
                
            </p>
        
               
            <p>
                <label>
                    详细内容</label>
               
                <FCKeditorV2:FCKeditor ID="context" Height="450px" Width="95%" runat="server">
                </FCKeditorV2:FCKeditor>
            </p>
            <p>
                <asp:Button ID="Btn_add" class="button" runat="server" Text="保存" OnClick="Btn_add_Click" />
            </p>
        </fieldset>
    </div>
    <!-- End #messages -->
    </form>
</body>
</html>
