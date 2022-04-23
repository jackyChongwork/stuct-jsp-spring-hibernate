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
					<td height="14" colspan="80" background="<%=path %>/images/tbg.gif">&nbsp;保单查看&nbsp;</td>
				</tr>
 
				
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">客户姓名</td>
					
					<td width="10%">客户身份证</td>
					
					<td width="10%">总金额</td>
					
					<td width="10%">开始生效日期</td>
					
					<td width="10%">截止日期</td>
					
					<td width="10%">订单状态</td>
					
					<td width="10%">退款金额</td>
					
					<td width="10%">退款日期</td>
					
 
					<td width="15%">管理明细</td>

					 
		        </tr>	
			  <%
			        String kehuId= session.getAttribute("kehuId").toString();
					String sql="select t_baodan.*,t_kehu.kehu_name,t_kehu.kehu_qq from t_baodan left join t_kehu on t_kehu.kehu_id=t_baodan.kehuID  where t_baodan.zt !='生效中' and t_baodan.kehuID='"+ kehuId +"' ";
					
				 
					
			         System.out.println(sql);
					ResultSet rs = db1.executeQuery(sql);
					 while(rs.next())
	                  {
			  %>
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
					    <%= rs.getString("kehu_name") %>
					</td>

					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("kehu_qq") %>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("bxje") %>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("kaishishijian") %>
					</td>

					
					
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("jieshushijian") %>
					</td>
					
										
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("zt") %>
					</td>
 
 					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("tuikuanje") %>
					</td>
 
 
 					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("tuikuanriqi") %>
					</td>
 
 
 
                    <td bgcolor="#FFFFFF" align="center">
						 <a href="../leibie/List1.jsp?sqID=<%= rs.getString("id") %>&sqName=<%= rs.getString("kehu_name") %>"  class="pn-loperator" style="font-size: 12px;color: red">保单明细查看</a>
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
