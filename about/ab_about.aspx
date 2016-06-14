<%@ Page Title="" Language="C#" MasterPageFile="~/about/MasterPage.master" AutoEventWireup="true"
    CodeFile="ab_about.aspx.cs" Inherits="ab_about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=1.5&ak=DE84ef52718b953df3b628be2059fcaa"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="big_wrapper">
        <div class="top_gywm">
            <ul>
                <li class="gywm_left">
                    <div class="gywm_liebiao">
                        <ul>
                            <li class="gywm_lbname"><span class="spa">关于我们 </span><span class="spb">adout us</span></li>
                            <li class="gywm_lb">
                                <div>
                                    <ul>
                                        <li><a href="#" onclick="toggle('1')">公司简介</a></li>
                                        <li><a href="#" onclick="toggle('2')">企业文化</a></li>
                                        <li><a href="#" onclick="toggle('3')">组织架构</a></li>
                                        <li><a href="#" onclick="toggle('4')">合作伙伴</a></li>
                                        <li><a href="#" onclick="toggle('5')">联系我们</a></li>
                                        <li><a href="#" onclick="toggle('6')">意见反馈</a></li>
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
                                                <li class="xw_Name" style="display: <%# Container.ItemIndex==0?"block":"none"%>"><a
                                                    href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><b><font color="#FF6600">
                                                    <%# Eval("news_title").ToString().Length>=14?Eval("news_title").ToString().Substring(0,13):Eval("news_title") %></font>
                                                    </b></a></li>
                                                <ul style="display: <%# Container.ItemIndex==0?"block":"none"%>">
                                                    <ol class="News_images">
                                                        <img src="images/upload/<%#Eval("news_img")%>" height="134px" /></ol>
                                                    <ol class="News_neirong">
                                                        <%#Eval("news_title").ToString().Length>=32?Eval("news_title").ToString().Substring(0,32)+"...":Eval("news_title") %><p>
                                                            <a href="ab_news_info.aspx?newsid=<%#Eval("id") %>"><font color="#FF6600">详情 >></font>
                                                            </a>
                                                        </p>
                                                    </ol>
                                                </ul>
                                                <li class="xw_Name" style="display: <%# Container.ItemIndex>0?"block":"none"%>"><a
                                                    href="ab_news_info.aspx?newsid=<%#Eval("id") %>">
                                                    <%#Eval("news_title").ToString().Length>=14?Eval("news_title").ToString().Substring(0,13)+"...":Eval("news_title") %></a></li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                        ProviderName="<%$
            ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [id],
            [news_title], [news_context], [news_img], [news_time], [news_url] FROM [bjygcf_news]
            ORDER BY [id] DESC limit 0,5"></asp:SqlDataSource>
                </li>
                <li class="gywm_right" id="div1" style="display: block">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">公司简介<span>company profil</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="gyimages">
                        <ul>
                            <li class="gyimagesA">
                                <div>
                                    <ul>
                                        <li class="gyimagesAzuo">
                                            <img src="images/qweqwe.jpg" height="200px" /></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="gyimagesB">
                                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                        <%#Eval("ab_jj") %></ItemTemplate>
                                </asp:Repeater>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ab_jj], [ab_wh], [ab_jg],  [id] FROM [bjygcf_ab]">
                                </asp:SqlDataSource>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="gywm_right" id="div2" style="display: none">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">企业文化<span>company profil</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="gyimages">
                        <ul>
                            <li class="gyimagesA">
                                <div>
                                    <ul>
                                        <li class="gyimagesAzuo">
                                            <img src="images/qweqwe.jpg" height="200px" /></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="gyimagesB">
                                <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                        <%#Eval("ab_wh") %></ItemTemplate>
                                </asp:Repeater>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="gywm_right" id="div3" style="display: none">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">组织架构<span>company profil</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="gyimages">
                        <ul>
                            <li class="gyimagesA">
                                <div>
                                    <ul>
                                        <li class="gyimagesAzuo">
                                            <img src="images/qweqwe.jpg" height="200px" /></li>
                                    </ul>
                                </div>
                            </li>
                            <li class="gyimagesB">
                                <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                        <img src="images/<%#Eval("ab_jg") %>" /></ItemTemplate>
                                </asp:Repeater>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="gywm_right" id="div4" style="display: none">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">合作伙伴<span>company profil</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="gyimages">
                        <ul>
                            <li class="gyimagesA">
                                <div>
                                    <ul>
                                        <li class="gyimagesAzuo">
                                            <img src="images/qweqwe.jpg" height="200px" /></li>
                                    </ul>
                                </div>
                            </li>
                            <div style="background: none repeat scroll 0% 0% rgb(255, 255, 255); border: 1px solid rgb(230, 230, 230);"
                                class="p_module">
                                <div class="p_title">
                                    <a name="sl">合作伙伴</a></div>
                                <ul class="partner">
                                    <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource3">
                                        <ItemTemplate>
                                            <%#Eval("ab_hb") %>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ab_hb] FROM [bjygcf_ab] where id=1">
                                    </asp:SqlDataSource>
                                </ul>
                            </div>
                        </ul>
                    </div>
                </li>
                <li class="gywm_right" id="div5" style="display: none">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">联系我们<span>company profil</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="lxwmjs">
                        <p>
                            <img src="images/lxwm2.png" alt="" /></p>
                        <br />
                        <br />
                        <font size="4">北京一格财富投资咨询有限公司</font>
                        <br />
                        <br />
                        咨询热线： 010-53600170<br />
                        公司官网： www.bjygcf.com
                        <br />
                        招聘邮箱： hr-bjygcf@bjygcf.com<br />
                        公司邮箱： bjygcf@bjygcf.com<br />
                        地址：  北京市丰台区开阳路1号院瀚海花园大厦1603
                    </div>
                    <!--  地图 容器-->
                    <div id="l-map">
                    </div>
                    <!--  地图 结束-->
                </li>
                <li class="gywm_right" id="div6" style="display: none">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">意见建议<span>company profil</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="lxwmly">
                        <ul>
                        <p><font color="#FF0000">*</font>&nbsp;&nbsp;请留下您的意见和建议，帮助我们做得更好：)</p>
                        <li class="js_jy"> <asp:TextBox ID="jy" runat="server" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="jy"></asp:RequiredFieldValidator></li>
                        <p>
                            联系Email</p>
                        <li class="js_Email">
                            <input type="text" id="email" style="width: 500px; height: 30px;" runat="server" /></li>
                        <p>
                            手机号码</p>
                        <li class="js_Tel">
                            <input type="text" id="phone" style="width: 500px; height: 30px;" runat="server" /></li>
                        <li class="js_tjcz">
                            <asp:Button ID="Button1" runat="server" Text="提 交" OnClick="Button1_Click" OnClientClick="check();" />
                            &nbsp;&nbsp;&nbsp;&nbsp;<input name="" value="重 置" type="reset" /></li>
                        <li class="js_tjcz"><font size="2">说明：*为必填项，请填写完整。填写E-mail或者联系电话方便我们及时给您回复，此信息不公开仅限客户联络，请放心。</font>
                        </li>
                       </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <script type="text/javascript">

        // 百度地图API功能
        var map = new BMap.Map("l-map");
        var point = new BMap.Point(116.380244,39.874833);
        map.centerAndZoom(point, 15);
        var marker = new BMap.Marker(point);  // 创建标注
        map.addOverlay(marker);              // 将标注添加到地图中
        marker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画


        map.addControl(new BMap.OverviewMapControl());              //添加默认缩略地图控件
        map.addControl(new BMap.OverviewMapControl({ isOpen: true, anchor: BMAP_ANCHOR_TOP_RIGHT }));   //右上角，打开


        map.addControl(new BMap.NavigationControl());  //添加默认缩放平移控件
        map.addControl(new BMap.NavigationControl({ anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL }));  //右上角，仅包含平移和缩放按钮
        map.addControl(new BMap.NavigationControl({ anchor: BMAP_ANCHOR_BOTTOM_LEFT, type: BMAP_NAVIGATION_CONTROL_PAN }));  //左下角，仅包含平移按钮
        map.addControl(new BMap.NavigationControl({ anchor: BMAP_ANCHOR_BOTTOM_RIGHT, type: BMAP_NAVIGATION_CONTROL_ZOOM }));  //右下角，仅包含缩放按钮
        // 初始化地图,设置城市和地图级别。

        map.enableScrollWheelZoom();    //启用滚轮放大缩小，默认禁用
        map.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
								
								
    </script>
    <script language="JavaScript" type="text/JavaScript">
        function toggle(targetid) {
            document.getElementById("div" + targetid).style.display = "block";
            for (var i = 1; i <= 6; i++) {
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
        toggle(getQueryString("about"));
        function isMobil() {
            var s = document.getElementById("<%=phone.ClientID%>");
            var patrn = /^(13+\d{9})|(159+\d{8})|(153+\d{8})|(18+\d{9})$/; ;
            if (!patrn.exec(s.value)) {
                alert('提示\n\n请输入有效的手机号码！');
                s.focus();
                return false;
            } else { return true; }
        }
        function isMail() {
            var temp = document.getElementById("<%=email.ClientID%>");
            var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
            if (!myreg.exec(temp.value)) {
                alert('提示\n\n请输入有效的E_mail！');
                temp.focus();
                return false;
            } else { return true; }
        }
        function check() {
            var temp1 = document.getElementById("<%=email.ClientID%>").value.trim();
            var s1 = document.getElementById("<%=phone.ClientID%>").value.trim();
            if (s1 == "" && temp1 == "") { return true; }
            if (s1 != "") { return isMobil(); }
            if (temp1 != "") { return isMail(); }
        }
    </script>
</asp:Content>
