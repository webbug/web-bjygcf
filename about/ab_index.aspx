<%@ Page Title="" Language="C#" MasterPageFile="~/about/MasterPage.master" AutoEventWireup="true" CodeFile="ab_index.aspx.cs" Inherits="about_ab_index" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="big_wrapper">
        <div class="top_xinwen">
            <div class="xw_xinwen">
                <div class="xw_xw1">
                    <ul>
                        
                        <li class="xw_Name">新闻中心<span class="xw_gd">Learn More >></span></li>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                <ItemTemplate>
                                     <li class="xw_liebiao" onmouseover="javascript:blurtitle(this)" id="title<%#Container.ItemIndex %>"><a href="ab_news_info.aspx?newsid=<%#Eval("id") %>">
                            <%# Eval("news_title").ToString().Length >= 16 ? Eval("news_title").ToString().Substring(0, 16) + "..." : Eval("news_title").ToString()%></a><span><%# Eval("news_time") %></span></li>  
                                     <li class="xw_images" id="content<%#Container.ItemIndex %>"  style='display:<%#Container.ItemIndex == 0 ? "block" : "none"%>'><a href="ab_news_info.aspx?newsid=<%#Eval("id") %>"> <span class="xw_span"> 
                            <img src="images/upload/<%# Eval("news_img") %>" alt="<%#Eval("news_title") %>" width="100px" height="80px"/></span> <span class="xw_neirong">
                               <div class="xw_no1">
                                    <ul>
                                        <li class="cw_abcName"><%#Eval("news_title").ToString().Length >= 14 ? Eval("news_title").ToString().Substring(0, 13) + "..." : Eval("news_title").ToString()%> </li>
                                        <li class="cw_abcnoct"> <%# Eval("news_context").ToString().Length >= 23? Eval("news_context").ToString().Substring(0,22)+"...":Eval("news_context").ToString()%></li>
                                        <li class="cw_gengduo">Learn More >></li>
                                    </ul>
                                </div></a>
                            </span></li>  
                                </ItemTemplate>
                        </asp:Repeater>
                    
                    </ul>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                            
                        SelectCommand="SELECT [news_title], [news_context], [id], [news_img], [news_time], [news_url] FROM [bjygcf_news] ORDER BY [id] DESC limit 0,5"></asp:SqlDataSource>
                </div>
            </div>
            <div class="xw_chanpin">
                <div class="xw_xw1">
                    <ul>
                        <li class="xw_Name">人力资源<span class="xw_gd">Learn More >></span></li>
                        <asp:Repeater ID="Repeater2" runat="server">
                        </asp:Repeater>
                        <a href="ab_rlzy.aspx?rlzy=1"><div class="cp_abc" id="div1" style="display: block">
                            <ul>
                                <li><span class="cp_abcimag">
                                    <img src="images/xp1.png" alt="人才理念"/></span></li>
                                <li>
                                    <div class="cp_name">
                                        <ul>
                                            <li class="cp_abcName">人才理念</li>
                                            <li class="cp_abcnoct">北京一格财富投资咨询有限公司是一个具有潜力的公司，在这个行业中拥有丰富的经营理念和投资渠道，是一个有活力，有朝气，充满了激情的公司，公司主营业务是投资咨询.....</li>
                                            <li class="cp_gengduo">Learn More >></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div></a>
                          <a href="ab_rlzy.aspx?rlzy=2"><div class="cp_abc" id="div2" style="display: none">
                            <ul>
                                <li><span class="cp_abcimag">
                                    <img src="images/0cf3d7f5.png" /></span></li>
                                <li>
                                    <div class="cp_name">
                                        <ul>
                                            <li class="cp_abcName">社会招聘</li>
                                            <li class="cp_abcnoct">你有能力，我有空间。 待遇福利丰厚晋升多。 待遇好工资高升职快。 海阔凭鱼跃，天高任鸟飞。 想在北京买房的请过来。 您选择了我，我选择了你，从此不再分开您的选择肯定没错.....</li>
                                            <li class="cp_gengduo">Learn More >></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div></a>
                          <a href="ab_rlzy.aspx?rlzy=3"><div class="cp_abc" id="div3" style="display: none">
                            <ul>
                                <li><span class="cp_abcimag">
                                    <img src="images/00123.png" /></span></li>
                                <li>
                                    <div class="cp_name">
                                        <ul>
                                            <li class="cp_abcName">校园招聘</li>
                                            <li class="cp_abcnoct">年工程机械行业是我国装备制造业的重要的组械行业年工程机械行业是我国装备制造业的重要的组械行业年工程机械行业是我国装备制造业的重要的组械行业不再分开您的选择肯定没不再.....</li>
                                            <li class="cp_gengduo">Learn More >></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div></a>
                        <li class="cp_lrixin">
                            <div class="cp_neixin">
                                <ul>
                                    <li><a href="#" onmousemove="toggle('1')">人才理念</a></li>
                                    <li><a href="#" onmousemove="toggle('2')">社会招聘</a></li>
                                    <li><a href="#" onmousemove="toggle('3')">校园招聘</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                SelectCommand="SELECT [zp_zw], [zp_rs], [zp_lx], [zp_dq], [fb_sj], [zp_gw], [zp_rz], [id] FROM [bjygcf_rc] ORDER BY [id] DESC"></asp:SqlDataSource>
            <div class="xw_lianxi">
                <img src="images/4556.gif" alt="咨询热线"/>
            </div>
            <div class="xw_lxTel">
                <div class="xw_lxName">
                    <ul>
                        <li class="lx_nameA">咨询热线</li>
                        <li class="lx_nameB"><font color="#333333" size="2">热线 ：</font><font size="2">010-53600170</font><p>
                            <font color="#333333" size="2">传真 ：</font><font size="2">010-53600170</font>
                            <p>
                                <font color="#333333" size="2">邮件 ：</font><font size="2">bjygcf@bjygcf.com</font>
                            <p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
                    function blurtitle(v) { //鼠标滑过显示内容方法
                        for (var i = 0; i < 5; i++) { //以3个标题举例
                            if ("title" + i == v.id) { //当前循环的i如果是正确的标题，将内容的display设为block，即显示
                                document.getElementById("content" + i).style.display = "block";
                            } else { //当前循环的i是其他标题，将内容设为none，即隐藏
                                document.getElementById("content" + i).style.display = "none";
                            }
                        }
                    }
	
	
    </script>
    <script language="JavaScript" type="text/JavaScript">
                         //招聘
                             function toggle(targetid) {
                                 document.getElementById("div" + targetid).style.display = "block";
                                 for (var i = 1; i <= 4; i++) {
                                     if (targetid != i) {
                                         document.getElementById("div" + i).style.display = "none";
                                     }
                                 }
                             }
    </script>
    </div>
</asp:Content>


