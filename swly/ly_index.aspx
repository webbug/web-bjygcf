<%@ Page Title="" Language="C#" MasterPageFile="~/swly/MasterPage.master" AutoEventWireup="true"
    CodeFile="ly_index.aspx.cs" Inherits="swly_ly_index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">


<div id="ping" style="display:none;">
             <img id="xiaoxx" style="width:30px;cursor:pointer;float:right;" src="images/xiaoxx.jpg" />
             <div class="ping_auto">
                     
             </div>
      </div>
      <script>
          jQuery('#xiaoxx').click(function () {
              jQuery('#ping').hide();
          });
          jQuery('#ping').css({
              top: (getInner().height)
          });
          jQuery('#ping').animate({
              top: (getInner().height - 180)
          }, 1000, 'linear');
          jQuery(window).bind('scroll', function () {
              jQuery('#ping').stop().css({
                  top: (getScroll().top + (getInner().height - 180)) + 'px'
              });
          });
      </script>
    <div id="body_h" class="maqjz">
        <span>旅游 >> 首页:</span></div>
    <div id="body_t" class="maqjz">
         <div class="erwei" style="display:none">
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
                <li class="aa"><span>●</span><a href="ly_gd.aspx?gdid=gn">国内 　　　　<span>>></span></a></li>
                <li class="aa"><span>●</span><a href="ly_gd.aspx?gdid=gw">国外 　　　　<span>>></span></a></li>
                <li class="aa"><span>●</span><a href="ly_gd.aspx?gdid=gat">港澳台 　　　<span>>></span></a></li>
            </ul>
            <span class="body_t_ld">
                <img src="images/body_t_dbg.png" />
            </span>
            <div id="nei" class="nwg">
                <em>
                    <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSourcen">
                        <ItemTemplate>
                            <span style="margin-left: 20px;"><a href="ly_sou.aspx?sstxt=<%#Eval("dq") %>">
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
                            <a href="http://www.bjygcf.com/swly/ly_sou.aspx?sstxt=%E5%AE%89%E5%BE%BD"><img class="l1 lo" src="images/banner_bg6.png" alt="黄山自由行" /><a></li>
                        <li>
                            <a href="http://www.bjygcf.com/swly/ly_sou.aspx?sstxt=%E6%97%A5%E9%9F%A9"><img class="l2" src="images/banner_bg2.jpeg" alt="日本赏樱季" /></a></li>
                        <li>
                            <a href="http://www.bjygcf.com/swly/ly_sou.aspx?sstxt=%E4%BA%91%E5%8D%97"><img class="l3" src="images/banner_bg3.jpeg" alt="梦回云南彩云之巅" /></a></li>
                        <li>
                            <a href="http://www.bjygcf.com/swly/ly_sou.aspx?sstxt=%E6%B5%B7%E5%8D%97"><img class="l4" src="images/banner_bg4.jpeg" alt="沐浴三亚海浪沙滩" /></a></li>
                        <li>
                            <a href="http://www.bjygcf.com/swly/ly_sou.aspx?sstxt=%E6%B5%B7%E5%8D%97"><img class="l4" src="images/banner_bg5.jpeg" alt="海岛梦幻自由畅享" /></a></li>
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
    <div id="jpxl_xx" class="maqjz">
        <div class="jpxl_sh sh1">
            <div class="jpxl_sh_l">
                <div class="jsl_up">
                    <img src="images/guonei_logo.png" />
                </div>
                <div class="jsl_down">

                    <img src="images/guonei_zhan.png" />

                    <a href="http://www.bjygcf.com/swly/ly_sou.aspx?sstxt=海边"><div id="zhuq3"></div></a>
                    <a href="http://www.bjygcf.com/swly/ly_sou.aspx?sstxt=雪山"><div id="zhuq4"></div></a>

                </div>
            </div>
            <div class="jpxl_sh_r">
                <div class="jsr_up">
                </div>
                <div class="jsr_down">
                    <div class="jsr_down_l">
                        <div class="jsr_down_l_1">
                            <a href="ly_xq.aspx?xqid=<%=listn[0].Id %>">
                                <dl>
                                    <dd>
                                        <img src="images/upload/<%=listn[0].Zst %>" width="430" height="170" /></dd>
                                    <dt>
                                        <%=listn[0].Name.Length <= 15?listn[0].Name : listn[0].Name.ToString().Substring(0,15)%></dt>
                                    <span>￥<%=listn[0].Hprice %>起</span><em><%=listn[0].Dq.Length >= 8 ? listn[0].Dq.Substring(0, 8) + "..." : listn[0].Dq%></em>
                                </dl>
                            </a>
                        </div>
                        <div class="jsr_down_l_2">
                            <ul class="g_u">
                                <a href="ly_xq.aspx?xqid=<%=listn[1].Id %>">
                                    <li class="gua">
                                        <dl>
                                            <dd>
                                                <img src="images/upload/<%=listn[1].Zst %>" width="208" height="80" /></dd>
                                            <dt>
                                                <%=listn[1].Name.Length <= 13 ? listn[1].Name : listn[1].Name.ToString().Substring(0, 13)+"..."%></dt>
                                        </dl>
                                        <span>￥<%=listn[1].Hprice %>起</span><em><%=listn[1].Dq.Length >= 8 ? listn[1].Dq.Substring(0, 8) + "..." : listn[1].Dq%></em>
                                    </li>
                                </a><a href="ly_xq.aspx?xqid=<%=listn[2].Id %>">
                                    <li class="gub">
                                        <dl>
                                            <dd>
                                                <img src="images/upload/<%=listn[2].Zst %>" width="208" height="80" /></dd>
                                            <dt>
                                                <%=listn[2].Name.Length <= 13 ? listn[2].Name : listn[2].Name.Substring(0, 13)+"..."%></dt>
                                        </dl>
                                        <span>￥<%=listn[2].Hprice %>起</span><em><%=listn[2].Dq.Length >= 8 ? listn[2].Dq.Substring(0, 8) + "..." : listn[2].Dq%></em>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <div class="jsr_down_r">
                        <ul>
                            <% for (int i = 3; i < listn.Count; i++)
                               { %>
                            <a href="ly_xq.aspx?xqid=<%=listn[i].Id %>">
                                <li>
                                    <dl>
                                        <dd>
                                            <img src="images/upload/<%=listn[i].Zst %>" width="201" height="120" /></dd>
                                        <dt>
                                            <%=listn[i].Name.Length <= 10 ? listn[i].Name : listn[i].Name.Substring(0, 10)+"..."%></dt>
                                    </dl>
                                    <span>￥<%=listn[i].Hprice %>起</span><em><%=listn[i].Dq.Length>=8?listn[i].Dq.Substring(0,8)+"...":listn[i].Dq %></em>
                                </li>
                            </a>
                            <%  }%>
                        </ul>
                    </div>
                    <div>
                        <a href="ly_gd.aspx?dqid=gn"><span class="geng">更多 >></span></a></div>
                </div>
            </div>
        </div>
        <div class="jpxl_sh sh2">
            <div class="jpxl_sh_l">
                <div class="jsl_up">
                    <img src="images/guowai_logo.png" />
                </div>
                <div class="jsl_down">
                    <img src="images/guowai_zhan.png" />
                </div>
            </div>
            <div class="jpxl_sh_r">
                <div class="jsr_up">
                </div>
                <div class="jsr_down">
                    <div class="jsr_down_l">
                        <div class="jsr_down_l_1">
                            <a href="ly_xq.aspx?xqid=<%=listw[0].Id %>">
                                <dl>
                                    <dd>
                                        <img src="images/upload/<%=listw[0].Zst %>" width="430" height="170" /></dd>
                                    <dt>
                                        <%=listw[0].Name.Length <= 15?listw[0].Name : listw[0].Name.ToString().Substring(0,15)%></dt>
                                    <span>￥<%=listw[0].Hprice %>起</span><em><%=listw[0].Dq.Length >= 8 ? listw[0].Dq.Substring(0, 8) + "..." : listw[0].Dq%></em>
                                </dl>
                            </a>
                        </div>
                        <div class="jsr_down_l_2">
                            <ul class="g_u">
                                <a href="ly_xq.aspx?xqid=<%=listw[1].Id %>">
                                    <li class="gua">
                                        <dl>
                                            <dd>
                                                <img src="images/upload/<%=listw[1].Zst %>" width="208" height="80" /></dd>
                                            <dt>
                                                <%=listw[1].Name.Length <= 13 ? listw[1].Name : listw[1].Name.ToString().Substring(0, 13)+"..."%></dt>
                                        </dl>
                                        <span>￥<%=listw[1].Hprice %>起</span><em><%=listw[1].Dq.Length >= 8 ? listw[1].Dq.Substring(0, 8) + "..." : listw[1].Dq%></em>
                                    </li>
                                </a><a href="ly_xq.aspx?xqid=<%=listw[2].Id %>">
                                    <li class="gub">
                                        <dl>
                                            <dd>
                                                <img src="images/upload/<%=listw[2].Zst %>" width="208" height="80" /></dd>
                                            <dt>
                                                <%=listw[2].Name.Length <= 13 ? listw[2].Name : listw[2].Name.Substring(0, 13)+"..."%></dt>
                                        </dl>
                                        <span>￥<%=listw[2].Hprice %>起</span><em><%=listw[2].Dq.Length >= 8 ? listw[2].Dq.Substring(0, 8) + "..." : listw[2].Dq%></em>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <div class="jsr_down_r">
                        <ul>
                            <% for (int i = 3; i < listw.Count; i++)
                               { %><a href="ly_xq.aspx?xqid=<%=listw[i].Id %>">
                                       <li>
                                           <dl>
                                               <dd>
                                                   <img src="images/upload/<%=listw[i].Zst %>" width="201" height="120" /></dd>
                                               <dt>
                                                   <%=listw[i].Name.Length <= 10 ? listw[i].Name : listw[i].Name.Substring(0, 10)+"..."%></dt>
                                           </dl>
                                           <span>￥<%=listw[i].Hprice %>起</span><em><%=listw[i].Dq.Length >= 8 ? listw[i].Dq.Substring(0, 8) + "..." : listw[i].Dq%></em>
                                       </li>
                                   </a>
                            <%  }%>
                        </ul>
                    </div>
                    <div>
                        <a href="ly_gd.aspx?dqid=gw"><span class="geng">更多 >></span></a></div>
                </div>
            </div>
        </div>
        <div class="jpxl_sh sh3">
            <div class="jpxl_sh_l">
                <div class="jsl_up">
                    <img src="images/gangao_logo.png" />
                </div>
                <div class="jsl_down">
                    <img src="images/gangaotai_zhan.png" />

                    <a href="http://www.bjygcf.com/swly/ly_sou.aspx?sstxt=港澳"><div id="zhuq1"></div></a>
                     <a href="http://www.bjygcf.com/swly/ly_sou.aspx?sstxt=台湾"><div id="zhuq2"></div></a>

                </div>
            </div>
            <div class="jpxl_sh_r">
                <div class="jsr_up">
                </div>
                <div class="jsr_down">
                    <div class="jsr_down_l">
                        <div class="jsr_down_l_1">
                            <a href="ly_xq.aspx?xqid=<%=listg[0].Id %>">
                                <dl>
                                    <dd>
                                        <img src="images/upload/<%=listg[0].Zst %>" width="430" height="170" /></dd>
                                    <dt>
                                        <%=listg[0].Name.Length <= 15?listg[0].Name : listg[0].Name.ToString().Substring(0,15)%></dt>
                                    <span>￥<%=listg[0].Hprice %>起</span><em><%=listg[0].Dq.Length >= 8 ? listg[0].Dq.Substring(0, 8) + "..." : listg[0].Dq%></em>
                                </dl>
                            </a>
                        </div>
                        <div class="jsr_down_l_2">
                            <ul class="g_u">
                                <a href="ly_xq.aspx?xqid=<%=listg[1].Id %>">
                                    <li class="gua">
                                        <dl>
                                            <dd>
                                                <img src="images/upload/<%=listg[1].Zst %>" width="208" height="80" /></dd>
                                            <dt>
                                                <%=listg[1].Name.Length <= 13 ? listg[1].Name : listg[1].Name.ToString().Substring(0, 13)+"..."%></dt>
                                        </dl>
                                        <span>￥<%=listg[1].Hprice %>起</span><em><%=listg[1].Dq.Length >= 8 ? listg[1].Dq.Substring(0, 8) + "..." : listg[1].Dq%></em>
                                    </li>
                                </a><a href="ly_xq.aspx?xqid=<%=listg[2].Id %>">
                                    <li class="gub">
                                        <dl>
                                            <dd>
                                                <img src="images/upload/<%=listg[2].Zst %>" width="208" height="80" /></dd>
                                            <dt>
                                                <%=listg[2].Name.Length <= 13 ? listg[2].Name : listg[2].Name.Substring(0, 13)+"..."%></dt>
                                        </dl>
                                        <span>￥<%=listg[2].Hprice %>起</span><em><%=listg[2].Dq.Length >= 8 ? listg[2].Dq.Substring(0, 8) + "..." : listg[2].Dq%></em>
                                    </li>
                                </a>
                            </ul>
                        </div>
                    </div>
                    <div class="jsr_down_r">
                        <ul>
                            <% for (int i = 3; i < listg.Count; i++)
                               { %><a href="ly_xq.aspx?xqid=<%=listg[i].Id %>">
                                       <li>
                                           <dl>
                                               <dd>
                                                   <img src="images/upload/<%=listg[i].Zst %>" width="201" height="120" /></dd>
                                               <dt>
                                                   <%=listg[i].Name.Length <= 10 ? listg[i].Name : listg[i].Name.Substring(0, 10)+"..."%></dt>
                                           </dl>
                                           <span>￥<%=listg[i].Hprice %>起</span><em><%=listg[i].Dq.Length >= 8 ? listg[i].Dq.Substring(0, 8) + "..." : listg[i].Dq%></em>
                                       </li>
                                   </a>
                            <%  }%>
                        </ul>
                    </div>
                </div>
            </div>
            <div>
                <a href="ly_gd.aspx?dqid=gat"><span class="geng">更多 >></span></a></div>
        </div>
    </div>
    <div id="hy" class="maqjz">
        <div class="hy_up">
            <img src="images/hy_logo.png" />
        </div>
        <div class="hy_down">
            <div class="hy_down_l">
                <img src="images/hy_zhan.png" />
            </div>
            <div class="hy_down_r">
                <ul>
                    <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlDataSourcehy">
                        <ItemTemplate>
                            <li>
                                <img class="th1" src="images/upload/<%#Eval("kimg") %>" width="235" height="150" /></li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
                <asp:Repeater ID="Repeater7" runat="server" DataSourceID="SqlDataSourcehy">
                    <ItemTemplate>
                        <span class="hy_dong<%#Eval("id") %> hy_dong"><em>
                            <%#Eval("kjj") %>
                        </em></span>
                    </ItemTemplate>
                </asp:Repeater>
                <ul class="hy_kong">
                    <a href="ly_hyk.aspx?hykid=1">
                        <li class="fyh1" style="position: absolute; left: 14px"></li>
                    </a><a href="ly_hyk.aspx?hykid=2">
                        <li class="fyh2" style="position: absolute; left: 310px"></li>
                    </a><a href="ly_hyk.aspx?hykid=3">
                        <li class="fyh3" style="position: absolute; left: 603px"></li>
                    </a>
                </ul>
                             
            </div>
        </div>
    </div>
    <div id="hz" class="maqjz">
        <div class="hz_up">
            <img src="images/hz_logo.png" />
        </div>
        <div class="hz_dian_l">
            <img src="images/hz_upp.png" />
        </div>
        <div class="hz_down_bg">
            <div class="hz_down">
                <asp:Repeater ID="Repeater8" runat="server" DataSourceID="SqlDataSourcehz">
                    <ItemTemplate>
                        <li>
                            <%#Eval("ab_hb") %></li>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="hz_dian_r">
            <img src="images/hz_dow.png" />
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
    <asp:SqlDataSource ID="SqlDataSourcehy" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_hyk]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourcehz" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ab_hb] FROM [bjygcf_ab]">
    </asp:SqlDataSource>
</asp:Content>
