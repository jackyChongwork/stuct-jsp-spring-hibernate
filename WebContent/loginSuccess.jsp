<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="db1" scope="page" class="com.dao.DB"/>

<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
       <script type="text/javascript">
           function tiao()
           {
               <c:if test="${sessionScope.userType==0}">
                   window.location.href="<%=path %>/admin/index.jsp";
               </c:if>
               <c:if test="${sessionScope.userType==1}">
                   window.location.href="<%=path %>/admin/index.jsp";
               </c:if>
           }
           
           setTimeout(tiao,1)
       </script>
       <br> <br> <br> <br> <br> <br> <br> <br> <br>
       <center> </center>
       
  <%
    String userType=session.getAttribute("userType").toString();
  	String spqx="0";
  
  	if(!userType.equals("0"))
  	{
	  	String kehuName= session.getAttribute("kehuName").toString();
		String kehuId= session.getAttribute("kehuId").toString();
		
	}
   %>
  </body>
</html>
