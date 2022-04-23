<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:useBean id="db1" scope="page" class="com.dao.DB"/>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
				<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		
        <script language="javascript">
           function shipinAdd()
           {
              var url="<%=path %>/admin/shipin/shipinAdd.jsp";
              window.location.href=url;
           }
           
           function shipinDetail(id)
           {
                 var url="<%=path %>/shipin?type=shipinDetail&id="+id;
                 var n="";
                 var w="500px";
                 var h="400px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
           
            function down1(fujianPath,fujianYuashiMing)
           {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
       </script>
       
        <script language="javascript">
           
           function shouzhiAdd()
           {
                 var url="<%=path %>/admin/shebei/Add.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
	
	<form action="List.jsp" name="formAdd" method="post">
	
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="8" background="<%=path %>/images/tbg.gif">&nbsp;事故管理&nbsp;</td>
				</tr>
				 
				
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">客户姓名</td>
					
					<td width="10%">客户身份证</td>
					
					<td width="10%">事故日期</td>
					
					<td width="10%">项目</td>
					
					<td width="10%">说明</td>
 
					<td width="15%">事故图片</td>

					<td width="15%">操作</td>
		        </tr>	
			  <%
			  		String kehuName= session.getAttribute("kehuName").toString();
					String sql="select *  from t_lipei  where kehuname ='"+ kehuName +"'  ";				
 
					
			         System.out.println(sql);
					ResultSet rs = db1.executeQuery(sql);
					 while(rs.next())
	                  {
			  %>
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
					    <%= rs.getString("kehuname") %>
					</td>

					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("sfz") %>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("riqi") %>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("xm") %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("con") %>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						 <a href="<%=path %>/<%= rs.getString("fujian") %>"  style="font-size: 12px;color: red">预览</a>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
					    <a href="Update.jsp?id=<%= rs.getString("id") %>"  class="pn-loperator">修改</a> || 
						<a href="Del.jsp?id=<%= rs.getString("id") %>"  class="pn-loperator">删除</a>
					</td>
				</tr>
				
				<%
					}
					rs.close();
				%>
				
			</table>
			</form>

	</body>
</html>
