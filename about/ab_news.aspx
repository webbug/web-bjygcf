<%@ Page Title="" Language="C#" MasterPageFile="~/about/MasterPage.master" AutoEventWireup="true"
    CodeFile="ab_news.aspx.cs" Inherits="about_ab_news" %>

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
                                        <li><a href="#" onclick="toggle('1')">企业新闻</a></li>
                                        <li><a href="#" onclick="toggle('2')">行业新闻</a></li>
                                        <li><a href="#" onclick="toggle('3')">公告通知</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="Name_liebiao">
                        <ul>
                            <li class="Name_lbname"><span class="spa">最新公告 </span><span class="spb">The Latest</span></li>
                            <li class="Name_lb">
                                <div>
                                    <ul>
                                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                            <ItemTemplate>
                                                <li class="xw_Name" style="display: <%# Container.ItemIndex==0?"block":"none"%>"><a href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><b><font color="#FF6600" >
                                                    <%# Eval("news_title").ToString().Length>=14?Eval("news_title").ToString().Substring(0,13):Eval("news_title") %></font></b></a>
                                                </li>
                                                <ul style="display: <%# Container.ItemIndex==0?"block":"none"%>">
                                                    <ol class="News_images">
                                                        <img src="images/upload/<%#Eval("news_img")%>" height="134px"/></ol>
                                                    <ol class="News_neirong">
                                                        <%#Eval("news_title").ToString().Length>=32?Eval("news_title").ToString().Substring(0,32)+"...":Eval("news_title") %><p>
                                                            <a href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><font color="#FF6600">详情 >></font></a>
                                                        </p>
                                                    </ol>
                                                </ul>
                                                <li class="xw_Name" style="display: <%# Container.ItemIndex>0?"block":"none"%>"><a href="ab_news_info.aspx?newsid=<%#Eval("id") %>">
                                                    <%#Eval("news_title").ToString().Length>=14?Eval("news_title").ToString().Substring(0,13)+"...":Eval("news_title") %></a></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ProviderName="<%$
            ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [id],
            [news_title], [news_context], [news_img], [news_time], [news_url] FROM [bjygcf_news]
            ORDER BY [id] DESC limit 0,5"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT * FROM [bjygcf_news] WHERE ([news_cate] = ?) ORDER BY [id] DESC">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="企业新闻" Name="news_cate" Type="String" />
                    </SelectParameters>
                    </asp:SqlDataSource>
                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT * FROM [bjygcf_news] WHERE ([news_cate] = ?) ORDER BY [id] DESC ">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="行业新闻" Name="news_cate" Type="String" />
                    </SelectParameters>
                    </asp:SqlDataSource>
                     <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT * FROM [bjygcf_news] WHERE ([news_cate] = ?) ORDER BY [id] DESC ">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="公告通知" Name="news_cate" Type="String" />
                    </SelectParameters>
                    </asp:SqlDataSource>
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
                        <div class="News_xinwen">
                            <ul>
                                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                      <li class="News_xwimages"  style="display: <%# Container.ItemIndex==0?"block":"none"%>">
                                    <img src="images/upload/<%#Eval("news_img") %>" height="160px" /></li>
                                <li class="News_xwneirong" style="display: <%# Container.ItemIndex==0?"block":"none"%>">
                                    <div>
                                        <ul>
                                            <li class="xwmingc"><a href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><%#Eval("news_title").ToString().Length>=20?Eval("news_title").ToString().Substring(0,20)+"...":Eval("news_title") %></a></li>
                                            <li class="xwshijian">日期：<%#Eval("news_time") %></li>
                                            <li class="xwneirong"><%#Eval("news_context").ToString().Length >= 110 ? Eval("news_context").ToString().Substring(0, 110) + "..." : Eval("news_context")%></li>
                                            <li class="xwxiangqing"><a href="ab_news_info.aspx?newsid=<%#Eval("id") %>">详情</a></li>
                                        </ul>
                                    </div>
                                </li>
                                </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <div class="newslist">
                            <ul>
                                <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                        <li style="display: <%# Container.ItemIndex==0?"none":"block"%>">
                                            <div>
                                                <a href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><%#Eval("news_title").ToString().Length>=20?Eval("news_title").ToString().Substring(0,20)+"...":Eval("news_title")%></a></div>
                                            <span><%#Eval("news_time") %></span> </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="News_right" id="div2" style="display: none">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">行业新闻<span>News</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="News_right_xw">
                        <div class="News_xinwen">
                            <ul>
                               <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource3">
                                <ItemTemplate>
                                      <li class="News_xwimages"  style="display: <%# Container.ItemIndex==0?"block":"none"%>">
                                    <img src="images/upload/<%#Eval("news_img") %>" height="160px" /></li>
                                <li class="News_xwneirong" style="display: <%# Container.ItemIndex==0?"block":"none"%>">
                                    <div>
                                        <ul>
                                            <li class="xwmingc"><a href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><%#Eval("news_title").ToString().Length>=20?Eval("news_title").ToString().Substring(0,20)+"...":Eval("news_title") %></a></li>
                                            <li class="xwshijian">日期：<%#Eval("news_time") %></li>
                                            <li class="xwneirong"><%#Eval("news_context").ToString().Length >= 110 ? Eval("news_context").ToString().Substring(0, 110) + "..." : Eval("news_context")%></li>
                                            <li class="xwxiangqing"><a href="ab_news_info.aspx?newsid=<%#Eval("id") %>">详情</a></li>
                                        </ul>
                                    </div>
                                </li>
                                </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <div class="newslist">
                            <ul>
                                <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource3">
                                    <ItemTemplate>
                                        <li style="display: <%# Container.ItemIndex==0?"none":"block"%>">
                                            <div>
                                                <a href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><%#Eval("news_title").ToString().Length>=20?Eval("news_title").ToString().Substring(0,20)+"...":Eval("news_title")%></a></div>
                                            <span><%#Eval("news_time") %></span> </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="News_right" id="div3" style="display: none">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">公司公告<span>News</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="News_right_xw">
                        <div class="News_xinwen">
                            <ul>
                                <asp:Repeater ID="Repeater7" runat="server" DataSourceID="SqlDataSource4">
                                <ItemTemplate>
                                      <li class="News_xwimages"  style="display: <%# Container.ItemIndex==0?"block":"none"%>">
                                    <img src="images/upload/<%#Eval("news_img") %>" height="160px" /></li>
                                <li class="News_xwneirong" style="display: <%# Container.ItemIndex==0?"block":"none"%>">
                                    <div>
                                        <ul>
                                            <li class="xwmingc"><a href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><%#Eval("news_title").ToString().Length>=20?Eval("news_title").ToString().Substring(0,20)+"...":Eval("news_title") %></a></li>
                                            <li class="xwshijian">日期：<%#Eval("news_time") %></li>
                                            <li class="xwneirong"><%#Eval("news_context").ToString().Length >= 110 ? Eval("news_context").ToString().Substring(0, 110) + "..." : Eval("news_context")%></li>
                                            <li class="xwxiangqing"><a href="ab_news_info.aspx?newsid=<%#Eval("id") %>">详情</a></li>
                                        </ul>
                                    </div>
                                </li>
                                </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                        <div class="newslist">
                            <ul>
                                <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlDataSource4">
                                    <ItemTemplate>
                                        <li style="display: <%# Container.ItemIndex==0?"none":"block"%>">
                                            <div>
                                                <a href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><%#Eval("news_title").ToString().Length>=20?Eval("news_title").ToString().Substring(0,20)+"...":Eval("news_title")%></a></div>
                                            <span><%#Eval("news_time") %></span> </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <script language="JavaScript" type="text/JavaScript">
        function toggle(targetid) {
            document.getElementById("div" + targetid).style.display = "block";
            for (var i = 1; i <= 3; i++) {
                if (targetid != i) {
                    document.getElementById("div" + i).style.display = "none";
                }
            }
        }


        function getQueryString(name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]); return null;
        }
        toggle(getQueryString("cate"));
    </script>
    <script src="js/jquery.bxslider.min.js" type="text/javascript"></script>
    <script type="text/javascript">

        $('.newslist').kkPages({
            PagesClass: 'li', //需要分页的元素
            PagesMth: 12, //每页显示个数
            PagesNavMth: 5 //显示导航个数
        });


        $('.bxslider1').bxSlider({
            auto: true,
            infiniteLoop: true,
            hideControlOnEnd: true
        });
    </script>
</asp:Content>
