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
    String t1 = request.getParameter("t1");
    String t2 = request.getParameter("t2");
  
    String id = request.getParameter("id");
        
    String sql="update t_baodan set tuikuanje='"+ t2 +"',tuikuanriqi='"+ t1 +"',zt='取消成功'  where id='"+ id +"'";
    System.out.println(sql);
    db1.executeMysql(sql);

	out.println( "<HTML><HEAD><META http-equiv='refresh' content='1; URL=List2.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "操作成功!" + "</font></center></body></html>");
 %>