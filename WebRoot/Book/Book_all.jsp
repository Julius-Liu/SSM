<%@ page language="java" import="java.util.*"  contentType="text/html;charset=UTF-8"%> 
<%@ page import="com.tgb.model.Book" %>
<%@ page import="com.tgb.model.BookType" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

    List<Book> bookList = (List<Book>)request.getAttribute("bookList");
    // 获取所有的bookType信息
    List<BookType> bookTypeList = (List<BookType>)request.getAttribute("bookTypeList");
    //BookType bookType = (BookType)request.getAttribute("bookType");

    int currentPage =  (Integer)request.getAttribute("currentPage"); //当前页
/*     int totalPage =   (Integer)request.getAttribute("totalPage");  //一共多少页
    int  recordNumber =   (Integer)request.getAttribute("recordNumber");  //一共多少记录
    String barcode = (String)request.getAttribute("barcode"); //图书条形码查询关键字
    String bookName = (String)request.getAttribute("bookName"); //图书名称查询关键字
    String publishDate = (String)request.getAttribute("publishDate"); //出版日期查询关键字 */
        //String username=(String)session.getAttribute("username");
    //if(username==null){
        //response.getWriter().println("<script>top.location.href='" + basePath + "login/login_view.action';</script>");
    //}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>图书查询</title>
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

<script type="text/javascript" src="<%=basePath %>js/calendar.js"></script>
<script>
var  highlightcolor='#c1ebff';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
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
		for(i=0;i<cs.length;i++){
		    cs[i].style.backgroundColor="";
		}
	}
}

function  changeback() {
	if (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc") {
		return
	}
	if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor) {
		//source.style.backgroundColor=originalcolor
		for(i=0;i<cs.length;i++) {
			cs[i].style.backgroundColor="";
		}
	}
}

/*跳转到查询结果的某页*/
function GoToPage(currentPage,totalPage) {
    if(currentPage==0) return;
    if(currentPage>totalPage) return;
    document.forms[0].currentPage.value = currentPage;
    document.forms[0].action = "<%=basePath %>/Book/Book_QueryBook.action";
    document.forms[0].submit();
}

function changepage(totalPage)
{
    var pageValue=document.bookQueryForm.pageValue.value;
    if(pageValue>totalPage) {
        alert('你输入的页码超出了总页数!');
        return ;
    }
    document.bookQueryForm.currentPage.value = pageValue;
    document.forms["bookQueryForm"].action = "<%=basePath %>/Book/Book_QueryBookaction";
    document.bookQueryForm.submit();
}

function QueryBook() {
	document.forms["bookQueryForm"].action = "<%=basePath %>/Book/Book_QueryBook.action";
	document.forms["bookQueryForm"].submit();
}

function OutputToExcel() {
	document.forms["bookQueryForm"].action = "<%=basePath %>/Book/Book_QueryBookOutputToExcel.action";
	document.forms["bookQueryForm"].submit(); 
}

</script>
</head>

<body>
<form action="<%=basePath %>/Book/Book_QueryBook.action" name="bookQueryForm" method="post">
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
                <td width="95%" class="STYLE1"><span class="STYLE3">你当前的位置</span>：[图书管理]-[图书查询]</td>
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
图书条形码:<input type=text name="barcode" value=" " />&nbsp;
图书名称:<input type=text name="bookName" value=" " />&nbsp;
出版日期:<input type=text readonly  name="publishDate" value=" " onclick="setDay(this);"/>&nbsp;
    <input type=hidden name=currentPage value="1" />
    <input type=submit value="查询" onclick="QueryBook();"  />
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
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">图书条形码</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">图书名称</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">图书所在类别</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">图书价格</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">库存</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">出版日期</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">出版社</span></div></td>
            <td  height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">图书图片</span></div></td>
            <td width="10%" height="22" background="<%=basePath %>images/bg.gif" bgcolor="#FFFFFF" class="STYLE1"><div align="center">基本操作</div></td>
          </tr>
             <c:if test="${!empty bookList && !empty bookTypeList}">
				<c:forEach items="${bookList}" var="book">
		          <tr>
		            <td height="20" bgcolor="#FFFFFF"><div align="center" class="STYLE1">
		              <div align="center"></div>
		            </div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${book.barcode}</span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${book.bookName}</span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${book.getBookType().getBookTypeName()}</span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${book.price}</span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${book.count}</span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${book.publishDate}</span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1">${book.publish}</span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE1"><img src="<%=basePath%>${book.bookPhoto}" width="50px" height="50px" /></span></div></td>
		            <td height="20" bgcolor="#FFFFFF"><div align="center"><span class="STYLE4"></div></td>
		          </tr>
          		</c:forEach>
          	</c:if>
        </table></td>
        <td width="8" background="images/tab_15.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>

  <tr>

  </tr>
</table>
</form>
</body>
</html>
