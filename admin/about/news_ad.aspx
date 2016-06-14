<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news_ad.aspx.cs" Inherits="admin_about_news_ad" %>

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
                    新闻标题</label>
                <asp:TextBox ID="news_title" class="text-input small-input" runat="server"></asp:TextBox>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="*请输入标题"
                        ControlToValidate="news_title" ForeColor="red"></asp:RequiredFieldValidator></span>
                <!-- Classes for input-notification: success, error, information, attention -->
                <br />
                <small>简短的新闻描述</small>
            </p>
            
            <p>
                <label>
                    发布时间</label>
                <a href="#messages" rel="modal">
                    <asp:TextBox ID="time" class="text-input medium-input" runat="server"></asp:TextBox></a>
                <span class="input-notification">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*请选择时间"
                        ControlToValidate="time" ForeColor="red"></asp:RequiredFieldValidator></span>
            </p>
             <div id="messages" style="display: none">
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged">
                </asp:Calendar>
            </div>
           
            <p>
                <label>
                    对应图片</label>
                <asp:FileUpload ID="upimg" runat="server" class="text-input medium-input datepicker" />          
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*请上传图片"
                    ControlToValidate="upimg" ForeColor="red"></asp:RequiredFieldValidator>
            </p>
            
            <p>
                <label>
                    跳转地址</label>
                <asp:TextBox ID="tzurl" class="text-input large-input" runat="server"></asp:TextBox>
            </p>
            <p>
                <label>
                    新闻分类</label>
                <asp:DropDownList ID="dropdown" class="small-input" runat="server">
                    <asp:ListItem>企业新闻</asp:ListItem>
                    <asp:ListItem>行业新闻</asp:ListItem>
                    <asp:ListItem>公告通知</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                <label>
                    详细内容</label>  
                <FCKeditorV2:FCKeditor ID="news_context" Height="350px" Width="95%" runat="server">
                </FCKeditorV2:FCKeditor>
            </p>
            <p>
                <asp:Button ID="Btn_add" class="button" runat="server" Text="新增" OnClick="Btn_add_Click" />
            </p>
        </fieldset>
    </div>
    <!-- End #messages -->
    <script type="text/javascript">
        function calshow() {
            document.getElementById('calendar').style.display = "block";
        }
      
    </script>
    </form>
</body>
</html>
