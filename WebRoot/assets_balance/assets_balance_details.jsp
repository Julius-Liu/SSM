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
<TITLE>查看资金详细信息</TITLE> 
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

</HEAD>

<BODY background="<%=basePath %>images/adminBg.jpg">
<s:fielderror cssStyle="color:red" />

<TABLE align="center" height="100%" cellSpacing=0 cellPadding=0 width="80%" border=0>
  <TBODY>
  <TR>
    <TD align="left" vAlign=top >
    <form action="" name="assetsBalance">
	<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

	<tr>
	    <td width=30%>资金编号：</td>
	    <td width=70%><input id="id" name="id" value="${assetsBalance.id}" type="text" size="10" /></td>
	</tr>

	<tr>
    	<td width=30%>科目编号：</td>
    	<td width=70%><input id="department_id" name="department_id" value="${assetsBalance.department_id }" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>科目名称：</td>
    	<td width=70%><input id="department_title" name="department_title" value="${assetsBalance.department_title}" type="text" size="10" /></td>
  	</tr>

	<tr>
    	<td width=30%>客户名称：</td>
    	<td width=70%><input id="customer_name" name="customer_name" value="${assetsBalance.customer_name}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>核算单位：</td>
    	<td width=70%><input id="account_scale" name="account_scale" value="${assetsBalance.account_scale}" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>初期余额：</td>
    	<td width=70%><input id="original_balance" name="original_balance" value="${assetsBalance.original_balance}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>借方累计：</td>
    	<td width=70%><input id="debit_total" name="debit_total" value="${assetsBalance.debit_balance}" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>贷方累计：</td>
    	<td width=70%><input id="credit_total" name="credit_total" value="${assetsBalance.credit_balance}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>期末余额：</td>
    	<td width=70%><input id="final_balance" name="final_balance" value="${assetsBalance.final_balance}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>总计：</td>
    	<td width=70%><input id="balance_total" name="balance_total" value="${assetsBalance.balance_total}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>银行：</td>
    	<td width=70%><input id="bank_name" name="bank_name" value="${assetsBalance.bank_name}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>制单人:</td>
    	<td width=70%><input id="record_creator" name="record_creator" value="${assetsBalance.record_creator}" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>表单制作日期：</td>
    	<td width=70%><input id="record_create_date" name="record_create_date" value="${assetsBalance.record_create_date}" type="text" size="10"/></td>
  	</tr>

</table>
</form>
</TD></TR>
</TBODY>
</TABLE>
</BODY>
</HTML>