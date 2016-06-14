<%@ Page Title="" Language="C#" MasterPageFile="~/jrlc/MasterPage.master" AutoEventWireup="true"
    CodeFile="jr_zx.aspx.cs" Inherits="jrlc_jr_zx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/gold_zx.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="gold_zx_body">
        <img class="gold_zx_ban" src="images/gold_zx_banner.jpg" />
        <div class="gold_zx_bodyd">
            <div class="gold_zx_bodyl">
                <ul>
                    <li>一格投顾</li>
                </ul>
                <div class="gold_zx_fcc gold_zx_fcc1">
                    <h3>
                        一格投顾:</h3>
                    <img class="fcc_img" src="images/jin_biao.png" />
                  个人（家庭）投资理财
                  <br/>
我们以足够专业，经验丰富的顾问团队秉持风控严谨、收益丰硕、优中选优、量身定制的服务理念，与多家大型金融及金融服务机构联手为个人及家庭客户提供包括信托投资、私募基金（有限合伙）、消费信贷、置业贷款、信用卡、人寿保险、财产保险等在内的多元化投资理财解决方案。
企业金融
<br />
我们与多家金融和非金融机构合作，针对企业发展不同阶段，在流动资金、项目建设、设备添置、卖方融资、工程垫款、过桥资金等多环节为各行业企业提供高效、低成本的融资整体解决方案。


                </div>
                <script>
                    jQuery('#gold_zx_body .gold_zx_bodyd ul li').hover(function () {
                        jQuery('#gold_zx_body .gold_zx_bodyd .gold_zx_fcc').eq(jQuery(this).index()).show();
                    }, function () {
                        jQuery('#gold_zx_body .gold_zx_bodyd .gold_zx_fcc').eq(jQuery(this).index()).hide();
                    });

                    jQuery('#gold_zx_body .gold_zx_bodyd .gold_zx_fcc').hover(function () {
                        jQuery(this).show();
                    }, function () {
                        jQuery(this).hide();
                    });
                </script>
            </div>
            <div class="gold_zx_bodyr">
                <img class="partner" src="images/partner.jpg" />
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="id">
                    <ItemTemplate><a href="jr_zx_xq.aspx?zxxqid=<%#Eval("id") %>">
                        <div class="gold_zx_xuan">
                            <img src="images/upload/<%#Eval("img") %>" width="200px" height="125px" />
                            <dl>
                                <dt>
                                    <%#Eval("title").ToString().Length>=20?Eval("title").ToString().Substring(0,20)+"...":Eval("title") %></dt>
                                <dd>
                                    <%#Eval("zjj").ToString().Length>=100?Eval("zjj").ToString().Substring(0,100)+"...":Eval("zjj") %></dd>
                            </dl>
                        </div></a>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                         <div class="pagination fya">
                                        <asp:DataPager ID="DataPager1" runat="server" PageSize="5" PagedControlID="ListView1">
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
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_jrzx] ORDER BY [showid] DESC">
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
