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
    String bxName = request.getParameter("bxName");
    String bxje = request.getParameter("bxje");
    String fujian = request.getParameter("fujian");
    String shijian = request.getParameter("shijian");
    String bxCon = request.getParameter("bxCon");
    String id = request.getParameter("id");
        
    String sql="update t_baodan set bxName='"+ bxName +"',bxje='"+ bxje +"',fujian='"
    + fujian +"',shijian='"+ shijian +"',bxCon='"+ bxCon +"' where id='"+ id +"'";
    System.out.println(sql);
    db1.executeMysql(sql);

	out.println( "<HTML><HEAD><META http-equiv='refresh' content='1; URL=List.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "修改成功!" + "</font></center></body></html>");
 %>