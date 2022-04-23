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
	
	String kehuName= session.getAttribute("kehuName").toString();
	String kehuId= session.getAttribute("kehuId").toString();
    
    String sql="insert into t_baodan(sqrID,sqrName,bxName,bxje,fujian,shijian,bxCon,jindu,jieguo) values('"
    	+ kehuId +"','"+ kehuName +"','"+ bxName +"','"+ bxje +"','"+ fujian +"','"+ shijian +"','"+ bxCon +"','第一级审批','未审批') ";
    
    System.out.println(sql);
    db1.executeMysql(sql);

	out.println( "<HTML><HEAD><META http-equiv='refresh' content='1; URL=List.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "添加成功!" + "</font></center></body></html>");
 %>