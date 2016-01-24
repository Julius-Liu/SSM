<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page import="com.tgb.model.YinWu" %>
<%@ page import="com.tgb.model.BookSpecs" %>
<%@ page import="com.tgb.model.YinZhang" %>
<%@ page import="com.tgb.model.PrintStatus" %>
<%@ page import="com.tgb.model.PrintQuality" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

    List<YinWu> yinWuList = (List<YinWu>)request.getAttribute("yinWuList");
    // 获取所有的 bookSpecs 信息
    List<BookSpecs> bookSpecsList = (List<BookSpecs>)request.getAttribute("bookSpecsList");
    List<YinZhang> yinZhangList = (List<YinZhang>)request.getAttribute("yinZhangList");
    List<PrintStatus> printStatusList = (List<PrintStatus>)request.getAttribute("printStatusList");
    List<PrintQuality> printQualityList = (List<PrintQuality>)request.getAttribute("printQualityList");

    int currentPage =  (Integer)request.getAttribute("currentPage"); 	// 当前页
    int totalPage =   (Integer)request.getAttribute("totalPage");  		// 一共多少页
    int recordNumber =   (Integer)request.getAttribute("recordNumber"); // 一共多少记录
    
    String yin_wu_id = (String)request.getAttribute("yin_wu_id"); 	// 印务id
    String book_name = (String)request.getAttribute("book_name"); 	// 印务book_name
    int yin_zhang = (Integer)request.getAttribute("yin_zhang"); 	// 印务yin_zhang
    int print_status = (Integer)request.getAttribute("print_status"); // 印务print_status
    
        //String username=(String)session.getAttribute("username");
    //if(username==null){
        //response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    //}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>印务信息查询</title>
<style type="text/css">
<!--
body {
    margin-left: 0px;
    margin-top: 0px;
    margin-right: 0px;
    margin-bottom: 0px;
}
.STYLE1 {font-size: 12px}
.STYLE3 {font-size: 12px; font-weight: bold; }
.STYLE4 {
    color: #03515d;
    font-size: 12px;
}
-->
</style>

<script type="text/javascript" src="<%=basePath %>js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="<%=basePath %>js/calendar.js"></script>
<script type="text/javascript">
var  highlightcolor='#c1ebff';
// 此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';

function changeto(){
	source=event.srcElement;
	if  (source.tagName=="TR"||source.tagName=="TABLE") {
		return;
	}
	while(source.tagName!="TD") {
		source=source.parentElement;
	}
	source=source.parentElement;
	cs  =  source.children;
	//alert(cs.length);
	if (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc") {
		for(i=0;i<cs.length;i++){
	    	cs[i].style.backgroundColor=clickcolor;
		}
	}
	else {
		for(i=0;i<cs.length;i++) {
		    cs[i].style.backgroundColor="";
		}
	}
}

function changeback() {
	if (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc") {
		return;
	}
	if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor) {
		for(i=0;i<cs.length;i++) {
			cs[i].style.backgroundColor="";
		}
	}
}

/*跳转到查询结果的某页*/
function GoToPage(currentPage, totalPage) {
    if(currentPage == 0) {
    	return;
    }
    if(currentPage > totalPage) {
    	return;
    }
    document.forms[0].currentPage.value = currentPage;
    document.forms[0].action = "<%=basePath %>yin_wu/queryYinWu?yin_zhang=<%=yin_zhang%>&print_status=<%=print_status%>";
    document.forms[0].submit(); 
}

function changepage(totalPage)
{
    var pageValue=document.yinWuQueryForm.pageValue.value;
    if(pageValue > totalPage) {
        alert('你输入的页码超出了总页数!');
        return ;
    }
    document.yinWuQueryForm.currentPage.value = pageValue;
    document.forms["yinWuQueryForm"].action = "<%=basePath %>yin_wu/queryYinWu";
    document.yinWuQueryForm.submit();
}

/* 查询 选题 按钮 */
function QueryYinWu() {
	document.forms["yinWuQueryForm"].action = "<%=basePath %>yin_wu/queryYinWu";
	document.forms["yinWuQueryForm"].submit();
}

/* 删除 选题 */
function DelYinWu(id){
	$.get("<%=basePath%>yin_wu/delYinWu?id=" + id,function(data){
		if("success" == data.result){
			alert("删除成功！");
			window.location.reload();
		}else{
			alert("删除失败！");
		}
	});
}

/* 导出当前记录到Excel，未启用 */
function OutputToExcel() {
	//document.forms["bookQueryForm"].action = "<%=basePath %>Book/Book_QueryBookOutputToExcel.action";
	//document.forms["bookQueryForm"].submit(); 
}

</script>
</head>

<body>
<form action="<%=basePath %>yin_wu/queryYinWu" name="yinWuQueryForm" method="post">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="30" background="<%=basePath %>images/tab_05.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="30"><img src="<%=basePath %>images/tab_03.gif" width="12" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="46%" valign="middle"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="5%"><div align="center"><img src="<%=basePath %>images/tb.gif" width="16" height="16" /></div></td>
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[印务信息管理]-[印务信息查询]</td>
              </tr>
            </table></td>
            <td width="54%"><table border="0" align="right" cellpadding="0" cellspacing="0">

            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="<%=basePath %>images/tab_07.gif" width="16" height="30" /></td>
      </tr>
    </table></td>
  </tr>


  <tr>
  <td>
选题编号：<input type=text name="yin_wu_id" value="<%=yin_wu_id%>" />&nbsp;
书名：<input type=text readonly name="book_name" value="<%=book_name%>"/>&nbsp;
印章：<select name="yin_zhang">				
 				<option value="0"
 					<c:if test="${yin_zhang == 0}">selected</c:if>
 				>--请选择--</option>				
 				<c:forEach var="item" items="${yinZhangList }">
	      	    	<option value="${item.id}" 
	      	    		<c:if test="${item.id == yin_zhang }">
	      	    			<c:out value='selected="selected"'></c:out>
	      	    		</c:if>
					>
	      	    		${item.content }
	      	    	</option>
      	    	</c:forEach> 				
 			</select>&nbsp;
选题类型：<select name="print_status">				
 				<option value="0"
 					<c:if test="${print_status == 0}">selected</c:if>
 				>--请选择--</option>				
 				<c:forEach var="item" items="${printStatusList }">
	      	    	<option value="${item.id}" 
	      	    		<c:if test="${item.id == print_status }">
	      	    			<c:out value='selected="selected"'></c:out>
	      	    		</c:if>
					>
	      	    		${item.content }
	      	    	</option>
      	    	</c:forEach> 				
 			</select>&nbsp;

    <input type=hidden name=currentPage value="1" />
    <input type=submit value="查询" onclick="QueryYinWu();"  />
  </td>
</tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" background="<%=basePath %>images/tab_12.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="b5d6e6" onmouseover="changeto()"  onmouseout="changeback()">
          <tr>
          <!-- 
            <td width="3%" height="22" background="images/bg.gif" bgcolor="#FFFFFF"><div align="center">
              <input type="checkbox" name="checkall" onclick="checkAll();" />
            </div></td> -->
            <td width="3%" height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">序号</span></div></td>
            <td width="6%" height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">印章编号</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">起始日期</span></div></td>
            <td width="6%" height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">终止日期</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">书名</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">印章</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">印刷数</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">ISBN</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">印刷状态</span></div></td>
            <td width="12%" height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
          </tr>
             <%-- <c:if test="${!empty bookList && !empty bookTypeList}"> --%>
				<%-- <c:forEach items="${bookList}" var="book"> --%>
				<%
					int yinWuListSize = yinWuList.size();
					int startIndex = (currentPage -1) *10;
					System.out.println("yinWuList size = " + yinWuListSize);
				    for(int i=0;i<yinWuListSize;i++) {
            			int currentIndex = startIndex + i + 1; 	// 当前记录的序号
            			YinWu yinWu = yinWuList.get(i); 		// 获取到XuanTi对象
				 %>
		          <tr>
		            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
		              <div align="center"><%=currentIndex %></div>
		            </div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=yinWu.getId() %></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=yinWu.getStart_date() %></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=yinWu.getEnd_date() %></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=yinWu.getBook_name() %></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=yinWu.getYin_zhang_content() %></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=yinWu.getPrint_quantity() %></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=yinWu.getISBN() %></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><%=yinWu.getPrint_status_content() %></span></div></td>		            
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4">
		            	<span style="cursor:hand;" onclick="location.href='<%=basePath %>yin_wu/checkYinWu?id=<%=yinWu.getId() %>'"><a href='#'><img src="<%=basePath %>images/vie.gif" width="16" height="16"/>详细</a></span>&nbsp;
		            	<span style="cursor:hand;" onclick="location.href='<%=basePath %>yin_wu/getYinWu?id=<%=yinWu.getId() %>'"><a href='#'><img src="<%=basePath %>images/edt.gif" width="16" height="16"/>编辑</a></span>&nbsp;
            			<span style="cursor:hand;" onclick=""><a href="javascript:DelYinWu('<%=yinWu.getId()%>')"><img src="<%=basePath %>images/del.gif" width="16" height="16"/>删除</a></span>
		            </div></td>
		          </tr>
		          <% } %>
          		<%-- </c:forEach> --%>
          	<%-- </c:if> --%>
        </table></td>
        <td width="8" background="<%=basePath %>images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>

  <tr>
    <td height="35" background="<%=basePath %>images/tab_19.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="12" height="35"><img src="<%=basePath %>images/tab_18.gif" width="12" height="35" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td class="STYLE4">&nbsp;&nbsp;共有<%=recordNumber %>条记录，当前第 <%=currentPage %>/<%=totalPage %> 页&nbsp;&nbsp;<span style="color:red;text-decoration:underline;cursor:hand" onclick="OutputToExcel();">导出当前记录到excel</span></td>
            <td><table border="0" align="right" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="40"><img src="<%=basePath %>images/first.gif" width="37" height="15" style="cursor:hand;" onclick="GoToPage(1,<%=totalPage %>);" /></td>
                  <td width="45"><img src="<%=basePath %>images/back.gif" width="43" height="15" style="cursor:hand;" onclick="GoToPage(<%=currentPage-1 %>,<%=totalPage %>);"/></td>
                  <td width="45"><img src="<%=basePath %>images/next.gif" width="43" height="15" style="cursor:hand;" onclick="GoToPage(<%=currentPage+1 %>,<%=totalPage %>);" /></td>
                  <td width="40"><img src="<%=basePath %>images/last.gif" width="37" height="15" style="cursor:hand;" onclick="GoToPage(<%=totalPage %>,<%=totalPage %>);"/></td>
                  <td width="100"><div align="center"><span class="STYLE1">转到第
                    <input name="pageValue" type="text" size="4" style="height:12px; width:20px; border:1px solid #999999;" />
                    页 </span></div></td>
                  <td width="40"><img src="<%=basePath %>images/go.gif" onclick="changepage(<%=totalPage %>);" width="37" height="15" /></td>
                </tr>
            </table></td>
          </tr>
        </table></td>
        <td width="16"><img src="<%=basePath %>images/tab_20.gif" width="16" height="35" /></td>
      </tr>
    </table></td>
  </tr>
</table>
</form>
</body>
</html>
