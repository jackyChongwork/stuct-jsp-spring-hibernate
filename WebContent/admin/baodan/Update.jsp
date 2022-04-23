<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:useBean id="db1" scope="page" class="com.dao.DB"/>
<%@ page import="java.sql.*" %>

<%@ page isELIgnored="false" %> 

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
        
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script language="javascript">
            function up()
		    {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
		    }
        </script>
        
        <script language="javascript">

        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
	
<% 
	String id=request.getParameter("id");
	String sql="select * from t_baodan where id='"+id+"'";
	ResultSet rs = db1.executeQuery(sql);
	while(rs.next())
	{
 %>		
 
			<form action="Update1.jsp" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>资料修改</span></td>
					    </tr>
						
					<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        保单名称:<input type="hidden" name="id"  value="<%= rs.getString("id") %>"/>
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						       <input type="text" name="t1" value="<%= rs.getString("baodanName") %>"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        客户名称：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						     		 <select type="select" name="t2" id="t2">
									 <%
										sql="select kehu_id,kehu_name from t_kehu  where del='no' ";
									 ResultSet rs1 = db1.executeQuery(sql);
										 while(rs1.next())
									 {
									 %>
									 
										 <option value="<%= rs1.getString("kehu_id") %>" selected><%= rs1.getString("kehu_name") %></option>
										 
									 <%} %>  
								 </select> 
						    </td>
						</tr>
						
						
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        车牌：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
                                  <input type="text" name="t11" value="<%= rs.getString("chepai") %>"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        汽车品牌：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
                                  <input type="text" name="t12" value="<%= rs.getString("qicheppai") %>"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        汽车型号：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
                                  <input type="text" name="t13" value="<%= rs.getString("qichexinghao") %>"/>
						    </td>
						</tr>
						
						
						 <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        总金额：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
                                  <input type="text" name="t3"  value="<%= rs.getString("bxje") %>"/> (单位/元，如5000)
						    </td>
						</tr>
 
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						           开始生效日期：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						       <input name="t4"  class="Wdate"   value="<%= rs.getString("kaishishijian") %>" type="text" onfocus="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-MM-dd'})"/>
						    </td>
						</tr>
						
					 
 
						
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						         说明：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						         <textarea rows="5" cols="50" name="t6"><%= rs.getString("con") %></textarea>
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
							<%
					}
					rs.close();
				%>
   </body>
</html>
