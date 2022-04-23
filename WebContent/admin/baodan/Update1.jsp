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
    String t1 = request.getParameter("t1");
    String t2 = request.getParameter("t2");
    String t3 = request.getParameter("t3");
    String t4 = request.getParameter("t4");
       String t11 = request.getParameter("t11");
       String t12 = request.getParameter("t12");
       String t13 = request.getParameter("t13");
    
	//Date d = new Date();
	SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	Date date = df.parse(t4);
	Calendar rightNow = Calendar.getInstance();  
    rightNow.setTime(date);  
    rightNow.add(Calendar.YEAR, +1);// 日期减1年  
    String t5 =df.format(rightNow.getTime());
    
    System.out.println(t5);
    
    
    
	String t6 = request.getParameter("t6");
	
    String id = request.getParameter("id");
        
    String sql="update t_baodan set kehuID='"+ t2 +"',baodanName='"+ t1 +"',bxje='"
    + t3 +"',kaishishijian='"+ t4 +"',jieshushijian='"+ t5 +"',con='"+ t6 +"',chepai='"+ t11 +"',qicheppai='"+ t12 +"',qichexinghao='"+ t13 +"' where id='"+ id +"'";
    System.out.println(sql);
    db1.executeMysql(sql);

	out.println( "<HTML><HEAD><META http-equiv='refresh' content='1; URL=List.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "修改成功!" + "</font></center></body></html>");
 %>