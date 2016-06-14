<%@ Page Title="" Language="C#" MasterPageFile="~/jrlc/MasterPage.master" AutoEventWireup="true"
    CodeFile="jr_glv_xq.aspx.cs" Inherits="jrlc_jr_glv_xq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/gold_gong_xq.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="gold_gong_xq">
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="gold_gong_xql">
                    <h2>
                        <%#Eval("name") %></h2>
                    <img src="images/upload/<%#Eval("editimg") %>" width="118" height="120" />
                    <p>
                        一格理财微介绍</p>
                    <h3>
                        一格理财</h3>
                    <ul>
                        <li style="width: 150px;">
                            <%#Eval("jj") %></li>
                    </ul>
                </div>
                <div class="gold_gong_xqr">
                    <%#Eval("context") %>
                </div>
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_jrgl] WHERE ([id] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="id" QueryStringField="jrxqid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
