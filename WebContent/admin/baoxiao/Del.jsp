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
	String id=request.getParameter("id");
	String sql="delete from t_baodan where id="+id+"";
	db1.executeMysql(sql);
	out.println( "<HTML><HEAD><META http-equiv='refresh' content='1; URL=List.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "删除成功!" + "</font></center></body></html>");
 %>		