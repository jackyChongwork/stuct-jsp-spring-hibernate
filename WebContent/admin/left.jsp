<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%@page import="java.sql.*"%>
<jsp:useBean id="db1" scope="page" class="com.dao.DB"/>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		<!--
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
			color:#8D3F53;
		}
		.STYLE1 {
			color: #FFFFFF;
			font-weight: bold;
			font-size: 12px;
		}
		.STYLE2 {
			font-size: 12px;
			color: #03515d;
		}
		a:link {font-size:12px; text-decoration:none; color:#03515d;}
		a:visited{font-size:12px; text-decoration:none; color:#03515d;}
		-->
	</style>
	<link rel="StyleSheet" href="<%=path %>/css/dtree.css" type="text/css" />
	<script type="text/javascript" src="<%=path %>/js/dtree.js"></script>
	<script type="text/javascript">
		alert("<%=path %>/js/dtree.js");
	</script>
  </head>
  
  <body bgcolor="">
  
  <%
    String userType=session.getAttribute("userType").toString();
  	String spqx="0";
  
  
   %>
		<table width="156" height="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center" valign="top">
					<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td align="center" valign="top">
								<table width="145" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td>
									 <c:if test="${sessionScope.userType==0 }">	
										    <script type="text/javascript">
												d = new dTree('d');
										        d.add(0,-1,'????????????');
												d.add(2,0,'????????????','#');
												d.add(21,2,'????????????','<%=path %>/admin/userinfo/userPw.jsp','','I2');
								
												d.add(6,0,'????????????','#');
												d.add(61,6,'????????????','<%=path %>/kehuMana.action','','I2');
												d.add(62,6,'????????????','<%=path %>/admin/kehu/kehuAdd.jsp','','I2');
												d.add(63,6,'????????????','<%=path %>/admin/kehu/kehuSearch.jsp','','I2');

												d.add(8,0,'????????????','#');
												d.add(81,8,'????????????','<%=path %>/admin/baodan/Add.jsp','','I2');
												d.add(82,8,'????????????','<%=path %>/admin/baodan/List.jsp','','I2');
		 												
												d.add(9,0,'????????????','#');
												d.add(91,9,'????????????','<%=path %>/admin/baodan/List2.jsp','','I2');
												
												d.add(10,0,'????????????','#');
												d.add(101,10,'????????????','<%=path %>/admin/lipei/List2.jsp','','I2');
 
												d.add(5,0,'??????????????????','#');
												d.add(51,5,'??????????????????','<%=path %>/admin/baodan/List3.jsp','','I2');
												
												document.write(d);
										   </script>
										  </c:if> 
										  
										  
									 <c:if test="${sessionScope.userType==1 }">	
										    <script type="text/javascript">
												dd = new dTree('dd');
										        dd.add(0,-1,'????????????');

										        dd.add(4,0,'????????????','#');
										        dd.add(41,4,'??????????????????','<%=path %>/admin/kehu/Update.jsp','','I2');
										        
										        dd.add(5,0,'????????????','#');
										        dd.add(31,5,'??????????????????','<%=path %>/admin/userinfo/khPw.jsp','','I2');
												
												dd.add(6,0,'????????????','#');
												dd.add(63,6,'????????????','<%=path %>/admin/baodanUser/List2.jsp','','I2');
												dd.add(64,6,'????????????','<%=path %>/admin/baodanUser/List.jsp','','I2');
												dd.add(65,6,'????????????','<%=path %>/admin/baodanUser/List3.jsp','','I2');
												
												dd.add(9,0,'????????????','#');
												dd.add(91,9,'????????????','<%=path %>/admin/lipei/Add.jsp','','I2');
												dd.add(92,9,'????????????','<%=path %>/admin/lipei/List.jsp','','I2');
												dd.add(93,9,'????????????','<%=path %>/admin/lipei/List3.jsp','','I2');

												dd.add(10,0,'??????????????????','#');
												dd.add(101,10,'??????????????????','<%=path %>/admin/leibie/List2.jsp','','I2');
										        
												document.write(dd);
										   </script>
										  </c:if> 
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
