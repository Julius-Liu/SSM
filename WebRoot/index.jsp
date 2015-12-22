<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<<<<<<< HEAD
<%@ page import="com.tgb.model.Book" %>
<%@ page import="com.tgb.model.BookType" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

=======
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
>>>>>>> af17460962b1e93bb1c45c599f87e54ebfe6a2d6
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<<<<<<< HEAD
<title>管理中心</title>
<meta http-equiv=Content-Type content=text/html;charset=gb2312>
</head>
<frameset rows="64,*"  frameborder="NO" border="0" framespacing="0">
	<frame src="<%=basePath %>top.jsp" noresize="noresize" frameborder="NO" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
  	<frameset cols="200,*"  rows="560,*" id="frame">
	  <frame src="<%=basePath %>left.jsp" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
	  <frame src="<%=basePath %>right.jsp" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
    </frameset>
<noframes>
<body></body>
</noframes>
=======
<title>基于SSH2出版管理系统-首页</title>
<link href="<%=basePath %>css/index.css" rel="stylesheet" type="text/css" />
 </head>
<body>

<a href="<%=basePath%>user/getAllUser">进入用户管理页</a></h5>

<div id="container">
	<div id="banner"><img src="<%=basePath %>images/logo.gif" /></div>
	<div id="globallink">
		<ul>
			<li><a href="<%=basePath %>index.jsp">首页</a></li>
			<li><a href="<%=basePath %>BookType/BookType_FrontQueryBookType.action" target="OfficeMain">图书类型</a></li> 
			
			<li><a href="<%=basePath %>book/toAddBook" target="OfficeMain">图书</a></li> 
			
			<li><a href="<%=basePath %>ReaderType/ReaderType_FrontQueryReaderType.action" target="OfficeMain">读者类型</a></li> 
			<li><a href="<%=basePath %>Reader/Reader_FrontQueryReader.action" target="OfficeMain">读者</a></li> 
			<li><a href="<%=basePath %>LoanInfo/LoanInfo_FrontQueryLoanInfo.action" target="OfficeMain">借阅信息</a></li> 
		</ul>
		<br />
	</div> 
	<div id="main">
	 <iframe id="frame1" src="<%=basePath %>desk.jsp" name="OfficeMain" width="100%" height="100%" scrolling="yes" marginwidth=0 marginheight=0 frameborder=0 vspace=0 hspace=0 >
	 </iframe>
	</div>
	<div id="footer">
		<p>Julius &copy;版权所有 <a href="<%=basePath%>login/login_view.action"><font color=red>后台登陆</font></a></p>
	</div>
</div>


</body>
>>>>>>> af17460962b1e93bb1c45c599f87e54ebfe6a2d6
</html>