<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ly_up.aspx.cs" Inherits="admin_swly_ly_ad" %>

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
        <style type="text/css">
        .style1
        {
            height: 37px;
        }
    </style>
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
                        对应图片</label> <asp:Image ID="Image1" runat="server" /><br />
                   
                    <asp:FileUpload ID="upimg" runat="server" class="text-input medium-input datepicker" />
                    <asp:Button ID="Button1" runat="server"  Text="上传" class="text-input" 
                        onclick="Button1_Click" />
                    
                </p>
                <label>
                    行程特色</label>
                <FCKeditorV2:FCKeditor ID="xcts" Height="250px" Width="80%" runat="server">
                </FCKeditorV2:FCKeditor>
                </p>
            <div id="main-content1" style="width:80%">
                <div class="content-box-content">
                    <div class="tab-content" id="tab2">
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <tr>
                                    <td>
                                        <%#Eval("day") %>
                                    </td>
                                    <td>
                                        <%#Eval("title") %>
                                    </td>
                                    <td>
                                        <%#Eval("food") %>
                                    </td>
                                    <td>
                                        <%#Eval("hotel") %>
                                    </td>
                                    <td>
                                        <!-- Icons -->
                                        <a href="xq_up.aspx?xqid=<%#Eval("id") %>" title="Edit">
                                            <img src="../resources/images/icons/pencil.png" alt="Edit" /></a> <a href="del.aspx?cz=sc&bm=lyxl_xq&id=<%#Eval("id") %>"
                                                title="Delete">
                                                <img src="../resources/images/icons/cross.png" alt="Delete" /></a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table id="Table1" runat="server">
                                    <tr id="Tr1" runat="server">
                                        <td id="Td1" runat="server">
                                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                <tr runat="server" style="" align="left">
                                                    <th id="Th1" runat="server" width="15%">
                                                        天数
                                                    </th>
                                                    <th runat="server" width="40%">
                                                        标题
                                                    </th>
                                                    <th runat="server" width="15%">
                                                        用餐
                                                    </th>
                                                    <th runat="server" width="15%">
                                                        住宿
                                                    </th>
                                                    <th runat="server" width="15%">
                                                        操作
                                                    </th>
                                                </tr>
                                                <tr runat="server" id="itemPlaceholder">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server">
                                            <div class="pagination fya">
                                                <asp:DataPager ID="DataPager1" runat="server" PageSize="10" PagedControlID="ListView1">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="True" ShowNextPageButton="False"
                                                            ShowPreviousPageButton="true" FirstPageText="首页" LastPageText="尾页" ButtonCssClass="fya" />
                                                        <asp:NumericPagerField ButtonCount="4" CurrentPageLabelCssClass="number current"
                                                            ButtonType="Link" NumericButtonCssClass="number" NextPreviousButtonCssClass="number" />
                                                        <asp:NextPreviousPagerField ButtonType="Link" ShowLastPageButton="True" ShowNextPageButton="true"
                                                            ShowPreviousPageButton="False" FirstPageText="首页" LastPageText="尾页" ButtonCssClass="fya" />
                                                    </Fields>
                                                </asp:DataPager>
                                            </div>
                                            <!-- End .pagination -->
                                            <div class="clear">
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                        </asp:ListView>
                    </div>
                </div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT [id], [day], [title], [food], [hotel], [context], [dyid], [img1], [img2] FROM [lyxl_xq] WHERE ([dyid] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="guid" Name="dyid" PropertyName="Text" 
                        Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <p><label style="color:red">
               添加天数后刷新页面查看
            </label></p>
             <a href="#xq" rel="modal">
                 <input type="button" value="添加天数"  class="text-input"/> </a>
           
             <iframe id="xq" src="tjxqts.aspx?dyid=<%=xq %>" width="800px" height="600px" scrolling="auto"  frameborder="0" style="display:none"></iframe>
            
            
            <p>
                <asp:Button ID="Btn_add" class="button" runat="server" Text="保存" OnClick="Btn_up_Click" />
            </p>
        </fieldset>
    </div>
    
    <!-- End #messages -->
    </form>
</body>
</html>
