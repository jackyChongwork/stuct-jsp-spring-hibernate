<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>

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
    String kehuLoginName = request.getParameter("kehuLoginName");
    String kehuName = request.getParameter("kehuName");
    String kehuAge = request.getParameter("kehuAge");
    String kehuXueli = request.getParameter("kehuXueli");
    
    String kehuSex = request.getParameter("kehuSex");
    
    String kehuZhiwei = request.getParameter("kehuZhiwei");
    String kehuAddress = request.getParameter("kehuAddress");
    String kehuTel = request.getParameter("kehuTel");
    String kehuEmail = request.getParameter("kehuEmail");
    
    String kehuQq = request.getParameter("kehuQq");
 
    String id = request.getParameter("id");   
 
        
    String sql="update t_kehu set kehu_name='"+ kehuName +"',kehu_age='"+ kehuAge +"',kehu_Sex='"+ kehuSex +"',kehu_xueli='"
    + kehuXueli +"',kehu_zhiwei='"+ kehuZhiwei +"',kehu_address='"+ kehuAddress +"',kehu_tel='"+ kehuTel +"',kehu_email='"
    + kehuEmail +"',kehu_qq='"+ kehuQq +"',kehu_login_name='"+ kehuLoginName +"' where kehu_id='"+ id +"'";
    System.out.println(sql);
    db1.executeMysql(sql);

	out.println( "<HTML><HEAD><META http-equiv='refresh' content='1; URL=Update.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "修改成功!" + "</font></center></body></html>");
 %>