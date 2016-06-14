<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ad_index.aspx.cs" Inherits="admin_ad_index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>北京一格财富投资咨询有限公司</title>

<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="resources/css/style.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="resources/css/invalid.css" type="text/css" media="screen" />
    <script type="text/javascript" src="resources/scripts/jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="resources/scripts/simpla.jquery.configuration.js"></script>
    <script type="text/javascript" src="resources/scripts/facebox.js"></script>
    <script type="text/javascript" src="resources/scripts/jquery.wysiwyg.js"></script>
    <script type="text/javascript" src="resources/scripts/jquery.datePicker.js"></script>
    <script type="text/javascript" src="resources/scripts/jquery.date.js"></script>
</head>
<body style="background: #f0f0f0 url('resources/images/bg-body.gif') top left repeat-y;">
<div id="body-wrapper">
  <div id="sidebar">
    <div id="sidebar-wrapper">
      <h1 id="sidebar-title"><a href="#">后台管理</a></h1>
      <a href="http://www.bjygcf.com"><img id="logo" src="resources/images/logo.png" alt="一格财富" /></a>
      <div id="profile-links"> 欢迎, <a href="#" title="Edit your profile">admin回来</a>, 你有 <a href="#" title="3 Messages">3 新消息</a><br />
        <br />
        <a href="#" title="View the Site">网站前台</a> | <a href="#" title="Sign Out">退出</a> </div>
      <ul id="main-nav">
        <!-- Accordion Menu -->
        <li> <a href="http://www.bjygcf.com/" class="nav-top-item no-submenu">
          <!-- Add the class "no-submenu" to menu items with no sub menu -->
         网站前台入口</a> </li>
        <li> <a href="#" class="nav-top-item current">
          <!-- Add the class "current" to current menu item -->
          金融理财模块 </a>
          <ul>
            <li><a href="jrlc/jrlc_ad.aspx" target="ifm">产品新增</a></li>
            <li><a class="current" href="jrlc/tzxm_lb.aspx" target="ifm">产品列表</a></li>
            <!-- Add class "current" to sub menu items also -->
            <li><a href="jrlc/jrzx_ad.aspx" target="ifm">资讯新增</a></li>
            <li><a href="jrlc/jrzx_lb.aspx" target="ifm">资讯列表</a></li>
            <li><a href="jrlc/jrgl_ad.aspx" target="ifm">攻略新增</a></li>
            <li><a href="jrlc/jrgl_lb.aspx" target="ifm">攻略列表</a></li>
            <li><a href="jrlc/wenda_lb.aspx" target="ifm">有问必答</a></li>
            <li><a href="jrlc/jrgl_gmlb.aspx" target="ifm">客户购买列表</a></li>
            <li><a href="jrlc/jr_gmkh.aspx" target="ifm">新增客户购买</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item"> 商务休闲模块 </a>
          <ul>
            <li><a href="swly/ly_ad.aspx" target="ifm">新增线路</a></li>
            <li><a href="swly/ly_lb.aspx" target="ifm">线路列表</a></li>
            <li><a href="swly/ly_jd.aspx" target="ifm">酒店列表</a></li>
            <li><a href="swly/ly_jp.aspx" target="ifm">机票列表</a></li>
            <li><a href="swly/yhk_lb.aspx" target="ifm">会员卡编辑</a></li>
            <li><a href="swly/gl_ad.aspx" target="ifm">新增攻略</a></li>
            <li><a href="swly/gl_lb.aspx" target="ifm">旅游攻略</a></li>
            <li><a href="swly/ly_ly.aspx" target="ifm">留言管理</a></li>
          </ul>
        </li>
         <li> <a href="#" class="nav-top-item"> 关于一格模块 </a>
          <ul>
            <li><a href="about/about_ed.aspx" target="ifm">公司模块</a></li>
            <li><a href="about/rlzy_lb.aspx" target="ifm">人力资源</a></li>
            <li><a href="about/news_lb.aspx" target="ifm">新闻中心</a></li>
            <li><a href="about/yjfk_ab.aspx" target="ifm">意见反馈</a></li>
            <li><a href="about/news_ad.aspx" target="ifm">新增新闻</a></li>
            <li><a href="about/rlzy_ad.aspx" target="ifm">新增职位</a></li>
           
          </ul>
        </li>
      </ul>
    </div>
  </div>
  <!-- End #sidebar -->
  <div id="main-content">
    <h2>欢迎来到 www.bjygcf.com</h2>
    <p id="page-intro">快捷操作</p>
    <ul class="shortcut-buttons-set">
      <li><a class="shortcut-button" href="swly/ly_ad.aspx" target="ifm"><span> <img src="resources/images/icons/pencil_48.png" alt="icon" /><br />
        新增旅游线路 </span></a></li>
      <li><a class="shortcut-button" href="jrlc/jrlc_ad.aspx" target="ifm"><span> <img src="resources/images/icons/paper_content_pencil_48.png" alt="icon" /><br />
        新增信托产品 </span></a></li>
      <li><a class="shortcut-button" href="swly/ly_lb.aspx" target="ifm"><span> <img src="resources/images/icons/image_add_48.png" alt="icon" /><br />
        查看旅游线路 </span></a></li>
      <li><a class="shortcut-button" href="jrlc/tzxm_lb.aspx" target="ifm"><span> <img src="resources/images/icons/clock_48.png" alt="icon" /><br />
        查看信托产品 </span></a></li>
      <li><a class="shortcut-button" href="about/news_lb.aspx" target="ifm"><span> <img src="resources/images/icons/comment_48.png" alt="icon" /><br />
        公司新闻列表 </span></a></li>
    </ul>      
     <div class="clear"></div>
    <div class="content-box-header">
        <h3>一格财富</h3>
        
        <div class="clear"></div>
      </div>
     <div class="content-box-content">
     <div class="tab-content" id="tab2">
    <iframe src="about/news_lb.aspx" frameborder="0" marginheight="0" 
    marginwidth="0" scrolling="auto" id="ifm" name="ifm" onload="javascript:dyniframesize('ifm');"></iframe>
    </div>
     </div>
    <!-- End .shortcut-buttons-set -->
    <div class="clear"></div>

    <div id="footer"> <small>
      <!-- Remove this notice or replace it with whatever you want -->
      &#169; Copyright 2015 北京一格财富投资咨询有限公司 | Powered by <a href="http://www.bjygcf.com">一格财富信息技术部</a> | <a href="#">Top</a> </small> </div>
    <!-- End #footer -->
  </div>

</div>
</body>
<script language="javascript" type="text/javascript">
    function dyniframesize(down) {
        var pTar = null;
        if (document.getElementById) {
            pTar = document.getElementById(down);
        }
        else {
            eval('pTar = ' + down + ';');
        }
        if (pTar && !window.opera) {
            //begin resizing iframe 
            pTar.style.display = "block"
            if (pTar.contentDocument && pTar.contentDocument.body.offsetHeight) {
                //ns6 syntax 
                pTar.height = pTar.contentDocument.body.offsetHeight +20;
                pTar.width = pTar.contentDocument.body.scrollWidth + 30;
            }
            else if (pTar.Document && pTar.Document.body.scrollHeight) {
                //ie5+ syntax 
                pTar.height = pTar.Document.body.scrollHeight;
                pTar.width = pTar.Document.body.scrollWidth;
            }
        }
    } 
</script> 

</html>

