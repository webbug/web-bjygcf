<%@ Page Title="" Language="C#" MasterPageFile="~/swly/MasterPage.master" AutoEventWireup="true"
    CodeFile="ly_sou.aspx.cs" Inherits="swly_ly_sou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/travl_sou.css" />
    <link rel="stylesheet" type="text/css" href="css/basic_travl2.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

            <div id="body_h" class="maqjz">
                <span>旅游 >> 精品线路:</span></div>
            <div id="body_t" class="maqjz">
                <div class="body_t_l">
                    <ul>
                        <li>选择您的旅游线路：</li>
                        <li class="aa"><span>●</span><a href="ly_gd.aspx?gdid=gn">国内 ></a></li>
                        <li class="aa"><span>●</span><a href="ly_gd.aspx?gdid=gw">国外 ></a></li>
                        <li class="aa"><span>●</span><a href="ly_gd.aspx?gdid=gat">港澳台 ></a></li>
                    </ul>
                    <span class="body_t_ld">
                        <img src="images/body_t_dbg.png" />
                    </span>
                    <div id="nei" class="nwg">
                        <em>
                            <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSourcen">
                                <ItemTemplate>
                                    <span><a href="ly_sou.aspx?sstxt=<%#Eval("dq") %>">
                                        <%#Eval("dq") %></a></span>
                                </ItemTemplate>
                            </asp:Repeater>
                        </em>
                    </div>
                    <div id="wai" class="nwg">
                        <em>
                            <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSourcew">
                                <ItemTemplate>
                                    <span><a href="ly_sou.aspx?sstxt=<%#Eval("dq") %>">
                                        <%#Eval("dq") %></a></span>
                                </ItemTemplate>
                            </asp:Repeater>
                        </em>
                    </div>
                    <div id="gang" class="nwg">
                        <em>
                            <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSourceg">
                                <ItemTemplate>
                                    <span><a href="ly_sou.aspx?sstxt=<%#Eval("dq") %>">
                                        <%#Eval("dq") %></a></span>
                                </ItemTemplate>
                            </asp:Repeater>
                        </em>
                    </div>
                </div>
                <div class="body_t_r">
                    <div class="body_tr_l">
                        <div id="rb_lun">
                            <ul id="rb_lun_img">
                                <li>
                                    <img class="l1 lo" src="images/banner_bg1.png" alt="圣诞树之恋" /></li>
                                <li>
                                    <img class="l2" src="images/banner_bg2.jpeg" alt="礼品欢乐颂" /></li>
                                <li>
                                    <img class="l3" src="images/banner_bg3.jpeg" alt="一折疯狂抢" /></li>
                                <li>
                                    <img class="l4" src="images/banner_bg4.jpeg" alt="周年大减价" /></li>
                                <li>
                                    <img class="l4" src="images/banner_bg5.jpeg" alt="周年大减价" /></li>
                            </ul>
                            <ul id="lun_dian">
                                <li>●</li>
                                <li>●</li>
                                <li>●</li>
                                <li>●</li>
                                <li>
                                ●<li>
                            </ul>
                            <span class="qe1"></span><strong></strong>
                        </div>
                    </div>
                </div>
                <div id="body_d">
                    <div class="bd_up">
                        <p>
                            特价优惠一</p>
                        <p>
                            特价优惠二</p>
                        <div class="bd_up_xuan">
                            <span>
                                <img class="yu_o" src="images/biaoyu_bg.png" /><img src="images/hhh.gif" /></span>
                        </div>
                    </div>
                    <div class="bd_down">
                <div class="you1">
                    <ul class="you1_u">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>
                                <a href="ly_xq.aspx?xqid=<%#Eval("id") %>">
                                    <li class="gyd xy"><strong>
                                        <%#Eval("name").ToString().Length>=20?Eval("name").ToString().Substring(0,20)+"...":Eval("name") %></strong>
                                        <span><em style="text-decoration: line-through; font-weight: bold;">市场价：¥<%#Eval("yh") %></em><em style="font-weight: bold">会员价：¥<%#Eval("yh2") %>起</em>
                                            <img src="images/youhui_bg.png" alt="" />
                                        </span></li>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_lyxl] WHERE ([lx] = '优惠线路') ORDER BY [showid] DESC limit 0,4">
                        </asp:SqlDataSource>
                    </ul>
                </div>
                <div class="you2">
                    <ul class="you2_u">
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <a href="ly_xq.aspx?xqid=<%#Eval("id") %>">
                                    <li class="gyd xy"><strong>
                                        <%#Eval("name").ToString().Length>=20?Eval("name").ToString().Substring(0,20)+"...":Eval("name") %></strong>
                                        <span><em style="text-decoration: line-through; font-weight: bold;">市场价:¥<%#Eval("yh") %></em><em style="font-weight: bold;">会员价：¥<%#Eval("yh2") %>起</em>
                                            <img src="images/youhui_bg.png" alt="" />
                                        </span></li>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_lyxl] WHERE ([lx] = '优惠线路') ORDER BY [showid] DESC limit 4,4">
                        </asp:SqlDataSource>
                    </ul>
                </div>
            </div>
                </div>
            </div>
            <div id="sou_xq" class="maqjz">
                <div class="sou_xq_l">
                    <div class="sou_xq_l_h">
                        <h3>
                            猜你喜欢</h3>
                    </div>
                    <ul>
                        <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlDataSourcec">
                            <ItemTemplate>
                                <a href="ly_xq.aspx?xqid=<%#Eval("id") %>">
                                    <li class="yyu">
                                        <dl>
                                            <dd>
                                                <img src="images/upload/<%#Eval("zst") %>" height="167" width="250" /></dd>
                                            <dt>
                                                <%#Eval("name").ToString().Length >= 36 ? Eval("name").ToString().Substring(0,35) : Eval("name").ToString()%></dt>
                                        </dl>
                                        <span>￥<%#Eval("hprice") %>起</span> </li>
                                </a>
                            </ItemTemplate>
                        </asp:Repeater>
                        <li id="doc">一格精选精品线路</li>
                    </ul>
                </div>
                <div class="sou_xq_r">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSources" DataKeyNames="id">
                        <ItemTemplate>
                            <div class="lie">
                                <div class="lie_l">
                                    <dl>
                                        <dd>
                                            <img src="images/upload/<%#Eval("zst") %>" height="83" width="125" /></dd>
                                        <dt><a href="ly_xq.aspx?xqid=<%#Eval("id") %>">
                                            <%# Eval("name").ToString().Length>=25?Eval("name").ToString().Substring(0,25)+"...":Eval("name") %><br />
                                        </a>
                                            <%#Eval("country") %><br />
                                            出发班期：<%#Eval("times") %><br /></dt>
                                    </dl>
                                    <span>推荐</span>
                                </div>
                                <div class="lie_r">
                                    <em>￥<%#Eval("hprice") %>起</em><br />
                                    <span>超低会员价</span>
                                </div>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div style="" id="itemPlaceholderContainer" runat="server">
                                <span runat="server" id="itemPlaceholder" />
                            </div>
                            <div class="pagination fya">
                                <asp:DataPager ID="DataPager1" runat="server" PageSize="13" PagedControlID="ListView1">
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
                </div>
            </div>
    <asp:SqlDataSource ID="SqlDataSourcen" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [dq], [country] FROM [bjygcf_lyxl] WHERE ([country] = '国内线路')">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourcew" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [dq], [country] FROM [bjygcf_lyxl] WHERE ([country] = '国外线路')">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceg" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT [dq], [country] FROM [bjygcf_lyxl] WHERE ([country] = '港澳台线路')">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSources" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_lyxl] limit 0,13">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourcec" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_lyxl] limit 0,6">
    </asp:SqlDataSource>
</asp:Content>
