<%@ Page Title="" Language="C#" MasterPageFile="~/swly/MasterPage.master" AutoEventWireup="true"
    CodeFile="ly_gd.aspx.cs" Inherits="swly_ly_gd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/travl_xq.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="body_h" class="maqjz">
        <span>旅游 >> 精品线路:</span></div>
    <div id="body_t" class="maqjz">



    
         <div class="erwei" style="background-color:#fff;display:none;">
                 <h2><img src="images/xiaoxx.jpg" /></h2>
                 <img class="erwei2" src="images/erwei2_gai.png" />
                 <p>一格财富官方微信</p>

                 <script>

                     jQuery(window).bind('scroll', function () {

                         //一格二维码随动效果
                         jQuery('#body_t .erwei').stop().animate({
                             top: (getScroll().top) + 'px'
                         }, 900, 'swing');




                     });


                     jQuery('#body_t .erwei h2 img').click(function () {
                         jQuery('#body_t .erwei').hide();
                     });
                 </script>

             </div>




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
                                    <li class="gyd xy"><strong style="position:relative;">
                                        <%#Eval("name").ToString().Length>=20?Eval("name").ToString().Substring(0,20)+"...":Eval("name") %><img style="position:absolute;top:0;" src="images/hot_hua.gif" /></strong>
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
                                    <li class="gyd xy"><strong style="position:relative;">
                                        <%#Eval("name").ToString().Length>=20?Eval("name").ToString().Substring(0,20)+"...":Eval("name") %><img style="position:absolute;top:0;" src="images/hot_hua.gif" /></strong>
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
    <div id="xq" class="maqjz">
        <div class="xq_l">
            <div class="xq_l_sou">
                <div class="xq_l_soul">
                    <img src="images/xq_l_soul.png" /></div>
                <div class="xq_l_sour">
                    <input class="sous" type="text" name="text" value="快来搜索您的旅游线路吧.........." id="sousou" onclick="javascript:this.value='';"/>
                   <input type="button" value="搜索" class="button" onclick="sou();" />
                   <script type="text/javascript">
                       function sou() {
                        window.location.href='ly_sou.aspx?sstxt='+document.getElementById('sousou').value;
                        }
                   </script>
                </div>
            </div>
            <div class="xq_l_gn xlxq">
                <dl>
                    <dt>
                        <h3>
                            <%=gjid %></h3>
                    </dt>
                    <dd>
                        <ul>
                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource15">
                                <ItemTemplate>
                                    <li><a href="ly_xq.aspx?xqid=<%#Eval("id") %>" class="<%# Container.DataItemIndex<=4?"zyts":"bzy"%>">
                                       <div class="xlmc"><%#Eval("name").ToString().Length>=23?Eval("name").ToString().Substring(0,23)+"...":Eval("name") %></div><span>￥<%#Eval("hprice") %>起</span></a></li>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <ul id="itemPlaceholderContainer" runat="server" style="">
                                        <li runat="server" id="itemPlaceholder" />
                                    </ul>
                                    <div class="pagination fya">
                                        <asp:DataPager ID="DataPager1" runat="server" PageSize="15" PagedControlID="ListView1">
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
                            <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国内线路') ORDER BY [showid] DESC">
                            </asp:SqlDataSource>
                        </ul>
                    </dd>
                </dl>
                <div class="xqzs">
                    <em class="dd">
                        <asp:Repeater ID="Repeater8" runat="server" DataSourceID="SqlDataSource7">
                            <ItemTemplate>
                                <span><a href="ly_xq.aspx?xqid=<%#Eval("id") %>">
                                    <img src="images/upload/<%#Eval("zst") %>" width="168" height="112" /></a></span>
                            </ItemTemplate>
                        </asp:Repeater>
                    </em>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_lyxl]  WHERE ([country] = '国内线路') ORDER BY [showid] DESC limit 0,4">
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
        <div class="xq_r">
            <div class="xq_r_ce ce1">
                <dl>
                    <dt>
                        <h3>
                            热门景点</h3>
                    </dt>
                    <dd>
                        <ul>
                            <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlDataSource3">
                                <ItemTemplate>
                                    <li><a href="ly_xq.aspx?xqid=<%#Eval("id") %>">
                                        <%#Eval("name").ToString().Length>=13?Eval("name").ToString().Substring(0,13)+"...":Eval("name") %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国内线路') ORDER BY [showid] DESC limit 0,10">
                            </asp:SqlDataSource>
                            <li class="no_bg">
                                <asp:Repeater ID="Repeater7" runat="server" DataSourceID="SqlDataSource4">
                                    <ItemTemplate>
                                        <a href="ly_xq.aspx?xqid=<%#Eval("id") %>">
                                            <img src="images/upload/<%#Eval("zst") %>" width="120" height="78" style=" border:0px;" /></a>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </li>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_lyxl] WHERE ([country] = '国内线路') ORDER BY [showid] DESC limit 0,6">
                            </asp:SqlDataSource>
                        </ul>
                    </dd>
                </dl>
            </div>
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
</asp:Content>
