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
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="4" background="<%=path %>/images/tbg.gif">&nbsp;险种明细管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					
					<td width="15%">客户</td>
					
					<td width="15%">类型</td>
					
					<td width="15%">金额</td>

					<td width="15%">操作</td>
		        </tr>	
			  <%
			       	request.setCharacterEncoding("UTF-8");
                    String sqID = request.getParameter("sqID");
                    String sqName =new String(request.getParameter("sqName").getBytes("ISO-8859-1"),"UTF8");
                    String je =new String(request.getParameter("je").getBytes("ISO-8859-1"),"UTF8");
                    
                     System.out.println(sqName);
					String sql="select baodanID,baodanName,leixing,je,id from t_baodandetail where baodanID = '"+ sqID +"' ";
					ResultSet rs = db1.executeQuery(sql);
					 while(rs.next())
	                  {
			  %>
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
					    <%= rs.getString("baodanName") %>
					</td>

					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("leixing") %>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("je") %>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<a href="Del.jsp?id=<%= rs.getString("id") %>&sqID=<%=sqID %>&sqName=<%=sqName %>"  class="pn-loperator">删除</a>
					</td>
				</tr>
				
				<%
					}
					rs.close();
				%>
				
			</table>
			
<form action="Add1.jsp" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>险种添加</span></td>
					    </tr>

						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        险种:<input type="hidden" name="sqID"  value="<%= sqID %>"/>
						        <input type="hidden" name="sqName"  value="<%= sqName %>"/>
						        <input type="hidden" name="je"  value="<%= je %>"/>
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						          <select name="bxlb" id="bxlb" >        
		                                 <option value="交强险">交强险</option>
		                                  <option value="第三者责任险">第三者责任险</option>
		                                  <option value="车损险">车损险</option>
		                                  <option value="盗抢险">盗抢险</option>
		                                  <option value="不计免赔特约险">不计免赔特约险</option>
		                                  <option value="玻璃险">玻璃险</option>
		                                  <option value="座位险">座位险</option>
		                           </select>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        金额：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
                                  <input type="text" name="bxje" onpropertychange="onchange1(this.value)" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/> (单位/元，如3000)
						    </td>
						</tr>

						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						       <input type="submit" value="提交"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
	</body>
</html>
