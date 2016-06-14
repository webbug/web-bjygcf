<%@ Page Title="" Language="C#" MasterPageFile="~/jrlc/MasterPage.master" AutoEventWireup="true"
    CodeFile="jr_zx_xq.aspx.cs" Inherits="jrlc_jr_zx_xq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/gold_zx_xq.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="gold_zx_xq">
        <img class="gold_zxxq_ban" src="images/gold_zxxq_bg.png" />
        <h3>
            金融咨询>></h3>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_jrzx] order by RANDOM() limit 0,4">
        </asp:SqlDataSource>
        <div class="gold_zxxql">
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <dl>
                        <dd>
                            <img src="images/upload/<%#Eval("img") %>" width="150" height="110" /></dd>
                        <a href=""><dt>
                            <%#Eval("title").ToString().Length>=10?Eval("title").ToString().Substring(0,10) +"...":Eval("title")%></dt></a>
                        <span></span>
                    </dl>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        
        
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    <div class="gold_zxxqr">
                        <%#Eval("context") %>
                    </div>
                </ItemTemplate>
            </asp:FormView>
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [bjygcf_jrzx] WHERE ([id] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="id" QueryStringField="zxxqid" 
                    Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
