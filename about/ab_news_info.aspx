<%@ Page Title="" Language="C#" MasterPageFile="~/about/MasterPage.master" AutoEventWireup="true"
    CodeFile="ab_news_info.aspx.cs" Inherits="about_ab_news_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="big_wrapper">
        <div id="News">
            <ul class="top_News">
                <li class="News_left">
                    <div class="gywm_liebiao">
                        <ul>
                            <li class="gywm_lbname"><span class="spa">新闻中心 </span><span class="spb">News</span></li>
                            <li class="gywm_lb">
                                <div>
                                    <ul>
                                        <li><a href="ab_news.aspx?cate=1">企业新闻</a></li>
                                        <li><a href="ab_news.aspx?cate=2">行业新闻</a></li>
                                        <li><a href="ab_news.aspx?cate=3">公告通知</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="Name_liebiao">
                        <ul>
                            <li class="Name_lbname"><span class="spa">相关新闻 </span><span class="spb">Name</span></li>
                            <li class="Name_lb">
                                <div>
                                    <ul>
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>
                                                <li class="xw_Name" style="display: <%# Container.ItemIndex==0?"block":"none"%>"><a
                                                    href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><b><font color="#FF6600">
                                                    <%#Eval("news_title").ToString().Length>=13?Eval("news_title").ToString().Substring(0,13):Eval("news_title")+"..." %></font>
                                                    </b></a></li>
                                                <ul style="display: <%# Container.ItemIndex==0?"block":"none"%>">
                                                    <ol class="News_images">
                                                        <img src="images/upload/<%#Eval("news_img")%>" height="134px" /></ol>
                                                    <ol class="News_neirong">
                                                        <%#Eval("news_title").ToString().Length>=32?Eval("news_title").ToString().Substring(0,32)+"...":Eval("news_title") %><p>
                                                            <a href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><font color="#FF6600">详情 >></font></a>
                                                        </p>
                                                    </ol>
                                                </ul>
                                                <li class="xw_Name"><a href="ab_news_info.aspx?newsid=<%#Eval("id") %>">
                                                    <%#Eval("news_title").ToString().Length>=14?Eval("news_title").ToString().Substring(0,13)+"...":Eval("news_title") %></a></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                            ProviderName="<%$
            ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [id],
            [news_title], [news_context], [news_img], [news_time], [news_url] FROM [bjygcf_news]
            ORDER BY [id] DESC limit 0,5"></asp:SqlDataSource>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="News_right" id="div1" style="display: block">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">企业新闻<span>News</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="News_right_xw">
                        <div class="Newsinfo">
                            <ul>
                                <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                        <li class="Newsinfo_Name">
                                            <%#Eval("news_title") %></li>
                                        <li class="Newsinfo_Tmin"><span style="float: left; width: 160px;">发布日期:<%#Eval("news_time") %></span></li>
                                        <li class="Newsinfo_Neiron">
                                            <%#Eval("news_context") %></li>
                                    </ItemTemplate>
                                </asp:FormView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_news] WHERE ([id] = ?)">
                                    <SelectParameters>
                                        <asp:QueryStringParameter DefaultValue="3" Name="id" QueryStringField="newsid" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <li class="fanhui">
                                    <p>
                                        <a href="ab_news.aspx">返回列表</a></p>
                                </li>
                                <li class="Newsinfo_sxpian">
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
