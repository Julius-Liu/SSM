<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String barcode = "";
String bookName = "";
String publishDate = "";

// 选题id初始值为空
String id = "";
String year = "";
String book_name = "";

String book_id = "";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理页面</title>

<script src="js/prototype.lite.js" type="text/javascript"></script>
<script src="js/moo.fx.js" type="text/javascript"></script>
<script src="js/moo.fx.pack.js" type="text/javascript"></script>
<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}
#container {
	width: 182px;
}
H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;	
}
H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(images/menu_bgS.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}
.content{
	width: 182px;
	height: 26px;
	
}
.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}
.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}
.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px,0px,0px,0px);
}
.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}
.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
</head>

<body>
<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
  <tr>
    <td width="182" valign="top"><div id="container">
      <h1 class="type"><a href="javascript:void(0)">编辑管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="<%=basePath%>xuan_ti/queryXuanTi?id=<%=id%>&type=0&year=<%=year%>&book_name=<%=book_name%>&currentPage=1" target="main">查看选题信息</a></li>
          <li><a href="<%=basePath%>xuan_ti/toAddXuanTi" target="main" target="main">添加选题信息</a></li>
          <li><a href="<%=basePath%>bian_shen/queryBianShen?id=<%=id%>&book_id=<%=book_id%>&book_name=<%=book_name%>&bian_shen_status=0&currentPage=1" target="main">查看编审信息</a></li>
          <li><a href="<%=basePath%>bian_shen/toAddBianShen" target="main">添加编审信息</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">印务管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="" target="main">查看印务信息</a></li>
          <li><a href="" target="main" target="main">添加印务信息</a></li>
          <li><a href="http://www.865171.cn" target="main">资讯分类</a></li>
          <li><a href="http://www.865171.cn" target="main">地区设置</a></li>
          <li><a target="main" href="http://www.865171.cn">市场联盟</a></li>
          <li><a href="http://www.865171.cn" target="main">商家类型</a></li>
          <li><a href="http://www.865171.cn" target="main">商家星级</a></li>
          <li><a href="http://www.865171.cn" target="main">商品分类</a></li>
          <li><a href="http://www.865171.cn" target="main">商品类型</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">发行管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
		  <li><a href="http://www.865171.cn" target="main">查看发行信息</a></li>
          <li><a href="http://www.865171.cn" target="main">添加发行信息</a></li>
          <li><a href="http://www.865171.cn" target="main">增加商家</a></li>
          <li><a href="http://www.865171.cn" target="main">管理商家</a></li>
          <li><a href="http://www.865171.cn" target="main">发布资讯</a></li>
          <li><a href="http://www.865171.cn" target="main">资讯管理</a></li>
          <li><a href="http://www.865171.cn" target="main">市场联盟</a></li>
          <li><a href="http://www.865171.cn" target="main">名片管理</a></li>
          <li><a href="http://www.865171.cn" target="main">商城管理</a></li>
          <li><a href="http://www.865171.cn" target="main">商品管理</a></li>
          <li><a href="http://www.865171.cn" target="main">商城留言</a></li>
          <li><a href="http://www.865171.cn" target="main">商城公告</a></li>
        </ul>
      </div>
      <h1 class="type"><a href="javascript:void(0)">库存管理</a></h1>
      <div class="content">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
          </tr>
        </table>
        <ul class="MM">
          <li><a href="http://www.865171.cn" target="main">查看入库信息</a></li>
          <li><a href="http://www.865171.cn" target="main">添加入库信息</a></li>
          <li><a href="http://www.865171.cn" target="main">查看出库信息</a></li>
          <li><a href="http://www.865171.cn" target="main">添加出库信息</a></li>
          <li><a href="http://www.865171.cn" target="main">举报管理</a></li>
          <li><a href="http://www.865171.cn" target="main">评论管理</a></li>
        </ul>
      </div>
    </div>
        <h1 class="type"><a href="javascript:void(0)">资金管理</a></h1>
      <div class="content">
          <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><img src="images/menu_topline.gif" width="182" height="5" /></td>
            </tr>
          </table>
        <ul class="MM">
          <li><a href="http://www.865171.cn" target="main">查看资金信息</a></li>
          <li><a href="http://www.865171.cn" target="main">添加资金信息</a></li>
          <li><a href="http://www.865171.cn" target="main">攻击状态</a></li>
          <li><a href="http://www.865171.cn" target="main">登陆记录</a></li>
          <li><a href="http://www.865171.cn" target="main">运行状态</a></li>
        </ul>
      </div>
      </div>
        <script type="text/javascript">
		var contents = document.getElementsByClassName('content');
		var toggles = document.getElementsByClassName('type');
	
		var myAccordion = new fx.Accordion(
			toggles, contents, {opacity: true, duration: 400}
		);
		myAccordion.showThisHideOpen(contents[0]);
	</script>
        </td>
  </tr>
</table>
</body>
</html>

