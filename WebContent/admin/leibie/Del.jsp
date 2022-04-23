<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="db1" scope="page" class="com.dao.DB"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<% 
    request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
	String sqID=request.getParameter("sqID");
	 String sqName =new String(request.getParameter("sqName").getBytes("ISO-8859-1"),"UTF8");
	 
	System.out.println(sqName);
	  
	String sql="delete from t_baodandetail where id="+id+"";
	db1.executeMysql(sql);
	out.println( "<HTML><HEAD><META http-equiv='refresh' content='1; URL=List.jsp?sqID="+ sqID +"&sqName="+ sqName +"' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "删除成功!" + "</font></center></body></html>");
 %>		