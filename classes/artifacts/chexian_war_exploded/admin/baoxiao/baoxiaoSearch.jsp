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
           
           function ListDetail(id)
           {
                 var url="ListDetail.jsp?sqID="+id;
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

  <%
    String spqx= session.getAttribute("spqx").toString();
    String spjd="";
    String sql="";
    String bxName = request.getParameter("bxName");
    String sp = request.getParameter("sp");
    
    sql="select sqrName,bxName,bxje,shijian,jindu,jieguo,fujian,id from t_baodan where 1=1 " ;
    
    if(bxName!=null && !bxName.trim().equals(""))
    {
    	sql = sql+ " and sqrName='"+ bxName +"' ";
    }
    
     if(sp!=null && sp.equals("1"))
     {
    	sql = sql+ " and jieguo='通过' ";
     }
     if(sp!=null && sp.equals("2"))
     {
    	sql = sql+ " and jieguo='未通过' ";
     }
     if(sp!=null && sp.equals("3"))
     {
    	sql = sql+ " and jieguo='未审批' ";
     }
    
    System.out.println(spqx);
    System.out.println(sql);
        
   %>
   
	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
		<form action="baoxiaoSearch.jsp" name="formAdd" method="post">
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="8" >&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
						报销客户：<input type="text" name="bxName" />&nbsp; &nbsp; 
						审批结果： <select name="sp" id="sp" ">
										<option value="0">请选择....</option>
									     <option value="1">通过</option>
									     <option value="2">未通过</option>
									     <option value="3">未审批</option>
									</select>
						&nbsp; &nbsp; <input type="submit" value="  查 询  "/>&nbsp; 
					</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="15%">客户姓名</td>
					
					<td width="15%">申请名称</td>
					
					<td width="10%">类型</td>
					
					<td width="10%">时间</td>
					
					<td width="10%">进度</td>
					
					<td width="10%">审批结果</td>
					
					<td width="10%">在线预览</td>
					
					<td width="10%">查看明细</td>
		        </tr>	
			  <%
					ResultSet rs = db1.executeQuery(sql);
					 while(rs.next())
	                  {
			  %>
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
					    <%= rs.getString("sqrName") %>
					</td>

					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("bxName") %>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("bxje") %>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("shijian") %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("jindu") %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<%= rs.getString("jieguo") %>
					</td>
					
						<td bgcolor="#FFFFFF" align="center">
							 <a href="#"  onClick="ListDetail('<%= rs.getString("id") %>')" style="font-size: 12px;color: red">明细</a>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
							 <a href="<%=path %>/<%= rs.getString("fujian") %>"  style="font-size: 12px;color: red">预览</a>
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