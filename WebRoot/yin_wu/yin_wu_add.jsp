<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="com.tgb.model.BookSpecs" %>
<%@ page import="com.tgb.model.PrintStatus" %>
<%@ page import="com.tgb.model.PrintQuality" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
    // 获取所有的 bookSpecs 信息
    List<BookSpecs> bookSpecsList = (List<BookSpecs>)request.getAttribute("bookSpecsList");
    List<PrintStatus> printStatusList = (List<PrintStatus>)request.getAttribute("printStatusList");
    List<PrintQuality> printQualityList = (List<PrintQuality>)request.getAttribute("printQualityList");
    
    /* 
    String username=(String)session.getAttribute("username");
    if(username==null) {
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    } */
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>添加印务信息</TITLE> 
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
	// 添加印务
	function addYinWu() {
		var form = document.forms[0];
		form.action = "<%=basePath%>yin_wu/addYinWu";
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
    <form action="" name="yinWu">
	<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

  	<tr>
    	<td width=30%>起始日期：</td>
    	<td width=70%><input id="start_date" name="start_date" type="text" readonly size="10" onclick="setDay(this);"/></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>终止日期：</td>
    	<td width=70%><input id="end_date" name="end_date" type="text" readonly size="10" onclick="setDay(this);"/></td>
  	</tr>

  	<tr>
    	<td width=30%>出版单位：</td>
    	<td width=70%><input id="publish_company" name="publish_company" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>印刷单位：</td>
    	<td width=70%><input id="print_company" name="print_company" type="text" size="10" /></td>
  	</tr>

	<tr>
    	<td width=30%>图书名称：</td>
    	<td width=70%><input id="book_name" name="book_name" type="text" size="10" /></td>
  	</tr>

	<tr>
    	<td width=30%>图书规格：</td>
    	<td width=70%>
      	<select name="book_specs">
      		<c:forEach var="item" items="${bookSpecsList}">
      			<option value="${item.id }">
      				${item.content }
      			</option>
      		</c:forEach>       	
      	</select>
    	</td>
  	</tr>

	<tr>
    	<td width=30%>印章：</td>
    	<td width=70%><input id="yin_zhang" name="yin_zhang" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>版次：</td>
    	<td width=70%><input id="revision" name="revision" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>印刷数：</td>
    	<td width=70%><input id="print_quantity" name="print_quantity" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>ISBN：</td>
    	<td width=70%><input id="ISBN" name="ISBN" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>责任编辑：</td>
    	<td width=70%><input id="ze_ren_editor" name="ze_ren_editor" type="text" size="10" /></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>责任部门：</td>
    	<td width=70%><input id="ze_ren_department" name="ze_ren_department" type="text" size="10" /></td>
  	</tr>  	

	<tr>
    	<td width=30%>印刷状态：</td>
    	<td width=70%>
      	<select name="print_status">
      		<c:forEach var="item" items="${printStatusList}">
      			<option value="${item.id }">
      				${item.content }
      			</option>
      		</c:forEach>       	
      	</select>
    	</td>
  	</tr>

	<tr>
    	<td width=30%>印刷质量：</td>
    	<td width=70%>
      	<select name="print_quality">
      		<c:forEach var="item" items="${printQualityList}">
      			<option value="${item.id }">
      				${item.content }
      			</option>
      		</c:forEach>      	
      	</select>
    	</td>
  	</tr>

  	<tr bgcolor='#FFFFFF'>
      	<td colspan="4" align="center">
        	<input type='submit' name='button' value='保存' onclick="addYinWu()">
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