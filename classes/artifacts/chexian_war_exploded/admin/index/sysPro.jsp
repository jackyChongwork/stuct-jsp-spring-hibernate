<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
	</head>

<% 

    String spqx="0";
    String spjd="";
    String userType=session.getAttribute("userType").toString();
    if(!userType.equals("0"))
  	{
    	spjd="请按照权限进行相应操作！";
	}
	else
	{
		spjd="请按照权限进行相应操作！";
	}
 %>	
 
	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
	    <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#8D3F53" style="margin-bottom:8px">
		  <tr bgcolor="#EEF4EA">
		    <td colspan="2" background="<%=path %>/images/wbg.gif" class='title'><span>车险管理系统<br/>欢迎您登录本系统！</span></td>
		  </tr>
		</table>
		<br/>
			    <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#8D3F53" style="margin-bottom:8px">
		  <tr bgcolor="#EEF4EA">
		    <td colspan="2" background="<%=path %>/images/wbg.gif" class='title'><span><%=spjd %></span></td>
		  </tr>
		</table>
	</body>
</html>
