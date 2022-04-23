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
    String t3 = request.getParameter("t3");
    String t4 = request.getParameter("t4");
    String t5 = request.getParameter("t5");
	String fujian = request.getParameter("fujian");
	
    String id = request.getParameter("id");
        
    String sql="update t_lipei set kehuname='"+ t1 +"',sfz='"+ t2 +"',riqi='"
    + t3 +"',xm='"+ t4 +"',con='"+ t5 +"',fujian='"+ fujian +"' where id='"+ id +"'";
    System.out.println(sql);
    db1.executeMysql(sql);

	out.println( "<HTML><HEAD><META http-equiv='refresh' content='1; URL=List.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "修改成功!" + "</font></center></body></html>");
 %>