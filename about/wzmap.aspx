<%@ Page Title="" Language="C#" MasterPageFile="~/about/MasterPage.master" AutoEventWireup="true"
    CodeFile="wzmap.aspx.cs" Inherits="about_wzmap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/wzdt.css" />
    <meta http-equiv="X-UA-Compatible" content="IE=7">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <div id="wzdt">
        <h1>
            网站地图</h1>
        <img src="images/wzdt_heng_bg.png" />
        <div style=" width:960px; height:150px;"><h2>
            公司金融</h2>
        <ul>
            <li><a href="../jrlc/jr_index.aspx">理财首页</a> </li>
            <li><a href="../jrlc/jr_tzxm.aspx">理财产品 </a></li>
            <li><a href="../jrlc/jr_bx.aspx">保险超市 </a></li>
            <li><a href="../jrlc/jr_zx.aspx">金融资讯</a></li>
        </ul>
        <ul>
            <li><a href="../jrlc/jr_zhao.aspx">招商加盟</a> </li>
            <li><a href="../jrlc/jr_glv.aspx">理财攻略 </a></li>
            <li><a href="../jrlc/jr_wd.aspx">有问必答 </a></li>
          <li><a href="../jrlc/jr_dai.aspx">贷款业务</a></li> 
        </ul>
       <ul>
             <li><a href="../jrlc/jr_xyk.aspx">信用卡业务</a> </li>
       </ul></div>
       <div style=" width:960px; height:100px;"> <h2>
            商务旅游</h2>
       <ul>
            <li><a href="../swly/ly_index.aspx">旅游首页</a> </li>
            <li><a href="../swly/ly_gd.aspx">旅游线路 </a></li>
            <li><a href="../swly/ly_hyk.aspx">会员卡 </a></li>
            <li><a href="../swly/ly_glv.aspx">旅游攻略</a></li>
        </ul>
        <ul>
            
            <li><a href="../swly/ly_gd.aspx?gdid=gn">国内线路 </a></li>
            <li><a href="../swly/ly_gd.aspx?gdid=gw">国外线路 </a></li>
          <li><a href="../swly/ly_gd.aspx?gdid=gat">港澳台线路</a></li> 
          <li><a href="../swly/ly_liu.aspx">留言反馈</a> </li>
        </ul></div>
               <div style=" width:960px; height:150px;"> <h2>
            关于一格</h2>
       <ul>
            <li><a href="../about/ab_index.aspx">一格首页</a> </li>
            <li><a href="../jrlc/jr_index.aspx">金融理财 </a></li>
            <li><a href="../swly/ly_index.aspx">商务旅游 </a></li>
            <li><a href="../about/ab_news.aspx">新闻中心</a></li>
        </ul>
        <ul>
            
            <li><a href="../about/ab_rlzy.aspx">人力资源 </a></li>
            <li><a href="../about/wzmap.aspx">网站地图 </a></li>
          <li><a href="../about/ab_about.aspx">公司介绍</a></li> 
          <li><a href="../about/ab_about.aspx?about=5">联系我们</a> </li>
        </ul>
        </div>
    </div><br />
</asp:Content>
