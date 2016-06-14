<%@ Page Title="" Language="C#" MasterPageFile="~/about/MasterPage.master" AutoEventWireup="true"
    CodeFile="ab_rlzy.aspx.cs" Inherits="about_ab_rlzy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="big_wrapper">
        <div class="top_gywm">
            <ul>
                <li class="gywm_left">
                    <div class="gywm_liebiao">
                        <ul>
                            <li class="gywm_lbname"><span class="spa">人力资源 </span><span class="spb">adout us</span></li>
                            <li class="gywm_lb">
                                <div>
                                    <ul>
                                        <li><a href="#" onclick="toggle('1')">人才理念</a></li>
                                        <li><a href="#" onclick="toggle('2')">社会招聘</a></li>
                                        <li><a href="#" onclick="toggle('3')">校园招聘</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="lxwm_liebiao">
                        <ul>
                            <li class="lxwm_lianxi"><span class="spa">联系我们</span><span class="spb">adout us</span></li>
                            <li class="lxwm_lb">
                                <div>
                                    <ul>
                                        <li class="lxwm_rexian">服务热线：010-53600170</li>
                                        <li class="lxwm_yj">邮件：bjygcf@bjygcf.com</li>
                                        <li class="lxwm_images">
                                            <img src="images/lxwm.png" /></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="gywm_right" id="div1" style="display: block">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">人才理念<span>company profil</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="gyimages">
                        <ul>
                            <li class="gyrcln">
                                <img src="images/3000_2.png" alt="qweqweqwe" />
                            </li>
                            <li class="gyrneiron">北京一格财富投资咨询有限公司是一个具有潜力的公司，在这个行业中拥有丰富的经营理念和投资渠道，是一个有活力，有朝气，充满了激情的公司，公司主营业务是投资咨询，涉及金融领域的信托投资，私募基金，有限合伙，证券，基金，银行信贷，信用卡，人寿保险，财产保险，企业保险，国际旅游等业务，为客户提供最新的投资渠道咨询和投资管理。
                                公司创始人朱总是一位来自外地的退伍军人，他拥有一个永不服输，坚韧不拔的性格，军人的素质让他在繁华的都市里找到如何生存的技巧，他具有丰富的经营理念和营销策略，他带领的团队在北京用短短几年内，让每一个成员都实现了年薪达30万以上，通过自身的奋斗实现了买车买房的梦想。它将是未来成长速度极快的公司，他的发展将带给每一个公司员工一个同步成长的机会，让您在这里实现创业的梦想，体现人生的价值，不断的成长与发展，让有为青年能在北漂的城市里找到一份属于自己的事业，让您实现稳定工作，舒适的环境，高薪的收入，实现您能在北京安居乐业的机会。
                                一格财富带个你别具一格的人生！一格财富期待与有梦想的你牵手！ 成功捂语： 不是因为有了希望才坚持，而是因为坚持了才有希望！ 不是因为有了机会才争取，而是因为争取了才有机会！
                                不是因为会了才去做，而是因为做了才能会！ 不是成长了才去承担，而是因为承担了才会成长！ 不是拥有了才付出，而是因为付出了才会拥有！ 不是因为突破了才挑战，而是因为挑战了才突破！
                                不是因为成功了才成长，而是因为成长了才成功！ 不是因为你有了条件才能够成功，而是因为你想成功必须去创造条件！ 送给还在为工作奔波的，迷茫的，跳槽的，刚刚毕业的求职者！
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="gywm_right" id="div2" style="display: none">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">社会招聘<span>company profil</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="gyimages">
                        <ul>
                            <li class="gyimagesA">
                                <div class="content">
                                    <div class="contName">
                                        <ul>
                                            <li class="conleft">招聘职位</li>
                                            <li class="conInthe">招聘人数</li>
                                            <li class="conright">招聘类型</li>
                                            <li class="conrightadd">工作地区</li>
                                        </ul>
                                    </div>
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                     <dl class="hr2list">
                                            <dt class="dq"><span class="hr2gw"><%#Eval("zp_zw") %></span>
                                                <span class="hr2dw"><%#Eval("zp_rs") %></span>
                                                <span class="hr2dwadd"><%#Eval("zp_lx") %></span>
                                                <span class="hr2rs"><%#Eval("zp_dq") %></span>
                                                <span class="hr2zt"><img src="<%#Container.ItemIndex==0 ? "images/ico12.gif" : "images/ico09.gif" %>" alt="招聘"></span> 
                                             </dt>
                                            <dd style="display:<%#Container.ItemIndex==0 ? "block" : "none" %>">
                                            <br>
                                            <p>
                                                <strong class="hongse">岗位职责：</strong><br>
                                                <br>
                                                <p>
                                                    <%#Eval("zp_gw") %>
                                                </p>
                                                <p>
                                                    <br />
                                                    任职资格：<br />
                                                      <%#Eval("zp_rz") %>       
                                                  </p>
                                                <p>
                                                    联系人：温经理&nbsp;&nbsp; 联系电话：010-53600170</p>
                                            </p>
                                            <p>
                                                <strong class="hongse">招聘部门：</strong> <%#Eval("zp_bm") %> 
                                            </p>
                                            <br>
                                            <p>
                                                <a href="#" onclick="div4b('<%#Eval("zp_zw") %>');"><span class="dr_span"></span></a>
                                            </p>
                                        </dd>
                                    </dl>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                        SelectCommand="SELECT [zp_zw], [zp_rs], [zp_lx], [zp_dq], [fb_sj], [zp_gw], [zp_rz],[zp_bm] ,[id] FROM [bjygcf_rc] where [zp_qd]='校园' ORDER BY [id] DESC "></asp:SqlDataSource>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="gywm_right" id="div3" style="display: none">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">校园招聘<span>company profil</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="gyimages">
                        <ul>
                            <li class="gyimagesA">
                                <div class="content">
                                    <div class="contName">
                                        <ul>
                                            <li class="conleft">招聘职位</li>
                                            <li class="conInthe">招聘人数</li>
                                            <li class="conright">招聘类型</li>
                                            <li class="conrightadd">工作地区</li>
                                        </ul>
                                    </div>
                                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                    <ItemTemplate>
                                     <dl class="hr2list">
                                            <dt class="dq"><span class="hr2gw"><%#Eval("zp_zw") %></span>
                                                <span class="hr2dw"><%#Eval("zp_rs") %></span>
                                                <span class="hr2dwadd"><%#Eval("zp_lx") %></span>
                                                <span class="hr2rs"><%#Eval("zp_dq") %></span>
                                                <span class="hr2zt"><img src="<%#Container.ItemIndex==0 ? "images/ico12.gif" : "images/ico09.gif" %>" alt="招聘"></span> 
                                             </dt>
                                            <dd style="display:<%#Container.ItemIndex==0 ? "block" : "none" %>">
                                            <br>
                                            <p>
                                                <strong class="hongse">岗位职责：</strong><br>
                                                <br>
                                                <p>
                                                    <%#Eval("zp_gw") %>
                                                </p>
                                                <p>
                                                    <br />
                                                    任职资格：<br />
                                                      <%#Eval("zp_rz") %>       
                                                  </p>
                                                <p>
                                                    联系人：温经理&nbsp;&nbsp; 联系电话：010-53600170</p>
                                            </p>
                                            <p>
                                                <strong class="hongse">招聘部门：</strong> <%#Eval("zp_bm") %> 
                                            </p>
                                            <br>
                                            <p>
                                                <a href="#" onclick="div4b('<%#Eval("zp_zw") %>');"><span class="dr_span"></span></a>
                                            </p>
                                        </dd>
                                    </dl>
                                    </ItemTemplate>
                                    </asp:Repeater>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                                        SelectCommand="SELECT [zp_zw], [zp_rs], [zp_lx], [zp_dq], [fb_sj], [zp_gw], [zp_rz],[zp_bm] ,[id] FROM [bjygcf_rc] where [zp_qd]='社会' ORDER BY [id] DESC "></asp:SqlDataSource>
                                </div>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="gywm_right" id="div4" style="display: none">
                    <div class="gywm_xp">
                    </div>
                    <div class="gywm_rightName">
                        <ul>
                            <li class="gyName">投递简历<span>company profil</span></li>
                            <li class="gyyou"></li>
                        </ul>
                    </div>
                    <div class="gyimages">
                        <table class="tablebroder">
                                <tbody>
                                    <tr>
                                        <td>
                                            <p>
                                                <span class="style5">姓名：</span>
                                                <asp:TextBox ID="Name" runat="server" Height="18px" Width="127px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name"
                                                    ErrorMessage="请输入您的名字" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                                <span class="style2">应聘职位：</span>
                                                <asp:TextBox ID="ypgw" runat="server" Height="16px" Width="106px"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ypgw"
                                                    ErrorMessage="请输入您要应聘的职位" ForeColor="#FF3300"></asp:RequiredFieldValidator></p>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td><br />
                                            <p>
                                                上传简历 <span class="style71">
                                                    <asp:FileUpload ID="myFile" runat="server" name="myFile" Height="19px" Width="216px" />
                                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上传" Width="45px" />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="myFile"
                                                        ErrorMessage="请选择您的简历，支持.doc .docx .jpg .png .pdf" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                                </span>
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/zplc.gif" style="width:500px;"/>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <script type="text/JavaScript">
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
        toggle(getQueryString("rlzy"));
        function div4b(zp_zw) {
            document.getElementById("<%=ypgw.ClientID %>").value = zp_zw;
            document.getElementById("div3").style.display = "none";
            document.getElementById("div2").style.display = "none";
            document.getElementById("div4").style.display = "block";
        }
    </script>
    <script type="text/javascript">
        $(function () {
            $(".hr2list dt").click(function () {
                if ($(this).find(".hr2zt img").attr("src") == "images/ico12.gif") {
                    $(this).removeClass("dq").find(".hr2zt img").attr("src", "images/ico09.gif").end().next("dd").hide();
                } else {
                    $(".hr2list dt").removeClass("dq").find(".hr2zt img").attr("src", "images/ico09.gif").end().next("dd").hide();
                    $(this).addClass("dq").find(".hr2zt img").attr("src", "images/ico12.gif").end().next("dd").show();
                }
            });
        });
    </script>
</asp:Content>
