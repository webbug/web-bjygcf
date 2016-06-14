<%@ Page Title="" Language="C#" MasterPageFile="~/jrlc/MasterPage.master" AutoEventWireup="true" CodeFile="jr_tzxm_xq.aspx.cs" Inherits="jrlc_jr_tzxm_xq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" type="text/css" href="css/gold_xq.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <div id="gold_xq_head">
            <h5>当前位置:首页>投资</h5>
            <div class="gold_xqh_but">
                  <div class="gold_xqh_butl">
                        <div class="gxb_title">
                               <h3 class="h31">产品详情</h3>
                                <h3 class="h32">状态：<%=zhuangtai %></h3>
                        </div>


                              <h2><%=name %><img src="images/icon-l.png" /></h2>

                              <ul>
                                  <li class="gli1">
                                      融资金额:<span class="rz">￥<%=jine %></span>
                                  </li>
                                  <li>
                                      年利率:<span class="llv"><%=shouyi %></span>
                                  </li>
                                  <li class="zx zxc">
                                      <a onclick="javascript:mpnchat.util.openChat();return false;" href="javascript:void(0)" title="在线咨询" style="cursor:hand;">在线咨询</a>
                                  </li>
                              </ul>

                      <ul>
                          <li class="gli1 gli2">
                              认购金额:<span class="rz">￥<%=rengou %></span><br />
                              投资期限:<span><%=zhouqi %></span>
                          </li>
                          <li class="gli2">
                              基金状态:<span class="llv"><%=zhuangtai %></span><br />
                              返息方式:<span class="llv"><%=huankuan %></span>
                          </li>
                          <li class="zx zxc gli2">
                              产品类型:<span class="llv"><%=leixing %></span><br />
                              发行周期:<span class="llv"><%=fxtime %></span>
                          </li>
                      </ul>

                       <em class="foot_gg">
                           如有问题，可立即致电010-5274-6846进行咨询！
                       </em>

                  </div>
                <div class="gold_xqh_butr">
                       <h3>理财顾问</h3>
                       <img src="images/gold_xq_gwbg.jpg" />

                      <span>
                         北京一格财富投资咨询有限公司是一家以提供第三方服务为主的专业咨询机构。
                      </span>
                       <p>2014-6-8 —— 一格商务部</p>
                </div>
            </div>
      </div>
      <div id="gold_xq_body">
            <div class="gold_xq_bodyl">
                  <span>
                       <h3>融资详情</h3>
                  </span>
                  <%=context %>
            </div>

          <div class="gold_xq_bodyr">
                  <h3>一格金融资讯</h3>
               <ul>
                   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                   <ItemTemplate>
                      <a href="jr_glv_xq.aspx?jrxqid=<%#Eval("id") %>"><li class="tz_biaoyu"><%#Eval("name").ToString().Length>=10?Eval("name").ToString().Substring(0,10)+"...":Eval("name") %></li></a>
                   </ItemTemplate>
                   </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                       ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
                       SelectCommand="SELECT * FROM [bjygcf_jrgl] order by RANDOM() limit 0,5"></asp:SqlDataSource>
                 
               </ul>
          </div>
      </div>

</asp:Content>


