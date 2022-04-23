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
    String sp = request.getParameter("sp");
    String sm = request.getParameter("sm");
    String id = request.getParameter("id");
    
    String spqx= session.getAttribute("spqx").toString();
    String spjd="";
    String sql="";
    
    if(spqx.equals("1"))
    {
    	spjd="一级审批管理列表";
    	if(sp.equals("0"))
    	{
    		sql="update t_baodan set jindu='第二级审批',jieguo='请等待审批结果',yijiyijian='"+ sm +"'  where id='"+ id +"'";
    	}
    	else
    	{
    		sql="update t_baodan set jindu='完成',jieguo='未通过',yijiyijian='"+ sm +"'  where id='"+ id +"'";
    	}
    }
    if(spqx.equals("2"))
    {
    	spjd="二级审批管理列表";
    	if(sp.equals("0"))
    	{
    		sql="update t_baodan set jindu='第三级审批',jieguo='请等待审批结果',erjiyijian='"+ sm +"'  where id='"+ id +"'";
    	}
    	else
    	{
    		sql="update t_baodan set jindu='完成',jieguo='未通过',erjiyijian='"+ sm +"'  where id='"+ id +"'";
    	}
    }
    if(spqx.equals("3"))
    {
    	spjd="三级审批管理列表";
    	if(sp.equals("0"))
    	{
    		sql="update t_baodan set jindu='完成',jieguo='通过',sanjiyijian='"+ sm +"'  where id='"+ id +"'";
    	}
    	else
    	{
    		sql="update t_baodan set jindu='完成',jieguo='未通过',sanjiyijian='"+ sm +"'  where id='"+ id +"'";
    	}
    }
        
    System.out.println(sql);
    db1.executeMysql(sql);

	out.println( "<HTML><HEAD><META http-equiv='refresh' content='1; URL=baoxiaosp.jsp' target=Main></HEAD><BODY bgcolor='#FFFFFF'><center><font size=4pt color='red'>" + "审批成功!" + "</font></center></body></html>");
 %>