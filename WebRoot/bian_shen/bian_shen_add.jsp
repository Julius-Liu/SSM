<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.tgb.model.BianShenStatus" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
    // 获取所有的xuanTiType信息
    List<BianShenStatus> bianShenStatusList = (List<BianShenStatus>)request.getAttribute("bianShenStatusList");
    
    /* 
    String username=(String)session.getAttribute("username");
    if(username==null) {
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    } */
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>添加编审信息</TITLE> 
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
	    var id = document.getElementById("bianShen.id").value;
	    if(id == "") {
	        alert('请输入编审编号！');
	        return false;
	    }
	    var book_name = document.getElementById("bianShen.book_name").value;
	    if(book_name == "") {
	        alert('请输入书名！');
	        return false;
	    }
	    return true; 
	}
	
	function addBianShen() {
		var form = document.forms[0];
		form.action = "<%=basePath%>bian_shen/addBianShen";
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
    <form action="" name="bianShen">
	<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

  	<tr>
    	<td width=30%>书号：</td>
    	<td width=70%><input id="book_id" name="book_id" type="text" size="10" /></td>
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
    	<td width=30%>原著作者：</td>
    	<td width=70%><input id="original_author" name="original_author" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>原出版社：</td>
    	<td width=70%><input id="original_press" name="original_press" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>主要作者：</td>
    	<td width=70%><input id="primary_author" name="primary_author" type="text" size="10" /></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>其他署名作者：</td>
    	<td width=70%><input id="other_author" name="other_author" type="text" size="20" /></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>责任编辑：</td>
    	<td width=70%><input id="ze_ren_editor" name="ze_ren_editor" type="text" size="10" /></td>
  	</tr>  	

  	<tr>
    	<td width=30%>文字编辑：</td>
    	<td width=70%><input id="wen_zi_editor" name="wen_zi_editor" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>美术编辑：</td>
    	<td width=70%><input id="mei_shu_editor" name="mei_shu_editor" type="text" size="10" /></td>
  	</tr>
  	
  	<tr>
    	<td width=30%>校对：</td>
    	<td width=70%><input id="proofreader" name="proofreader" type="text" size="10" /></td>
  	</tr>	
  	
	<tr>
    	<td width=30%>编审状态：</td>
    	<td width=70%>
      	<select name="bian_shen_status">
      		<c:forEach var="item" items="${bianShenStatusList}">
      			<option value="${item.id }">
      				${item.content }
      			</option>
      		</c:forEach>      	
      	</select>
    	</td>
  	</tr>

  	<tr>
    	<td width=30%>付印日期:</td>
    	<td width=70%><input id="fu_yin_date" name="fu_yin_date" type="text" readonly size="10" onclick="setDay(this);"/></td>
  	</tr>

  	<tr bgcolor='#FFFFFF'>
      	<td colspan="4" align="center">
        	<input type='submit' name='button' value='保存' onclick="addBianShen()">
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