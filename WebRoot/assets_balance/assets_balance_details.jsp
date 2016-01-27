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
<TITLE>查看发行详细信息</TITLE> 
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
    <form action="" name="faXing">
	<table width='100%' cellspacing='1' cellpadding='3' class="tablewidth">

	<tr>
	    <td width=30%>发行编号：</td>
	    <td width=70%><input id="id" name="id" value="${faXing.id}" type="hidden" /></td>
	</tr>

	<tr>
    	<td width=30%>发票名称：</td>
    	<td width=70%><input id="invoice_title" name="invoice_title" value="${faXing.invoice_title }" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>客户代号：</td>
    	<td width=70%><input id="customer_title" name="customer_title" value="${faXing.customer_title}" type="text" size="10" /></td>
  	</tr>

	<tr>
    	<td width=30%>发票地址：</td>
    	<td width=70%><input id="invoice_address" name="invoice_address" value="${faXing.invoice_address}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>开单日期：</td>
    	<td width=70%><input id="create_date" name="create_date" value="${faXing.create_date}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>书号：</td>
    	<td width=70%><input id="book_id" name="book_id" value="${faXing.book_id}" type="text" size="20" /></td>
  	</tr>

  	<tr>
    	<td width=30%>书名：</td>
    	<td width=70%><input id="book_name" name="book_name" value="${faXing.book_name}" type="text" size="20"/></td>
  	</tr>

  	<tr>
    	<td width=30%>单价：</td>
    	<td width=70%><input id="price" name="price" value="${faXing.price}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>数量：</td>
    	<td width=70%><input id="quantity" name="quantity" value="${faXing.quantity}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>码洋：</td>
    	<td width=70%><input id="fixed_price" name="fixed_price" value="${faXing.fixed_price}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>折扣：</td>
    	<td width=70%><input id="discount" name="discount" value="${faXing.discount}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>库位:</td>
    	<td width=70%><input id="warehouse_location" name="warehouse_location" value="${faXing.warehouse_location}" type="text" size="10"/></td>
  	</tr>

  	<tr>
    	<td width=30%>实配：</td>
    	<td width=70%><input id="shi_pei" name="shi_pei" value="${faXing.shi_pei}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>订书依据：</td>
    	<td width=70%><input id="order_receipt" name="order_receipt" value="${faXing.order_receipt}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>站点：</td>
    	<td width=70%><input id="site" name="site" value="${faXing.site}" type="text" size="10" /></td>
  	</tr>

  	<tr>
    	<td width=30%>联系人：</td>
    	<td width=70%><input id="contact_person" name="contact_person" value="${faXing.contact_person}" type="text" size="10" /></td>
  	</tr>
  	<tr>
    	<td width=30%>联系电话：</td>
    	<td width=70%><input id="contact_phone" name="contact_phone" value="${faXing.contact_phone}" type="text" size="10" /></td>
  	</tr>
  	<tr>
    	<td width=30%>发货户名：</td>
    	<td width=70%><input id="deliver_account" name="deliver_account" value="${faXing.deliver_account}" type="text" size="10" /></td>
  	</tr>
  	<tr>
    	<td width=30%>邮编：</td>
    	<td width=70%><input id="postcode" name="postcode" value="${faXing.postcode}" type="text" size="10" /></td>
  	</tr>
  	<tr>
    	<td width=30%>发货地址：</td>
    	<td width=70%><input id="deliver_address" name="deliver_address" value="${faXing.deliver_address}" type="text" size="20" /></td>
  	</tr>
  	<tr>
    	<td width=30%>开户行：</td>
    	<td width=70%><input id="bank_name" name="bank_name" value="${faXing.bank_name}" type="text" size="10" /></td>
  	</tr>
  	<tr>
    	<td width=30%>账号：</td>
    	<td width=70%><input id="bank_account" name="bank_account" value="${faXing.bank_account}" type="text" size="10" /></td>
  	</tr>
  	<tr>
    	<td width=30%>配书人：</td>
    	<td width=70%><input id="pei_shu_person" name="pei_shu_person" value="${faXing.pei_shu_person}" type="text" size="10" /></td>
  	</tr>
  	<tr>
    	<td width=30%>复核人：</td>
    	<td width=70%><input id="fu_he_person" name="fu_he_person" value="${faXing.fu_he_person}" type="text" size="10" /></td>
  	</tr>
  	<tr>
    	<td width=30%>打包人：</td>
    	<td width=70%><input id="da_bao_person" name="da_bao_person" value="${faXing.da_bao_person}" type="text" size="10" /></td>
  	</tr>
  	<tr>
    	<td width=30%>备注：</td>
    	<td width=70%><input id="comments" name="comments" value="${faXing.comments}" type="text" size="10" /></td>
  	</tr>

</table>
</form>
</TD></TR>
</TBODY>
</TABLE>
</BODY>
</HTML>