<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    
    /* 
    String username=(String)session.getAttribute("username");
    if(username==null) {
        response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    } */
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<TITLE>添加入库信息</TITLE> 
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
	
	function addRuKu() {
		var form = document.forms[0];
		form.action = "<%=basePath%>ru_ku/addRuKu";
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
    <form action="" name="ruKu">
	<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

	<tr>
    	<td width=30%>入库时间：</td>
    	<td width=70%><input id="ru_ku_date" name="ru_ku_date" type="text" size="10" readonly onclick="setDay(this);"/></td>
  	</tr>

  	<tr>
    	<td width=30%>单号：</td>
    	<td width=70%><input id="order_id" name="order_id" type="text" size="10" /></td>
  	</tr>

	<tr>
    	<td width=30%>开单日期：</td>
    	<td width=70%><input id="order_create_date" name="order_create_date" type="text" size="10" readonly onclick="setDay(this);"/></td>
  	</tr>

  	<tr>
    	<td width=30%>出版单位：</td>
    	<td width=70%><input id="publish_company" name="publish_company" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>送书单位：</td>
    	<td width=70%><input id="deliver_company" name="deliver_company" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>收书单位：</td>
    	<td width=70%><input id="receive_company" name="receive_company" type="text" size="20"/></td>
  	</tr>

  	<tr>
    	<td width=30%>储运中心：</td>
    	<td width=70%><input id="store_center" name="store_center" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>书名：</td>
    	<td width=70%><input id="book_name" name="book_name" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>版次：</td>
    	<td width=70%><input id="revision" name="revision" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>数量：</td>
    	<td width=70%><input id="quantity" name="quantity" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>单价:</td>
    	<td width=70%><input id="price" name="price" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>码洋：</td>
    	<td width=70%><input id="fixed_price" name="fixed_price" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>验书人：</td>
    	<td width=70%><input id="check_man" name="check_man" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>收书人：</td>
    	<td width=70%><input id="receive_man" name="receive_man" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>备注：</td>
    	<td width=70%><input id="comments" name="comments" type="text" size="20" /></td>
  	</tr>
  	
  	<tr bgcolor='#FFFFFF'>
      	<td colspan="4" align="center">
        	<input type='submit' name='button' value='保存' onclick="addRuKu()">
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