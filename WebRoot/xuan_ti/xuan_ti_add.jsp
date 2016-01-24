<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="com.tgb.model.GaoJianSource" %>
<%@ page import="com.tgb.model.ChuShenComments" %>
<%@ page import="com.tgb.model.XuanTiStatus" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
    // 获取所有的 gaoJianSource 信息
    List<GaoJianSource> gaoJianSourceList = (List<GaoJianSource>)request.getAttribute("gaoJianSourceList");
    List<ChuShenComments> chuShenCommentsList = (List<ChuShenComments>)request.getAttribute("chuShenCommentsList");
    List<XuanTiStatus> xuanTiStatusList = (List<XuanTiStatus>)request.getAttribute("xuanTiStatusList");
    
    /* 
    String username=(String)session.getAttribute("username");
    if(username==null) {
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    } */
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>添加选题信息</TITLE> 
<STYLE type=text/css>
	BODY {
    	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
	}
.STYLE1 {color: #ECE9D8}
.label {font-style.:italic; }
.errorLabel {font-style.:italic;  color:red; }
.errorMessage {font-weight:bold; color:red; }
</STYLE>

<script src="<%=basePath %>js/calendar.js"></script>
<script type="text/javascript">

	/*验证表单*/
	function checkForm() {
	    var id = document.getElementById("xuanTi.id").value;
	    if(id == "") {
	        alert('请输入选题编号！');
	        return false;
	    }
	    var book_name = document.getElementById("xuanTi.book_name").value;
	    if(book_name == "") {
	        alert('请输入书名！');
	        return false;
	    }
	    return true; 
	}
	
	function addXuanTi() {
		var form = document.forms[0];
		form.action = "<%=basePath%>xuan_ti/addXuanTi";
		form.method="post";
		form.submit();
	}

</script>
</HEAD>

<BODY background="<%=basePath %>images/adminBg.jpg">
<s:fielderror cssStyle="color:red" />

<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
    <form action="" name="xuanTi">
	<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

	<tr>
	    <td width=30%>选题编号：</td>
	    <td width=70%><input id="id" name="id" type="text" size="10"/></td>
	</tr>

	<tr>
    	<td width=30%>选题类型：</td>
    	<td width=70%><input id="type" name="type" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>选题年度：</td>
    	<td width=70%><input id="year" name="year" type="text" size="10" /></td>
  	</tr>

	<tr>
    	<td width=30%>选题季度：</td>
    	<td width=70%><input id="season" name="season" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>书名：</td>
    	<td width=70%><input id="book_name" name="book_name" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>丛书名：</td>
    	<td width=70%><input id="sub_book_name" name="sub_book_name" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>部门：</td>
    	<td width=70%><input id="department" name="department" type="text" size="20"/></td>
  	</tr>

  	<tr>
    	<td width=30%>申报人：</td>
    	<td width=70%><input id="originator" name="originator" type="text" size="20" /></td>
  	</tr>

	<tr>
    	<td width=30%>稿件来源：</td>
    	<td width=70%>
      	<select name="source">
      		<c:forEach var="item" items="${gaoJianSourceList}">
      			<option value="${item.id }">
      				${item.content }
      			</option>
      		</c:forEach>       	
      	</select>
    	</td>
  	</tr>

	<tr>
    	<td width=30%>初审意见：</td>
    	<td width=70%>
      	<select name="first_comments">
      		<c:forEach var="item" items="${chuShenCommentsList}">
      			<option value="${item.id }">
      				${item.content }
      			</option>
      		</c:forEach>      	
      	</select>
    	</td>
  	</tr>

	<tr>
    	<td width=30%>选题状态：</td>
    	<td width=70%>
      	<select name="status">
      		<c:forEach var="item" items="${xuanTiStatusList}">
      			<option value="${item.id }">
      				${item.content }
      			</option>
      		</c:forEach>      	
      	</select>
    	</td>
  	</tr>

  	<tr>
    	<td width=30%>ISBN:</td>
    	<td width=70%><input id="ISBN" name="ISBN" type="text" size="20"/></td>
  	</tr>

  	<tr bgcolor='#FFFFFF'>
      	<td colspan="4" align="center">
        	<input type='submit' name='button' value='保存' onclick="addXuanTi()">
        	&nbsp;&nbsp;
        	<input type="reset" value='重写' />
      	</td>
    </tr>

</table>
</form>
</TD></TR>
</TBODY>
</TABLE>
</BODY>
</HTML>