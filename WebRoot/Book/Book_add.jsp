<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.tgb.model.BookType" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    //获取所有的bookType信息
    List<BookType> bookTypeList = (List<BookType>)request.getAttribute("bookTypeList");
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
<TITLE>添加图书</TITLE> 
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
	    var barcode = document.getElementById("book.barcode").value;
	    if(barcode=="") {
	        alert('请输入图书条形码!');
	        return false;
	    }
	    var bookName = document.getElementById("book.bookName").value;
	    if(bookName=="") {
	        alert('请输入图书名称!');
	        return false;
	    }
	    return true; 
	}
	
	function addBook() {
		var form = document.forms[0];
		form.action = "<%=basePath%>book/addBook";
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
    <form action="" name="bookForm">
	<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

	<tr>
	    <td width=30%>图书条形码:</td>
	    <td width=70%><input id="barcode" name="barcode" type="text" /></td>
	</tr>

  	<tr>
    	<td width=30%>图书名称:</td>
    	<td width=70%><input id="bookName" name="bookName" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>图书所在类别:</td>
    	<td width=70%>
      	<select name="bookType">
      	<%
        for(BookType bookType:bookTypeList) {
      	%>
          <option value='<%=bookType.getBookTypeId() %>'><%=bookType.getBookTypeName() %></option>
      	<%
        }
      	%>
    	</td>
  	</tr>

  	<tr>
    	<td width=30%>图书价格:</td>
    	<td width=70%><input id="price" name="price" type="text" size="8" /></td>
  	</tr>

  <tr>
    <td width=30%>库存:</td>
    <td width=70%><input id="count" name="count" type="text" size="8" /></td>
  </tr>

  <tr>
    <td width=30%>出版日期:</td>
    <td width=70%><input type="text" readonly id="publishDate"  name="publishDate" onclick="setDay(this);"/></td>
  </tr>

  <tr>
    <td width=30%>出版社:</td>
    <td width=70%><input id="publish" name="publish" type="text" size="20" /></td>
  </tr>

  <tr>
    <td width=30%>图书简介:</td>
    <td width=70%><textarea id="introduction" name="introduction" rows="6" cols="80"></textarea></td>
  </tr>

  	<tr>
    	<td width=30%>图书图片:</td>
    	<td width=70%><input id="bookPhoto" name="bookPhoto" type="file" size="50" /></td>
  	</tr>

  	<tr bgcolor='#FFFFFF'>
      	<td colspan="4" align="center">
        	<input type='submit' name='button' value='保存' onclick="addBook()">
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