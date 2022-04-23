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
    String sqID = request.getParameter("sqID");
    String sqName =request.getParameter("sqName");
    String bxlb = request.getParameter("bxlb");
    String bxje = request.getParameter("bxje");
    
    int je =  Integer.parseInt(request.getParameter("je"));
    int dbje=0;
    int curje=Integer.parseInt(bxje);
    
    
	String sql="select sum(je) as je from t_baodandetail where baodanID = '"+ sqID +"' ";
	ResultSet rs = db1.executeQuery(sql);
	 while(rs.next())
     {
		 dbje = rs.getInt("je");
     }
	 
	 if(dbje+curje>je)
	 {
		 out.println( "<HTML><HEAD><META http-equiv='refresh' content='1; URL=List.jsp?sqID="+ sqID +"&sqName="+ sqName +"&je="+ je +"' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "添加失败,险种的总金额不能超过总保单的金额!" + "</font></center></body></html>");
	 }
	 else
	 {
   
         System.out.println(sqName);
    	 sql="insert into t_baodandetail(baodanID,baodanName,leixing,je) values('"
    	+ sqID +"','"+ sqName +"','"+ bxlb +"','"+ bxje +"') ";
    
   	 System.out.println(sql);
   	 db1.executeMysql(sql);

		out.println( "<HTML><HEAD><META http-equiv='refresh' content='1; URL=List.jsp?sqID="+ sqID +"&sqName="+ sqName +"&je="+ je +"' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "添加成功!" + "</font></center></body></html>");
	 }
%>