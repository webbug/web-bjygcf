<%@ Page Title="" Language="C#" MasterPageFile="~/jrlc/MasterPage.master" AutoEventWireup="true" CodeFile="jr_glv.aspx.cs" Inherits="jrlc_jr_glv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link rel="stylesheet" type="text/css" href="css/gold_gong.css" />
    <script type="text/javascript" src="js/travl_gong.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="bf">
        <div id="gbody">
            <div id="grb_lun">
                <ul id="grb_lun_img">
                    <li>
                        <img src="images/gold_gong_bg.jpg" alt="" /></li>
                    <li>
                        <img src="images/gold_gong_bg2.jpg" alt="" /></li>
                    <li>
                        <img src="images/gold_gong_bg3.jpg" alt="" /></li>
                    <li>
                        <img src="images/gold_gong_bg4.jpg" alt="" /></li>
                    <li>
                        <img src="images/gold_gong_bg5.jpg" alt="" /></li>
                </ul>
                <ul id="lun_dian">
                    <li>●</li>
                    <li>●</li>
                    <li>●</li>
                    <li>●</li>
                    <li>
                    ●<li>
                </ul>
                <span></span>
            </div>
            <div class="gbody_down">
                <div class="gbody_downl">
                    <div class="gbody_downl_top">
                        <h3>
                            一格理财热点！</h3>
                        <ul>
                            <li class="vf gf1">让您畅想不一样理财体验</li>
                            <li class="vf gf2">带给您不同主题理财专题</li>
                            <li class="vf gf3">让您欢畅搞定理财风险</li>
                            <li class="gf4">带您轻松包揽金融资讯</li>
                        </ul>
                        <img src="images/gong_tunbg2.png" />
                    </div>
                    <div class="gbody_re">
                        <div class="gb_re1">
                            <h4>
                                一格热推展示:</h4>
                            <div class="rb_lun rb_lun0">
                                <div class="jpzn">
                                    <h6>
                                        精品理财，为您领航</h6>
                                    <ul>
                                        <li>选择一格，纵情理财</li>
                                        <li>选择一格，安全理财</li>
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
                                热门话题&理财者说</h4>
                            <ul>
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>
                                       <a href="jr_glv_xq.aspx?jrxqid=<%#Eval("id") %>"><li><%#Eval("name").ToString().Length>=13?Eval("name").ToString().Substring(0,13)+"...":Eval("name").ToString() %></li></a>
                                </ItemTemplate>
                                </asp:Repeater>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                    SelectCommand="SELECT * FROM [bjygcf_jrgl] order by RANDOM() limit 0,5"></asp:SqlDataSource>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="gbody_downr">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
                        DataKeyNames="id">
                        
                        <ItemTemplate><a href="jr_glv_xq.aspx?jrxqid=<%#Eval("id") %>">
                        <div class="gold_xq">
                        <h2>
                            <%#Eval("name").ToString().Length>=25?Eval("name").ToString().Substring(0,25)+"...":Eval("name").ToString() %></h2>
                        <img src="images/upload/<%#Eval("img") %>" width="760" height="220" />
                        <span class="shuom"><%#Eval("jj").ToString().Length>=180?Eval("jj").ToString().Substring(0,180)+"...":Eval("jj").ToString() %></span>
                        </div></a>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <div ID="itemPlaceholderContainer" runat="server" style="">
                                <span runat="server" id="itemPlaceholder" />
                            </div>
                               <div class="pagination fya">
                                        <asp:DataPager ID="DataPager1" runat="server" PageSize="4" PagedControlID="ListView1">
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                        SelectCommand="SELECT * FROM [bjygcf_jrgl] ORDER BY [id] DESC"></asp:SqlDataSource>
                </div>
            </div>
            <div class="gong_d">
                <img src="images/gold_gong_dbg.png" />
            </div>
        </div>
    </div>
</asp:Content>


