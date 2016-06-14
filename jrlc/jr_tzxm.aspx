<%@ Page Title="" Language="C#" MasterPageFile="~/jrlc/MasterPage.master" AutoEventWireup="true"
    CodeFile="jr_tzxm.aspx.cs" Inherits="jrlc_jr_tzxm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/gold_xq_xq.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="gold_xq_xq_body">
        <img src="images/gold_xq_xq_banner.jpg" />
        <div class="gold_xq_xq_bodyd">
            <div id="tz">
                <div class="tz_ban">
                    <p>
                        投资项目</p>
                    <span>北京一格财富投资咨询有限公司——投资部</span> <em>7×24 客服热线：010-52746846</em>
                </div>
                <ul>
                    <li class="xm"><span class="cam1">产品名称</span><span class="cam2">基金规模</span><span
                        class="cam3">预计收益</span><span class="cam4">投资期限</span><span class="cam5">返息方式</span><span
                            class="cam7">产品状态</span><span class="cam6">在线预约</span></li>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_lccp] ORDER BY [showid] DESC">
                    </asp:SqlDataSource>
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <li class="ji"><a href="jr_tzxm_xq.aspx?jrtzid=<%#Eval("id") %>"><span class="mm nm1">
                                <%#Eval("name").ToString().Length>=11?Eval("name").ToString().Substring(0,11)+"...":Eval("name") %></span></a><span
                                    class="nm2 mm">￥<%#Eval("jine") %></span><span class="nm3 mm"><%#Eval("shouyi") %></span><span
                                        class="nm4 mm"><%#Eval("zhouqi") %></span><span class="nm5 mm"><%#Eval("huankuan") %></span><span
                                            class="nm8 mm <%#Eval("zhuangtai").ToString()=="热销"?"rexiao":""%>"><%#Eval("zhuangtai") %></span><span
                                                class="nm6 mm" onclick="mpnchat.util.openChat();">点击预约</span></li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <li runat="server" id="itemPlaceholder" />
                            <div class="pagination">
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
                        </LayoutTemplate>
                    </asp:ListView>
                </ul>
            </div>
            <div class="zha_ba" style="margin-top:40px">
                <h3 class="tzjs">
                    已购基金者</h3>
                <ul class="tz_yhu tz_jj_dz">
                    <div class="ddl">
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <dl>
                                    <dd>
                                        客户姓名:<%#Eval("name").ToString().Substring(0,1)+"***" %></dd>
                                    <dd>
                                        购买时间：<%#Eval("time") %></dd>
                                    <dd>
                                        购买项目：<span class="gui"><%#Eval("xm_name") %></span></dd>
                                    <dd>
                                        购买金额：<%#Eval("jine") %></dd>
                                </dl>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </ul>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_khgd] ORDER BY [showid] DESC">
                </asp:SqlDataSource>
                <script>



                    var num = 0;
                    var timer = setInterval(function () {
                        jQuery('#gold_xq_xq_body .zha_ba .tz_jj_dz .ddl').show().animate({
                            top: (-200) * num + 'px'
                        }, 'slow');
                        num++;
                        if (num == jQuery('#gold_xq_xq_body .zha_ba .tz_jj_dz .ddl dl').length) {


                            num = 0;


                            setTimeout(function () {
                                jQuery('#gold_xq_xq_body .zha_ba .tz_jj_dz .ddl').css({
                                    top: 0
                                });
                            }, 5000);


                        }
                    }, 5500);
                        


                </script>
                <h3 class="tzjs ts">
                    理财攻略</h3>
                <ul class="tz_yhu tz_hy" style="padding-bottom:14px;">
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
                        <ItemTemplate>
                            <a href="jr_glv_xq.aspx?jrxqid=<%#Eval("id") %>">
                                <li class="tz_biaoyu">
                                    <%#Eval("name").ToString().Length>=10?Eval("name").ToString().Substring(0,10)+"...":Eval("name") %></li></a>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_jrgl] order by RANDOM() limit 0,5">
                    </asp:SqlDataSource>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
