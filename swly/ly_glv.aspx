<%@ Page Title="" Language="C#" MasterPageFile="~/swly/MasterPage.master" AutoEventWireup="true"
    CodeFile="ly_glv.aspx.cs" Inherits="swly_ly_glv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/travl_gong.css" />
    <script type="text/javascript" src="js/travl_gong.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
        <div id="gbody" class="maqjz">
            <div id="grb_lun">
                <ul id="grb_lun_img">
                    <li>
                        <img src="images/gbody_lunbg3.png" alt="圣诞树之恋" /></li>
                    <li>
                        <img src="images/gbody_lunbg2.png" alt="圣诞树之恋" /></li>
                    <li>
                        <img src="images/gbody_lunbg.png" alt="圣诞树之恋" /></li>
                    <li>
                        <img src="images/gbody_lunbg4.png" alt="圣诞树之恋" /></li>
                    <li>
                        <img src="images/gbody_lunbg5.png" alt="圣诞树之恋" /></li>
                </ul>
                <ul id="lun_dian">
                    <li>●</li>
                    <li>●</li>
                    <li>●</li>
                    <li>●</li>
                    <li>●<li>
                </ul>
                <span class="qe1"></span>
            </div>
            <div class="gbody_down">
                <div class="gbody_downl">
                    <div class="gbody_downl_top">
                        <h3>
                            一格旅游亮点!!</h3>
                        <ul>
                            <li class="vf gf1">让您应时应季的畅游</li>
                            <li class="vf gf2">带给您不同主题体验</li>
                            <li class="vf gf3">让您欢畅淋漓游国内</li>
                            <li class="gf4">带您漂洋过海出境游</li>
                        </ul>
                        <img src="images/gong_tunbg.png" />
                    </div>
                    <div class="gbody_re">
                        <div class="gb_re1">
                            <h4>
                                一格热推展示:</h4>
                            <div class="rb_lun rb_lun0">
                                <div class="jpzn">
                                    <h6>
                                        精品展示，为您领航</h6>
                                    <ul>
                                        <li>选择一格，畅游世界</li>
                                        <li>选择一格，精彩人生</li>
                                    </ul>
                                </div>
                                <ul class="rb_lun_img rb_lun_img0">
                                    <li>
                                        <img src="images/retui1_bg.png" alt="" /></li>
                                    <li>
                                        <img src="images/retui2.png" alt="" /></li>
                                    <li>
                                        <img src="images/retui2_bg.png" alt="" /></li>
                                </ul>
                                <ul class="lun_dian lun_dian0">
                                    <li>●</li>
                                    <li>●</li>
                                    <li>●</li>
                                </ul>
                            </div>
                        </div>
                        <div class="re_hua">
                            <h4>
                                热门话题&游客议论</h4>
                            <ul>
                                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
                                    <ItemTemplate>
                                        <a href="ly_g_xq.aspx?glid=<%#Eval("id") %>">
                                            <li>
                                                <%#Eval("gl_title").ToString().Length>=13?Eval("gl_title").ToString().Substring(0,12)+"...":Eval("gl_title") %></li></a>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM bjygcf_gl order by RANDOM() limit 7">
                                </asp:SqlDataSource>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="gbody_downr">
                    <h3>
                        社区热点推荐</h3>
                    <div class="shere_top">
                        <div class="shere_topl">
                            <a href="ly_g_xq.aspx?glid=25">
                                <dl>
                                    <dd>
                                        <img src="images/shere_bg.jpg" /></dd>
                                    <dt>【加游站】【环球体验】【菲律宾】菲常假期之薄荷岛和甘米银...</dt>
                                </dl>
                            </a>
                        </div>
                        <div class="shere_topr">
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                    <a href="ly_g_xq.aspx?glid=<%#Eval("id") %>">
                                        <dl>
                                            <dd>
                                                <img src="images/upload/<%#Eval("gl_img") %>" width="230" height="170" /></dd>
                                            <dt>
                                                <%#Eval("gl_title") %></dt>
                                        </dl>
                                    </a>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_gl] where gl_tj='是' ORDER BY [gl_showid] DESC limit 0,4">
                            </asp:SqlDataSource>
                        </div>
                    </div>
                    <h3 class="cv">
                        游记</h3>
                    <ul>
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="id">
                            <ItemTemplate>
                                <a href="ly_g_xq.aspx?glid=<%#Eval("id") %>">
                                    <li>
                                        <img src="images/upload/<%#Eval("gl_img") %>" width="180" height="120" alt="<%#Eval("gl_title") %>" />
                                        <p>
                                            <%#Eval("gl_title").ToString().Length>=40?Eval("gl_title").ToString().Substring(0,40)+"...":Eval("gl_title") %></p>
                                        <em>
                                            <%#Eval("gl_jj").ToString().Length>=80?Eval("gl_jj").ToString().Substring(0,80)+"...":Eval("gl_jj")%></em> </li>
                                </a>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <div class="pagination">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="7" PagedControlID="ListView1">
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
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_gl] where rowid>4 ORDER BY [gl_showid] DESC">
                        </asp:SqlDataSource>
                    </ul>
                </div>
                <div class="gong_d">
                    <img src="images/gong_dbg.png" />
                </div>
            </div>
        </div>
</asp:Content>
