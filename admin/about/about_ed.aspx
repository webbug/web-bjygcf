<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about_ed.aspx.cs" Inherits="admin_about_news_ad" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>北京一格财富投资咨询有限公司</title>
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
                    公司简介</label>
               <span class="input-notification">
                    
                <FCKeditorV2:FCKeditor ID="jj" Height="450px" Width="80%" runat="server">
                </FCKeditorV2:FCKeditor>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请输入公司简介"
                        ControlToValidate="jj" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator></span>  </p>
               <p> <label>
                    企业文化</label>
              <span class="input-notification">
               <FCKeditorV2:FCKeditor ID="wh" Height="450px" Width="80%" runat="server">
                </FCKeditorV2:FCKeditor>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请输入企业文化"
                        ControlToValidate="wh" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator></span>  </p>
                <p>        <label>
                    企业架构</label>
               <asp:Image ID="Image1" runat="server" /><br />
               <asp:FileUpload ID="upimg" runat="server" 
                    class="text-input medium-input datepicker" />
                <asp:Button ID="Btn_xg" runat="server" Text="上传" class="text-input" 
                    onclick="Button1_Click" />    
            </p>
            <p>
                <label>
                    合作伙伴</label>
              <span class="input-notification">
               <FCKeditorV2:FCKeditor ID="hb" Height="250px" Width="80%" runat="server">
                </FCKeditorV2:FCKeditor>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*请输入合作伙伴"
                        ControlToValidate="hb" ForeColor="red" Display="Dynamic"></asp:RequiredFieldValidator></span>  
            </p>
            <p>
                <asp:Button ID="Btn_update" class="button" runat="server" Text="保存" 
                    onclick="Btn_update_Click"/>
            </p>
        </fieldset>
    </div>
    <!-- End #messages -->
    </form>
</body>
</html>
