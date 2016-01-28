<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String barcode = "";
String bookName = "";
String publishDate = "";

// 选题id初始值为空
String xuan_ti_id = "";
String year = "";
String book_name = "";

String original_author = "";
String ze_ren_editor = "";

String print_company = "";

String fa_xing_id = "";
String order_receipt = "";
String contact_person = "";

String order_id = "";
String deliver_company = "";
String receive_man = "";

String customer_name = "";
String deliver_man = "";

String assets_balance_id = "";
String bank_name = "";
String record_creator = "";
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
          <li><a href="<%=basePath%>xuan_ti/queryXuanTi?xuan_ti_id=<%=xuan_ti_id%>&year=<%=year%>&source=0&status=0&currentPage=1" target="main">查看选题信息</a></li>
          <li><a href="<%=basePath%>xuan_ti/toAddXuanTi" target="main" target="main">添加选题信息</a></li>
          <li><a href="<%=basePath%>bian_shen/queryBianShen?book_name=<%=book_name%>&original_author=<%=original_author%>&ze_ren_editor=<%=ze_ren_editor%>&bian_shen_status=0&currentPage=1" target="main">查看编审信息</a></li>
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
          <li><a href="<%=basePath%>yin_wu/queryYinWu?print_company=<%=print_company%>&book_name=<%=book_name%>&ze_ren_editor=<%=ze_ren_editor %>&print_status=0&currentPage=1" target="main">查看印务信息</a></li>
          <li><a href="<%=basePath%>yin_wu/toAddYinWu" target="main">添加印务信息</a></li>
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
		  <li><a href="<%=basePath%>fa_xing/queryFaXing?fa_xing_id=<%=fa_xing_id%>&book_name=<%=book_name%>&order_receipt=<%=order_receipt %>&contact_person=<%=contact_person %>&currentPage=1" target="main">查看发行信息</a></li>
          <li><a href="<%=basePath%>fa_xing/toAddFaXing" target="main">添加发行信息</a></li>
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
          <li><a href="<%=basePath%>ru_ku/queryRuKu?order_id=<%=order_id%>&deliver_company=<%=deliver_company%>&book_name=<%=book_name %>&receive_man=<%=receive_man %>&currentPage=1" target="main">查看入库信息</a></li>
          <li><a href="<%=basePath%>ru_ku/toAddRuKu" target="main">添加入库信息</a></li>
          <li><a href="<%=basePath%>chu_ku/queryChuKu?customer_name=<%=customer_name%>&deliver_man=<%=deliver_man%>&book_name=<%=book_name %>&contact_person=<%=contact_person %>&currentPage=1" target="main">查看出库信息</a></li>
          <li><a href="<%=basePath%>chu_ku/toAddChuKu" target="main">添加出库信息</a></li>
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
          <li><a href="<%=basePath%>assets_balance/queryAssetsBalance?assets_balance_id=<%=assets_balance_id%>&customer_name=<%=customer_name%>&bank_name=<%=bank_name %>&record_creator=<%=record_creator %>&currentPage=1" target="main">查看资金信息</a></li>
          <li><a href="<%=basePath%>assets_balance/toAddAssetsBalance" target="main">添加资金信息</a></li>
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

