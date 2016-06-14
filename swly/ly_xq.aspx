<%@ Page Title="" Language="C#" MasterPageFile="~/swly/MasterPage.master" AutoEventWireup="true"
    CodeFile="ly_xq.aspx.cs" Inherits="admin_swly_ly_xq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/travl_mx.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
        <div id="mx" class="maqjz">
            <div class="mx_head">
                <h5>
                    线路热推:</h5>
                <div>
                    <ul>
                        <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource4">
                            <ItemTemplate>
                                   <a href="ly_xq.aspx?xqid=<%#Eval("id") %>"><li><%#Eval("name").ToString().Length >= 24 ? Eval("name").ToString().Substring(0,24)+"..." : Eval("name").ToString()%></li></a>
                            </ItemTemplate>
                        </asp:Repeater> 
                    </ul>
                </div>
                <h5>
                    线路热推:</h5>
                <div>
                    <ul> 
                        <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource5">
                            <ItemTemplate>
                                   <a href="ly_xq.aspx?xqid=<%#Eval("id") %>"><li><%#Eval("name").ToString().Length >= 24 ? Eval("name").ToString().Substring(0,24)+"..." : Eval("name").ToString()%></li></a>
                            </ItemTemplate>
                        </asp:Repeater>   
                     
                    </ul>
                </div>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [bjygcf_lyxl] WHERE ([yh] IS NOT NULL) limit 0,6"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [bjygcf_lyxl] WHERE ([yh] IS NOT NULL) limit 6,6"></asp:SqlDataSource>
            </div>
            <div class="mx_body">
                <div class="mx_bodyl">
                    <div class="mx_bodyl_top">
                        <h2>
                            一格旅游部推荐</h2>
                        <img src="images/mx_kefu.png" />
                        <ul>
                            <li>1、完全贯彻新旅游法规</li>
                            <li>2、价格真实</li>
                            <li>3、严控服务流程</li>
                            <li>4、全程质量监督</li>
                        </ul>
                    </div>
                    <div class="mx_bodyl_zh">
                        <ul>
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                                <ItemTemplate>
                                    <a href="ly_sou.aspx?sstxt=<%#Eval("dq") %>"><li class="<%# Container.ItemIndex==0?"vf":"" %>"><%#Eval("dq").ToString().Trim().Length>=3?Eval("dq").ToString().Substring(0,3):Eval("dq") %></li></a>
                                </ItemTemplate>
                            </asp:Repeater>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                
                                SelectCommand="SELECT DISTINCT [dq] FROM [bjygcf_lyxl] ORDER BY [showid] DESC"></asp:SqlDataSource>
                           
                        </ul>
                    </div>
                    <div class="mx_bodyl_but">
                        <h2>
                            猜你喜欢</h2>
                        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                             <a href="ly_xq.aspx?xqid=<%#Eval("id") %>">
                            <dl>
                                <dd>
                                    <img src="images/upload/<%#Eval("zst") %>" width="180" height="120" /></dd>
                                <dt><%#Eval("name").ToString().Length >= 30 ? Eval("name").ToString().Substring(0,30) : Eval("name").ToString()%></dt>
                            </dl>
                            <span>￥<%#Eval("hprice") %>起</span> </a>
                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                            SelectCommand="SELECT * FROM [bjygcf_lyxl] limit 0,6" >
                        </asp:SqlDataSource>
                        
                    </div>
                </div>
                <div class="mx_bodyr">
                    <div class="mx_bodyr_top">
                        <div class="mx_t1">
                            <span>>><a href="ly_gd.aspx?gdid=<%=sdr["country"].ToString() %>"><%=sdr["country"].ToString() %></a></span> <span>>><a href="ly_sou.aspx?sstxt=<%=sdr["dq"].ToString() %>"><%=sdr["dq"].ToString() %></a></span><span style="padding-left:30px;color:#ccc">出境旅游预订须知</span>
                        </div>
                        <div class="mx_t2">
                            <span>
                                <p>
                                    <%=sdr["name"].ToString() %></p>
                            </span>
                        </div>
                    </div>
                    <div class="mx_zhanban">
                        <div class="mx_zhanl">
                            <img src="images/upload/<%=sdr["zst"].ToString() %>"  width="312" height="208"/>
                            <img src="images/huiyuan1.gif" />
                            <div class="mx_zhxua">
                                    <p><h4>
                                        线路市场价：¥</h4>
                                    <span style=" text-decoration:line-through"><%=sdr["yh"].ToString() == "" ? "暂无信息" : sdr["yh"].ToString() %></span>
                                    </p>
                                   <p> <h4>
                                       一格会员价：¥</h4>
                                    <span><%=sdr["yh2"].ToString() == "" ? "暂无信息" : sdr["yh2"].ToString()%></span></p>
                            </div>
                        </div>
                        <div class="mx_zhanr">
                            <p>
                                1、完全贯彻新旅游法规 2、价格真实 3、严控服务流程 4、全程质量监督</p>
                            <ul>
                                <li>市场价： <span>￥<%=sdr["price"].ToString() %>元</span>起</li>
                                <li>会员价： <span>￥<%=sdr["hprice"].ToString()%>元</span>起</li>
                                <li>行程天数： <span><%=sdr["days"].ToString()%></span></li>
                                <li>住宿标准： <span><%=sdr["hotel"].ToString()%></span></li><br />
                                <li>发团日期: <span><%=sdr["times"].ToString() %></span></li>
                            </ul>
                            <img src="images/xm_hhh.gif" />
                        </div>
                    </div>
                    <div class="mx_liang">
                        <p class="mx_l_top">
                            <img src="images/xc_R6.png" /> </p>
                            <%=sdr["ts"].ToString() %>
                    </div>
                    <div class="xc" >
                        <div class="xc_zhend">
                            <div class="xc_d" id="xc" style="border:1px solid #ccc">
                                <%for (int i = 0; i<list.Count;i++ ) {%>
                                <ul>
                                    <li class="xc_li">
                                        <h3>
                                            <%=list[i].Day %></h3>
                                        <span><%=list[i].Title %></span></li>
                                    <li class="xc_li xc_li1"><%=list[i].Context %></li>
                                    <li class="xc_li1">
                                        <div>
                                            <h4>
                                                用餐:</h4>
                                            <p>
                                                <%=list[i].Food %></p>
                                            <br />
                                            <h4>
                                                住宿:</h4>
                                            <p>
                                                <%=list[i].Hotel %></p>
                                        </div>
                                    </li> 
                                    <li class="li_img" style="display:<%= list[i].Img1.Length == 0 ? "none":"block"%>">
                                        <dl class="dl1">
                                            <dd>
                                                <img src="images/upload/<%=list[i].Img1 %>" width="300" height="200" /></dd>
                                        </dl>
                                        <dl class="dl2">
                                            <dd>
                                                <img src="images/upload/<%=list[i].Img2 %>" width="300" height="200"  /></dd>
                                        </dl>
                                    </li>
                                </ul>
                                <%} %>
                            </div>
                            <div class="xc_jf" id="jf">
                                <div class="xc_jf_head">
                                    <h2>
                                        经费说明</h2>
                                </div>
                                <p>
                                    <strong>费用包含</strong></p>
                                <ul>
                                    <li>1、行程内安排的游览节目、景点门票。</li>
                                    <li>2、全程交通费、机场税。</li>
                                    <li>3、酒店：住宿星级酒店双人标准间，要求单间者现付差价。</li>
                                    <li>4、膳食：供应旅程内早、午、晚三餐（含飞机上用餐）。</li>
                                    <li>5、行李：每位游客可免费携带托运行李一件（不超过20千克）。</li>
                                </ul>
                            </div>
                            <div class="xc_jf xc_cant" id="ct">
                                <div class="xc_jf_head">
                                    <h2>
                                        参团须知</h2>
                                </div>
                                <p>
                                    <strong>参团须知</strong></p>
                                <ul>
                                    <li>1、 为了确保您能够按时出行，产品确认后请在48小时内付款，同时请按要求尽快提供出游所需的材料并签订旅游合同。 </li>
                                    <li>2、 团队报价按2人入住1间房核算，如出现单男单女，则尽量安排与其他同性别团友拼房或加床；若客人无需安排或旅行社无法安排，请补齐单房差以享用 单人房间。</li>
                                    <li>3、 团队机票一经开出，不得更改，不得签转，不得退票；另飞行时间、车程时间、船程时间以当日实际所用时间为准。 如遇国家或航空公司政策性调整机票、燃油税价格，按调整后的实际价格结算。</li>
                                    <li>4、购物店:当地购物时请慎重考虑，把握好质量与价格，请务必保存好所有的购物票据，若购物点提供发票，请索要。 </li>
                                    <li>5、 是否给予签证或签注、是否准予出入境，是使领馆及有关部门的权力，如因游客自身原因或因提供材料存在问题不能及时办理签证或签注，以及被有关部门 拒发签证或签注，不准出入境而影响行程的，签证费及其他费用损失由游客自行承担。
                                    </li>
                                    <li>6、 为了不耽误您的行程，请您在航班起飞前180分钟到达机场办理登机以及出入境相关手续；如涉及海外国内段行程，请您在航班起飞前60分钟到达机场 办理登机手续。
                                    </li>
                                    <li>7、出团通知最晚于出团前1个工作日发送，若能提前确定，我们将会第一时间通知您。 </li>
                                    <li>8、 此团收客人数不足10人时，本公司会于出发前7个工作日通知取消该行程，您可以选择延期出发、更改线路出行，或退回团款。 </li>
                                    <li>9、团队游览中不允许擅自离团（自由活动除外），如有不便敬请谅解。 </li>
                                    <li>10、销签说明：团队返回后，请务必将护照及返程登机牌的原件交于领队统一办理销签手续（其中登机牌原件递送进领馆后是不予退还的，如您需要换取航空 公司的积分，可在机场换取登机牌时同时办理）；且按照各使领馆现行规定，会抽查团队部分或全部出团游客回国后面试销签，届时抽查到的游客必须
                                        按照使馆通知的时间本人前往使馆面试销签。 </li>
                                </ul>
                            </div>
                            <div class="xc_jf" style="width:0px;;height:0px;overflow:hidden" id="zf">
                                <div class="xc_jf_head">
                                    <h2>
                                        安全指南</h2>
                                </div>
                                <p>
                                    <strong>安全指南</strong></p>
                                <ul>
                                   <li>1.交通： 阿联酋国际航空公司经济舱</li>
 <li>2.签证：意大利个人旅游签证(北京领区)旅游签证</li>
 <li>3.住宿：全程3-4星级酒店标准间</li>
 <li>4.用餐： 欧陆式早餐；中式午晚餐18次 5菜一汤</li>
 <li>5.儿童价标准： 详情欢迎来电咨询~ </li>
                                </ul>
                            </div>
                            <div class="xc_jf xc_cant wtishi" style="height:400px;" id="wxts">
                                <div class="xc_jf_head">
                                    <h2>
                                        温馨提示</h2>
                                </div>
                                <p>
                                    <strong>温馨提示</strong></p>
                                <ul>
                                    <li> 1.请不要将贵重物品及自用应急药品放在托运行李中，以免丢失。 旅游过程中，也请妥善保存。</li>
  <li>2. 12周岁以下儿童收费标准：如酒店占床需按照成人费用支付，如酒店不占床，根据线路不同团费折扣不同。</li>
  <li>3. 因此团是散客拼团，当客人请听从导游安排，团进团出，不得擅自分团、脱团。</li>
  <li>4.如旅游者属港澳台人士或持外国护照，请于出发前确认是否有再次进入大陆的有效证件 。</li>
  <li>5.因本团为落地签证，收客截至日期约为出发前5日，出团通知将在出发前2日内发布。</li>
  <li>6 接待质量以客人在当地意见单为凭证，请您认真填写，如在当地有投诉意见，请在当地及时与我社联络。</li>
  <li>7. 航班因运力、天气、故障等原因造成延误，我社会尽力协调，必要时将对行程，做出调整，届时请配合并谅解。</li>
  <li>8. 其它说明：本团队导游、紧急联系人相关信息和联系方式，将在出团通知中载明。</li>

                                   
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="zixun">
                        <img src="images/zixun.png" />
                    </div>
                    <div class="guanzh">
                        <div class="guanzh_head">
                            <h3>
                                大家都很关注的旅游产品</h3>
                        </div>
                        <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
                        <ItemTemplate>
                            <a href="ly_xq.aspx?xqid=<%#Eval("id") %>">
                                        <dl>
                                            <dd>
                                                <img src="images/upload/<%#Eval("zst") %>" width="180" height="120"/></dd>
                                            <dt><%#Eval("name").ToString().Length >= 12 ? Eval("name").ToString().Substring(0,12)+"..." : Eval("name").ToString()%></dt>
                                        </dl>
                                        <span>￥<%#Eval("hprice") %>起</span> </a>
                        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [bjygcf_lyxl] limit 0,4">
                        </asp:SqlDataSource>
                       
                    </div>
                    <div class="pinpai">
                        <img src="images/pinpai.png" />
                    </div>
                </div>
            </div>
        </div>
     <% closeSql(); %>


</asp:Content>
